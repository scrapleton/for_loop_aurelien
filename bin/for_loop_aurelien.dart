import 'dart:io';

void main() {
  //Clear Terminal
  stdout.write('\x1B[2J\x1B[0;0H');

  //Print a Square  of 7 x 7
  printSquare(7);

  //Print a triangle of 5
  printTriangle(5);

  //Print an inverted triangle of 4
  printInvertedTriangle(4);
}

printSquare(int size) {
  for (int i = 0; i < size; i++) {
    for (int j = 1; j <= size; j++) {
      stdout.write(i * size + j);
      if (i * size + j < 10) {
        stdout.write("   ");
      } else if (i * size + j < 100) {
        stdout.write("  ");
      } else {
        stdout.write(" ");
      }
    }
    stdout.write("\n\n");
  }
}

printTriangle(int size) {
  for (int i = 1; i < size + 1; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$j ");
    }
    stdout.write('\n');
  }
}

printInvertedTriangle(int size) {
  for (int i = size; i > 0; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$j ");
    }
    stdout.write('\n');
  }
}
