import 'dart:ffi';

import 'package:llama_cpp_bindings/llama_cpp_bindings.dart';
import 'package:test/test.dart';

void main() {
  group('LlamaBindings', () {
    test('Verify llama.cpp shared library symbols', () {
      LlamaBindings.fromLookup(DynamicLibrary.open('packages/llama_cpp_bindings/llama.cpp/build/src/libllama.so')
          .lookup);
    });
  });
}