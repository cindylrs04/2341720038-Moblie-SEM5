# Laporan Praktikum Pemrograman Mobile

<br><b>Nama : Cindy Laili Larasati<br>
<br>Nim : 2341720038<br>
<br>Kelas : TI - 3F</b><br>

<hr>

<br>Soal 1<br>
<p>Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!</p>
<p>jawab:</p>
<img src = "img/No_1.png">

<hr>

<br>Soal 2<br>
<p>Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!</p>
<p>jawab:</p>
<p>Penting memahami bahasa Dart sebelum menggunakan Flutter karena:</p>
<p>- Flutter dibangun menggunakan Dart, sehingga semua kode aplikasi Flutter ditulis dalam Dart.</p>
<p>- Memahami Dart memudahkan dalam memahami struktur, sintaks, dan konsep dasar pemrograman di Flutter.</p>
<p>- Fitur-fitur seperti Null Safety, async/await, dan OOP di Dart sangat sering digunakan dalam pengembangan aplikasi Flutter.</p>
<p>- Dengan menguasai Dart, proses debugging dan pengembangan aplikasi menjadi lebih efisien.</p>

<hr>

<br>Soal 3<br>
<p>Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.</p>
<p>jawab:</p>
<p>Poin-poin penting dari codelab ini untuk pengembangan aplikasi Flutter:</p>
<p>- Dart adalah bahasa utama untuk Flutter, pelajari sintaks dan fitur dasarnya.</p>
<p>- Struktur program Dart: fungsi main(), variabel, tipe data, dan kontrol alur (if, for, while).</p>
<p>- Null Safety: mencegah error akibat nilai null yang tidak diharapkan.</p>
<p>- Penggunaan package dan library untuk memperluas fitur aplikasi.</p>
<p>- Pemahaman widget sebagai komponen utama UI di Flutter.</p>
<p>- Cara menjalankan dan men-debug aplikasi Flutter.</p>

<hr>

<br>Soal 4<br>
<p>Buatlah penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel !</p>
<p>jawab:</p>
<p>Null Safety memastikan variabel tidak bernilai null kecuali diizinkan secara eksplisit.</p>
<p>Late variabel digunakan untuk mendeklarasikan variabel yang akan diinisialisasi nanti, tetapi pasti sebelum digunakan.</p>

<p>Contoh Null Safety:</p>
<p>String name = 'Cindy'; // Tidak bisa null</p>
<p>String? nickname; // Bisa null</p>
<p>print(name); // Output: Cindy</p>
<p>print(nickname); // Output: null</p>

<p>Contoh Late variabel:</p>
<p>late String greeting;</p>
<p>reeting = 'Hello, Dart!';</p>
<p>print(greeting); // Output: Hello, Dart!</p>