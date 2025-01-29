#include <archive.h>
#include <archive_entry.h>
#include <iostream>
#include <fstream>

void create_archive(const char* archive_name, const char* file_path) {
    struct archive* archive = archive_write_new();
    struct archive_entry* entry;

    archive_write_set_format_pax_restricted(archive);  // Set TAR format
    archive_write_open_filename(archive, archive_name);

    entry = archive_entry_new();
    archive_entry_set_pathname(entry, file_path);
    archive_entry_set_size(entry, 1024);  // Set file size
    archive_entry_set_filetype(entry, AE_IFREG);
    archive_entry_set_perm(entry, 0644);
    archive_write_header(archive, entry);

    std::ifstream file(file_path, std::ios::binary);
    char buffer[1024];
    while (file.read(buffer, sizeof(buffer))) {
        archive_write_data(archive, buffer, sizeof(buffer));
    }

    archive_entry_free(entry);
    archive_write_close(archive);
    archive_write_free(archive);
}

