
#include "decompress_file.h"
#include <archive.h>
#include <archive_entry.h>
#include <iostream>
#include <string>

void decompress_file(const std::string &archive_name,
                     const std::string &output_dir) {
  struct archive *archive = archive_read_new();
  struct archive *disk = archive_write_disk_new();
  struct archive_entry *entry;

  archive_read_support_format_all(archive);
  archive_read_support_compression_all(archive);

  if (archive_read_open_filename(archive, archive_name.c_str(), 10240) !=
      ARCHIVE_OK) {
    std::cerr << "Failed to open archive: " << archive_error_string(archive)
              << "\n";
    return;
  }

  while (archive_read_next_header(archive, &entry) == ARCHIVE_OK) {
    const char *current_file = archive_entry_pathname(entry);
    std::string output_path = output_dir + "/" + current_file;
    archive_entry_set_pathname(entry, output_path.c_str());

    if (archive_write_header(disk, entry) != ARCHIVE_OK) {
      std::cerr << "Failed to write header: " << archive_error_string(disk)
                << "\n";
      break;
    }

    archive_copy_data(archive, disk);
    archive_write_finish_entry(disk);
  }

  archive_read_close(archive);
  archive_write_close(disk);
  archive_read_free(archive);
  archive_write_free(disk);

  std::cout << "Decompressed: " << archive_name << " into " << output_dir
            << "\n";
}
