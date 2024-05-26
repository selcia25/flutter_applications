import 'dart:io';

String decimalToHex(int decimal) {
  return decimal.toRadixString(16).toUpperCase();
}

void main() {
  print('Enter a decimal number:');
  int decimal = int.parse(stdin.readLineSync()!);
  String hex = decimalToHex(decimal);
  print('Decimal: $decimal');
  print('Hexadecimal: $hex');
}
