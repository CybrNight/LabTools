#ifndef LAB_GEN
#define LAB_GEN

#include <string>
#include <iostream>
#include <filesystem>

namespace fs = std::filesystem;

struct Lab {
    int labNum;
    int qNum;
    std::string prefix;
    fs::path pDir;
    fs::path dirPath;
    fs::path tmplate;

    Lab();
    void printDetails();
    void printFSLayout();
    void setLabNum(int num);
    int generateFolders();
    bool isDestEmpty();
};

#endif