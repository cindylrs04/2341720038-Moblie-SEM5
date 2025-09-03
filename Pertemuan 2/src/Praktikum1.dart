// void main() {
//   for (int i = 0; i < 5; i++) {
//     print('Hello ${i + 1}');
//   }
// }

//Tugas Praktikum 1

/// Soal 1
void main() {
  for (int i = 19; i >= 10; i--) {
    print('Hello nama saya adalah Cindy, sekarang berumur ${i - 1}');
  }
}

// Soal 2
// Penting memahami bahasa Dart sebelum menggunakan Flutter karena:
// - Flutter dibangun menggunakan Dart, sehingga semua kode aplikasi Flutter ditulis dalam Dart.
// - Memahami Dart memudahkan dalam memahami struktur, sintaks, dan konsep dasar pemrograman di Flutter.
// - Fitur-fitur seperti Null Safety, async/await, dan OOP di Dart sangat sering digunakan dalam pengembangan aplikasi Flutter.
// - Dengan menguasai Dart, proses debugging dan pengembangan aplikasi menjadi lebih efisien.

// Soal 3
// Poin-poin penting dari codelab ini untuk pengembangan aplikasi Flutter:
// - Dart adalah bahasa utama untuk Flutter, pelajari sintaks dan fitur dasarnya.
// - Struktur program Dart: fungsi main(), variabel, tipe data, dan kontrol alur (if, for, while).
// - Null Safety: mencegah error akibat nilai null yang tidak diharapkan.
// - Penggunaan package dan library untuk memperluas fitur aplikasi.
// - Pemahaman widget sebagai komponen utama UI di Flutter.
// - Cara menjalankan dan men-debug aplikasi Flutter.

// Soal 4
// Null Safety memastikan variabel tidak bernilai null kecuali diizinkan secara eksplisit.
// Late variabel digunakan untuk mendeklarasikan variabel yang akan diinisialisasi nanti, tetapi pasti sebelum digunakan.

// Contoh Null Safety:
//
// String name = 'Cindy'; // Tidak bisa null
// String? nickname; // Bisa null
//
// print(name); // Output: Cindy
// print(nickname); // Output: null

// Contoh Late variabel:
//
// late String greeting;
// greeting = 'Hello, Dart!';
// print(greeting); // Output: Hello, Dart!