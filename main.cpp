//
// Created by Administrator on 2024/7/18.
//

#include <iostream>
#include <string>
#include "util/tc_file.h"
#include "util/tc_md5.h"

using namespace std;
int main() {
    auto fileName = "test.log";
    if (!tars::TC_File::isFileExist(fileName)) {
        cout << "file not exist!" << std::endl;
    }
    tars::TC_File::save2file(fileName, "123456");
    if (tars::TC_File::isFileExist(fileName)) {
        std::cout << "load file:" << tars::TC_File::load2str(fileName) << std::endl;
    }

    static string str = "P002172127018352400917212701839149octvyL&XDeMn55J%9s6U";
    cout << tars::TC_MD5::md5str(str) << std::endl;
}