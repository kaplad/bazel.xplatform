#include "common/library/header.hpp"

#include <emscripten/bind.h>


class NativeBridge {
public:
  static std::string sayHello() {
    return Library::sayHello();
  }
};

EMSCRIPTEN_BINDINGS(xplatform_awesome) {
  emscripten::class_<NativeBridge>("NativeBridge")
      .class_function("sayHello", &NativeBridge::sayHello);
}