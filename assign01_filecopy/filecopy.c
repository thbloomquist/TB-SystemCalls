#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <strings.h>
#include <sys/stat.h>
#include <errno.h>

#define STDIN  0
#define STDOUT 1
#define STDERR 2

#define BUFFER_SIZE 256


int main(int argc, char** argv)
{
  char *src_file, *dst_file;
  char data_buf[BUFFER_SIZE];
  int openSrc;
  int openDst;
  struct stat fileStat;
  ssize_t reading;
  char *DestOpenError = "Error Opening Destination File\n";
  char *SrcOpenError = "Error Opening Source File\n";
  char *doubleError = "Error Printing Error\n";
  char *SrcCloseError = "Error Closing Source File\n";
  char *DestCloseError = "Error Closing Destination File\n";
  

  // TODO
  // Declare any other variables
  // you may need here
  //



  // verify the user has supplied the correct number of arguments
  // and assign source and destination file names
  if (argc != 3) {
    write(STDERR, "Error: Incorrect number of arguments\n", 37);
    exit(EXIT_FAILURE);
  } else {

      src_file = argv[1];
      dst_file = argv[2];

      if(stat(src_file, &fileStat) < 0) {
          if(write(STDERR, "Error Retrieving File Permissions", 33) == -1) {
              write(STDERR, doubleError, strlen(doubleError));
          }
          exit(1);
      } else {
          openSrc = open(src_file, O_RDONLY);
          if(openSrc < 0) {
              if(write(STDERR, SrcOpenError, strlen(SrcOpenError)) == -1) {
                  write(STDERR, doubleError, strlen(doubleError));
              }
              if(close(openSrc) == -1) {
                  if(write(STDERR, SrcCloseError, strlen(DestCloseError)) == -1) {
                      write(STDERR, doubleError, strlen(doubleError));
                  }
              }
              exit(1);
          }

          openDst = open(dst_file, O_WRONLY|O_CREAT|O_TRUNC, fileStat.st_mode);
          if(openDst < 0) {
              if(write(STDERR, DestOpenError, strlen(DestOpenError)) == -1) {
                  write(STDERR, doubleError, strlen(doubleError));
              }
              if(close(openDst) == -1) {
                  if(write(STDOUT, DestCloseError, strlen(DestCloseError)) == -1) {
                      write(STDOUT, doubleError, strlen(doubleError));
                  }
              }
              if(close(openSrc) == -1) {
                  if(write(STDERR, SrcCloseError, strlen(DestCloseError)) == -1) {
                      write(STDERR, doubleError, strlen(doubleError));
                  }
              }
              exit(1);
          }


          // TODO
          // Output a status message here, something like
          // "Copying AAA to BBB"

          if(write(STDOUT, "Copying Source File to Destination File\n", 40) == -1) {
              write(STDERR, doubleError, strlen(doubleError));
          }


          while((reading = read(openSrc, data_buf, BUFFER_SIZE)) > 0) {
              if(write(openDst, data_buf, reading) < 0) {
                  write(STDERR, "Error Writing to File\n", 22);
                  exit(1);
              }
          }
          if(reading < 0) {
              if(write(STDERR, "Error Reading/Writing File(s)\n", 30) == -1) {
                  write(STDERR, doubleError, strlen(doubleError));
                  exit(1);
              }
              exit(1);
          }


          // TODO
          // Close the source and destination files here
          // As always, check for any errors that may be generated

          if(close(openDst) < 0) {
              if(write(STDERR, DestCloseError, strlen(DestCloseError)) == -1) {
                  write(STDERR, doubleError, strlen(doubleError));
              }
              exit(1);
          }
          if(close(openSrc) < 0) {
              if(write(STDERR, SrcCloseError, strlen(SrcCloseError)) == -1) {
                  write(STDERR, doubleError, strlen(doubleError));
              }
              exit(1);
          }
      }
      return 0;
  }
}
