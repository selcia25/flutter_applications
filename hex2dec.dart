import 'dart:math';
import 'dart:io';

int hexToDecimal(String hex) {
  int decimal = 0;
  for (int i = 0; i < hex.length; i++) {
    int digit = int.parse(hex[i], radix: 16);
    decimal += digit * pow(16, hex.length - i - 1).toInt();
  }
  return decimal;
}

void main() {
  print('Enter a hexadecimal number:');
  String hex = stdin.readLineSync()!;
  int decimal = hexToDecimal(hex);
  print('Hexadecimal: $hex');
  print('Decimal: $decimal');
}
