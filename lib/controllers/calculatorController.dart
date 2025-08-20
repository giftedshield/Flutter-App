import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtangka1 = TextEditingController();
  final txtangka2 = TextEditingController();
  var txtHasil = "".obs;

  void tambah() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasilJumlah = angka1 + angka2;
    print("Hasil jumlah = " + hasilJumlah.toString());
    txtHasil.value = hasilJumlah.toString();
  }

  void kurang() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasilJumlah = angka1 - angka2;
    print("Hasil jumlah = " + hasilJumlah.toString());
    txtHasil.value = hasilJumlah.toString();
  }

  void kali() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasilJumlah = angka1 * angka2;
    print("Hasil jumlah = " + hasilJumlah.toString());
    txtHasil.value = hasilJumlah.toString();
  }

  void bagi() {
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasilJumlah = angka1 ~/ angka2;
    print("Hasil jumlah = " + hasilJumlah.toString());
    txtHasil.value = hasilJumlah.toString();
  }

void clear() {
  txtangka1.clear();
  txtangka2.clear();
  txtHasil.value = '';
}

}
