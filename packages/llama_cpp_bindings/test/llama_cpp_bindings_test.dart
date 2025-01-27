import 'dart:ffi';
import 'dart:io';

import 'package:llama_cpp_bindings/llama_cpp_bindings.dart';
import 'package:test/test.dart';

void main() {
  group('LlamaBindings', () {
    test('Verify llama.cpp shared library symbols', () {
      final libDir = Platform.environment['LLAMA_LIB_DIR'] ?? '../../llama.cpp/build/bin';
      DynamicLibrary.open('$libDir/libggml-base.so');
      DynamicLibrary.open('$libDir/libggml-cpu.so');
      DynamicLibrary.open('$libDir/libggml-rpc.so');
      DynamicLibrary.open('$libDir/libggml.so');
      LlamaBindings.fromLookup(DynamicLibrary.open('$libDir/libllama.so').lookup);
    });
  });
}
