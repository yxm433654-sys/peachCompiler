#ifndef PEACHCOMPILER_H
#define PEACHCOMPILER_H

#include<stdio.h>

enum{
    COMPILER_FILE_COMPILED_OK,
    COMPILER_FAILED_WITH_ERRORS
};


struct compile_process{
    //flags用于指示如何编译这个文件，虽然我也没看明白
    int flags;

    struct  compile_process_input_file{
        FILE* fp;
        const char* abs_path;
        /* data */
    }cfile;


    FILE* ofile;
};
int compile_file(const char* filename,const char* out_filename,int flag);
struct compile_process* compile_process_create(const char* filename, const char* filename_out, int flags);




#endif