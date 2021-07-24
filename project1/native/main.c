#include "project1/java/Test.h"
#include <stdio.h>

JNIEXPORT void JNICALL Java_Test_testMethod(JNIEnv *env , jclass clazz) {
  printf("Hello world!\n");
}