#include <archive.h>
#include <archive_entry.h>
#include <fcntl.h>
#include <iostream>
#include <unistd.h>

void decompress_file(const std::string &archivePath,
                     const std::string &outputDir) {
  struct archive *archive = archive_read_new();
  struct archive *disk = archive_write_disk_new();
  struct archive_entry *entry;
  int result;

  // Use the correct function for enabling all filters
  archive_read_support_filter_all(archive);
  archive_read_support_format_all(archive);

  // Open the archive file
  result = archive_read_open_filename(archive, archivePath.c_str(), 10240);
  if (result != ARCHIVE_OK) {
    std::cerr << "Failed to open archive: " << archive_error_string(archive)
              << std::endl;
    return;
  }

  while (archive_read_next_header(archive, &entry) == ARCHIVE_OK) {
    std::string outputPath = outputDir + "/" + archive_entry_pathname(entry);
    archive_entry_set_pathname(entry, outputPath.c_str());

    result = archive_write_header(disk, entry);
    if (result != ARCHIVE_OK) {
      std::cerr << "Failed to write header: " << archive_error_string(disk)
                << std::endl;
    } else {
      // Corrected: Read data and write it manually
      const void *buff;
      size_t size;
      la_int64_t offset;
      int fd = open(outputPath.c_str(), O_WRONLY | O_CREAT, 0644);

      while (archive_read_data_block(archive, &buff, &size, &offset) ==
             ARCHIVE_OK) {
        write(fd, buff, size);
      }
      close(fd);
    }
    archive_write_finish_entry(disk);
  }

  archive_read_close(archive);
  archive_write_close(disk);
  archive_read_free(archive);
  archive_write_free(disk);
}
