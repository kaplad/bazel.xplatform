#include "common/library/header.hpp"
#include <jni.h>

//
//---
//

extern "C" JNIEXPORT jstring JNICALL Java_library_NativeBridge_sayHello(JNIEnv* const env, const jclass clazz) {
  const std::string res = Library::sayHello();
  jstring result = env->NewStringUTF(res.c_str());
  return result;
}