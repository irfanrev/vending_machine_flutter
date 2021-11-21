import 'package:flutter/material.dart';

class Drink {
  late String nama;
  late String harga;
  late String img;
  late int stok;

  Drink(
      {required this.nama,
      required this.harga,
      required this.img,
      required this.stok});
}

var drinkList = [
  Drink(
      nama: 'Mizone',
      harga: 'Rp. 5.000.000',
      img: 'assets/gambar4.png',
      stok: 10),
  Drink(
      nama: 'Cocola',
      harga: 'Rp. 8.000.000',
      img: 'assets/gambar1.png',
      stok: 10),
  Drink(
      nama: 'Minute Maid Pulpy',
      harga: 'Rp. 5.000.000',
      img: 'assets/gambar2.png',
      stok: 10),
  Drink(
      nama: 'Pepsi',
      harga: 'Rp. 12.000.000',
      img: 'assets/gambar3.png',
      stok: 10),
];
