import 'dart:io';

class Hewan {
  String nama;
  String jenis;
  int usia;

  Hewan(this.nama, this.jenis, this.usia);

  @override
  String toString() {
    return 'Data Hewan: {nama: $nama, jenis: $jenis, usia: $usia tahun}';
  }
}

void main() {
  // Ini List Hewannya
  Map<String, Hewan> hewanMap = {};
  hewanMap['Gajah'] = Hewan('Gajah', 'Mamalia', 10);
  hewanMap['Singa'] = Hewan('Singa', 'Mamalia', 8);
  hewanMap['Kera'] = Hewan('Kera', 'Mamalia', 5);

// Lihat data hewan
  void lihatHewan() {
    print('Daftar Hewan:');
    for (var hewan in hewanMap.values) {
      print(hewan);
    }
  }

// Tambah data hewan
  void tambahHewan() {
    print('Masukkan nama hewan:');
    String namaHewan = stdin.readLineSync()!;
    print('Masukkan jenis hewan:');
    String jenisHewan = stdin.readLineSync()!;
    print('Masukkan usia hewan:');
    int usiaHewan = int.parse(stdin.readLineSync()!);
    hewanMap[namaHewan] = Hewan(namaHewan, jenisHewan, usiaHewan);
    print('Data hewan $namaHewan telah ditambahkan.');
  }

// Hapus data hewan
  void hapusHewan() {
    print('Masukkan nama hewan yang ingin dihapus:');
    String namaHewan = stdin.readLineSync()!;
    if (hewanMap.containsKey(namaHewan)) {
      hewanMap.remove(namaHewan);
      print('Data hewan $namaHewan telah dihapus.');
    } else {
      print('Data hewan tidak ditemukan.');
    }
  }

// Update data hewan
  void updateHewan() {
    print('Masukkan nama hewan yang ingin diupdate:');
    String namaHewan = stdin.readLineSync()!;
    if (hewanMap.containsKey(namaHewan)) {
      print('Masukkan data usia baru untuk $namaHewan:');
      int usiaBaru = int.parse(stdin.readLineSync()!);
      hewanMap[namaHewan]!.usia = usiaBaru;
      print('Data hewan $namaHewan telah diperbarui.');
    } else {
      print('Data Hewan tidak ditemukan.');
    }
  }

  // Tampilan menu
  while (true) {
    print('\n==============================================');
    print('Kebun Binatang Maju Jaya');
    print('==============================================');
    print('\nMenu:');
    print('1. Lihat Data Hewan');
    print('2. Tambah Data Hewan');
    print('3. Hapus Data Hewan');
    print('4. Update Data Hewan');
    print('5. Keluar');

    print('\nMasukkan pilihan Menu (1-5):');
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        lihatHewan();
        break;
      case 2:
        tambahHewan();
        break;
      case 3:
        hapusHewan();
        break;
      case 4:
        updateHewan();
        break;
      case 5:
        exit(0);
      // break;
      default:
        print('Pilihan tidak valid.');
    }
  }
}
