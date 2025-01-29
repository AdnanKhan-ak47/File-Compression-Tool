#include <iostream>
#include <string>
#include <vector>
#include "compress_file.h"
#include "decompress_file.h"

void print_usage() {
  std:: cout << "Usage: file_tool [--compress | --decompress] [file1 file2 ...]\n";
  std:: cout << "Options:\n";
  std:: cout << "  --compress     Compress the specified file\n";
  std:: cout << "  --decompress   Decompress the specified file\n";
  std:: cout << "  --help         Show this help message\n";
}

int main (int argc, char *argv[]) {
  if(argc < 3){
    print_usage();
    return 1;
  }

  std::string option = argv[1];
  std::vector<std::string> files(argv + 2, argv + argc);

  if(option == "--compress"){
    for (const auto& file: files) {
      std::string archive_name = file + ".tar";
      std::cout<< "Compressing " << file << " into " << archive_name << "...\n";
      compress_file(archive_name, file);
    }
  }
  else if(option == "--decompress"){
    for (const auto& file: files) {
      std::cout << "Decompress " << file << "...\n";
      decompress_file(file, "./");
    }
  }
  else if(option == "--help"){
    print_usage();
  }
  else {
    std::cerr << "Unknown option: " << option << "\n";
    print_usage();
    return 1;
  }
  return 0;
}
