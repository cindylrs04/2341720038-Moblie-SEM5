# Laporan Praktikum Pemrograman Mobile
# Pertemuan 11 Pemrograman Asynchronous

<br><b>Nama : Cindy Laili Larasati<br>
<br>Nim : 2341720038<br>
<br>Kelas : TI - 3F</b><br>

<hr>

<br><b>Praktikum 1</b><br>
<p><b>Mengunduh Data dari Web Service (API)</b></p>

<p>Hasil:</p>

![Demo Aplikasi](img/Prak1.gif)

<p>Soal 3</p>
<p>Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!</p>
<p>jawab: Kode pada langkah 5 berfungsi sebagai pengelola hasil akhir pengambilan data. Apabila data berhasil diambil, ia akan memotong konten hanya menjadi 450 karakter pertama menggunakan substring sebelum ditampilkan. Jika terjadi kegagalan (misalnya karena masalah jaringan), catchError akan mengambil alih, mengganti data yang gagal dengan pesan kesalahan untuk memastikan aplikasi tidak berhenti tiba-tiba.</P>

<hr>

<br><b>Praktikum 2</b><br>
<p><b>Menggunakan await/async untuk menghindari callbacks</b></p>

<p>Hasil:</p>
<img src = "img/Prak2.jpg">

<p>Soal 4</p>
<p>Jelaskan maksud kode langkah 1 dan 2 tersebut!</p>
<p>jawab: Kode pada Langkah 1 dan 2 ini merupakan demonstrasi tentang bagaimana menangani operasi yang membutuhkan waktu lama (asinkron) dalam Dart. Tiga fungsi di Langkah 1 (returnOneAsync, dst.) sengaja dibuat untuk mensimulasikan delay selama 3 detik sebelum mengembalikan angka. Kemudian, fungsi count() di Langkah 2 bertugas menjumlahkan hasil dari ketiganya secara berurutan. Karena setiap pemanggilan diawali dengan kata kunci await, fungsi count() dipaksa untuk menunggu setiap fungsi 3 detik selesai sebelum melanjutkan ke yang berikutnya. Jadi, total waktu yang dibutuhkan untuk menyelesaikan count() adalah sekitar 9 detik, di mana hasil akhirnya (total = 6) baru digunakan untuk memperbarui tampilan melalui setState().</P>

<hr>

<br><b>Praktikum 3</b><br>
<p><b>Menggunakan Completer di Future</b></p>

<p>Hasil:</p>
<img src = "img/Prak3.jpg">

<p>Soal 5</p>
<p>Jelaskan maksud kode langkah 2 tersebut!</p>
<p>jawab: Kode pada langkah 2 menggunakan Completer untuk mengelola future secara manual. Fungsi getNumber() mengembalikan janji (Future) dan langsung memanggil calculate(). Setelah simulasi penundaan 5 detik di calculate(), baris completer.complete(42) akan menepati janji tersebut dan mengirimkan nilai 42 ke future yang menunggu.</P>

<p>Soal 6</p>
<p>Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!</p>
<p>jawab: Perbedaannya adalah pada kesiapan menghadapi kegagalan. Kode awal (Langkah 2) hanya disiapkan untuk skenario sukses (completer.complete(42)). Sementara itu, kode yang dimodifikasi (Langkah 5-6) jauh lebih handal karena menggunakan blok try-catch di fungsi calculate(). Jika terjadi kesalahan, ia akan secara eksplisit mengirimkan sinyal kegagalan melalui completer.completeError(). Sinyal ini kemudian ditangkap oleh blok .catchError(), memungkinkan aplikasi menampilkan notifikasi kesalahan yang terstruktur kepada pengguna.</P>

<p>Hasil:</p>
<img src = "img/Prak3pt2.jpg">

<hr>

<br><b>Praktikum 4</b><br>
<p><b>Memanggil Future secara paralel</b></p>

<p>Hasil:</p>
<img src = "img/Prak4.jpg">

<p>Soal 8</p>
<p>Jelaskan maksud perbedaan kode langkah 1 dan 4!</p>
<p>jawab: Perbedaannya adalah penggunaan method untuk menjalankan tugas asinkron secara paralel. Langkah 1 menggunakan FutureGroup (kemungkinan class eksternal) untuk mengelompokkan dan menunggu ketiga fungsi asinkron selesai secara bersamaan (paralel), sehingga total waktu tunggu hanya 3 detik. Sementara itu, Langkah 4 menunjukkan cara yang standar dan native Dart, yaitu menggunakan Future.wait().</P>

<p>Hasil:</p>
<img src = "img/Prak4pt2.jpg">

<hr>

<br><b>Praktikum 5</b><br>
<p><b>Menangani Respon Error pada Async Code</b></p>

<p>Hasil:</p>

![Demo Aplikasi](img/Prak5.gif)

<p>Soal 10</p>
<p>Jelaskan maksud perbedaan kode langkah 1 dan 4!</p>
<p>jawab: Setelah memanggil handleError(), hasilnya adalah pesan error spesifik ("Something terrible happened!") muncul di layar, dan "complete" tercetak di konsol. Perbedaan utama kode terletak pada penanganan error: Langkah 1 menggunakan callback .catchError() secara eksternal pada future. Sedangkan Langkah 4 menggunakan sintaks try-catch-finally secara internal di dalam fungsi async. Metode Langkah 4 ini lebih rapi karena mampu menangkap exception dan memastikan kode di blok finally selalu berjalan, terlepas dari hasil sukses atau gagal.</P>

<p>Hasil:</p>
<img src = "img/Prak5pt2.jpg">

<hr>

<br><b>Praktikum 6</b><br>
<p><b>Menggunakan Future dengan StatefulWidget</b></p>

<p>Hasil:</p>
<img src = "img/Prak6.jpg">

<p>Soal 12</p>
<p>Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?</p>
<p>jawab: Ya, saya mendapatkan koordinat GPS saat run di browser. Alasannya karena plugin geolocator itu cerdas; ketika aplikasi berjalan di web, ia beralih memanfaatkan API Geolocation HTML5 yang memang sudah menjadi fitur bawaan semua browser modern. Jadi, plugin tersebut tidak memerlukan izin sistem operasi handphone, melainkan hanya meminta izin kepada browser melalui pop-up standar. Begitu izin diberikan, browser akan meneruskan data koordinat lokasi tersebut langsung ke aplikasi Flutter saya.</P>

<p>Hasil:</p>
<img src = "img/Prak6pt2.jpg">

<hr>

<br><b>Praktikum 7</b><br>
<p><b>Manajemen Future dengan FutureBuilder</b></p>

<p>Hasil:</p>
<img src = "img/Prak7.jpg">

<p>Soal 13</p>
<p>Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?</p>
<p>jawab: saat kode diubah menggunakan FutureBuilder, terdapat perbedaan UI karena FutureBuilder mengambil alih manajemen state asinkron secara otomatis. Sebelum ini, loading dikelola secara manual; sekarang, FutureBuilder secara reaktif menampilkan indikator loading (CircularProgressIndicator) saat future (position) masih dalam status waiting, dan baru menampilkan data lokasi setelah proses selesai, semua dilakukan tanpa setState manual di awal.</P>

<p>Soal 14</p>
<p>Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?</p>
<p>jawab: penambahan logic snapshot.hasError tidak akan menimbulkan perbedaan UI selama pengambilan lokasi berlangsung normal. Perubahan ini hanyalah mekanisme pertahanan yang memastikan jika future gagal (misalnya gagal koneksi atau izin lokasi ditolak), aplikasi tidak crash tetapi justru menampilkan pesan notifikasi error yang jelas ("Terjadi error, coba lagi nanti!") kepada pengguna, meningkatkan stabilitas dan user experience aplikasi.</P>

<hr>

<br><b>Praktikum 8</b><br>
<p><b>Navigation route dengan Future Function</b></p>

<p>Hasil:</p>

![Demo Aplikasi](img/Prak8.gif)

<p>Soal 16</p>
<p>Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?</p>
<p>jawab: Saat tombol di Layar diklik, Layar Kedua tertutup dan Layar Pertama akan seketika berganti warna sesuai pilihan tombol. Mekanisme ini terjadi karena Layar Pertama menunggu (await Navigator.push) hasil dari Layar Kedua. Setiap tombol di Layar Kedua mengirimkan nilai warna saat menutup dirinya (Navigator.pop(context, color)), dan warna tersebut langsung digunakan oleh Layar Pertama untuk update tampilannya.</P>

<hr>

<br><b>Praktikum 9</b><br>
<p><b>Navigation route dengan Future Function</b></p>

<p>Hasil:</p>

![Demo Aplikasi](img/Prak9.gif)

<p>Soal 17</p>
<p>Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?</p>
<p>jawab: Saat tombol "Change Color" diklik, sebuah dialog muncul. Ketika salah satu tombol warna di dalam dialog dipilih, dialog tersebut menutup diri sambil mengirimkan nilai warna (Navigator.pop(context, color)). Di layar utama, perintah await showDialog menangkap warna tersebut, dan setState() langsung memperbarui variabel warna state, menyebabkan latar belakang layar utama berubah warna seketika.</P>

<hr>