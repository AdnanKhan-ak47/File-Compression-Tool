#include "compress_file.h"
#include <archive.h>
#include <archive_entry.h>
#include <fstream>
#include <ios>
#include <iostream>

void compress_file(const std::string &archive_name,
                   const std::string &file_path) {
  struct archive *archive = archive_write_new();
  struct archive_entry *entry;

  archive_write_set_format_pax_restricted(archive);
  archive_write_open_filename(archive, archive_name.c_str());

  entry = archive_entry_new();
  archive_entry_set_pathname(entry, file_path.c_str());

  std::ifstream file(file_path, std::ios::binary | std::ios::ate);
  if (!file) {
    std::cerr << "Error: Could not open file " << file_path << "\n";
    return;
  }

  std::streamsize file_size = file.tellg();
  file.seekg(0, std::ios::beg);
  archive_entry_set_size(entry, file_size);
  archive_entry_set_filetype(entry, AE_IFREG);
  archive_entry_set_perm(entry, 0644);
  archive_write_header(archive, entry);

  char buffer[1024];
  while (file.read(buffer, sizeof(buffer))) {
    archive_write_data(archive, buffer, sizeof(buffer));
  }
  if (file.gcount() > 0) {
    archive_write_data(archive, buffer, file.gcount());
  }

  archive_entry_free(entry);
  archive_write_close(archive);
  archive_write_free(archive);

  std::cout << "Compressed: " << file_path << " into " << archive_name << "\n";
}
