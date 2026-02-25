{ pkgs }: {
  deps = [
    pkgs.gcc    # g++ для компиляции сгенерированного C++ кода
    pkgs.nasm   # для .asm сегментов
  ];
}
