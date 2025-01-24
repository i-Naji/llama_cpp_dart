import 'dart:ffi';
import 'dart:io';

import 'package:llama_cpp_bindings/llama_cpp_bindings.dart';
import 'package:test/test.dart';

void main() {
  group('LlamaBindings', () {
    test('Verify llama.cpp shared library symbols', () {
      final libPath = Platform.environment['LLAMA_LIB_PATH'] ?? '../llama.cpp/build/libllama.so';
      LlamaBindings.fromLookup(DynamicLibrary.open('libPath').lookup);
    });
  });
}
