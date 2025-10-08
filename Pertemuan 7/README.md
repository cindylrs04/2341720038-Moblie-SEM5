# Laporan Praktikum Pemrograman Mobile
# Pertemuan 7 Manajemen Plugin di Flutter

<br><b>Nama : Cindy Laili Larasati<br>
<br>Nim : 2341720038<br>
<br>Kelas : TI - 3F</b><br>

<hr>

<br><b>Praktikum 1</b><br>
<p><b>Menerapkan Plugin di Project Flutter</b></p>

<p>Hasil Akhir:</p>
<img src = "img/P1.png">

<hr>

<br><b>Tugas Praktikum</b><br>

<p>2. Jelaskan maksud dari langkah 2 pada praktikum tersebut!</p>
<p>jawab: Langkah ini dilakukan untuk menambahkan library eksternal bernama auto_size_text ke dalam project Flutter. Library ini berfungsi agar ukuran teks bisa otomatis menyesuaikan dengan ruang tampilan, sehingga jika teks terlalu panjang, ukurannya akan diperkecil supaya tetap muat dan tampil rapi tanpa terpotong.</p>

<p>3. Jelaskan maksud dari langkah 5 pada praktikum tersebut!</p>
<p>jawab: Langkah 5 dilakukan untuk menambahkan variabel text serta parameter pada constructor supaya widget RedTextWidget dapat menerima input teks dari luar. Dengan begitu, setiap kali widget ini digunakan, kita bisa mengirimkan teks yang berbeda melalui parameter text, sehingga widget menjadi lebih dinamis dan dapat menampilkan berbagai teks sesuai kebutuhan.</p>

<p>4. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!</p>
<p>jawab:</p>
<p> - RedTextWidget memakai plugin auto_size_text, sehingga ukuran tulisannya dapat menyesuaikan secara otomatis agar tetap muat dalam wadahnya, serta teksnya ditampilkan dengan warna merah.</p>

<p> - Sedangkan Text merupakan widget bawaan Flutter yang tidak memiliki kemampuan menyesuaikan ukuran teks secara otomatis, sehingga jika teks terlalu panjang, bisa saja terpotong atau meluap keluar dari area tampilannya.</p>

<p>5. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !</p>
<p>jawab:</p>
<p>text → isi teks yang ingin ditampilkan.</p>

<p>style → mengatur gaya teks (warna, ukuran, tebal, font, dll).</p>

<p>minFontSize → ukuran font terkecil agar teks tetap muat.</p>

<p>maxFontSize → ukuran font terbesar yang boleh digunakan.</p>

<p>stepGranularity → jarak perubahan ukuran font saat menyesuaikan ukuran.</p>

<p>presetFontSizes → daftar ukuran font tertentu yang bisa dipilih otomatis.</p>

<p>group → menyamakan ukuran font beberapa teks agar seragam.</p>

<p>textAlign → posisi teks (kiri, kanan, tengah, rata).</p>

<p>maxLines → jumlah baris maksimal teks.</p>

<p>overflow → aturan jika teks terlalu panjang (misal jadi “…”).</p>

<p>overflowReplacement → widget pengganti jika teks tetap tidak muat.</p>

<p>softWrap → menentukan apakah teks boleh pindah baris otomatis.</p>

<p>wrapWords → menentukan apakah kata panjang boleh dipotong.</p>

<p>textScaleFactor → faktor skala teks (biasanya dari pengaturan sistem).</p>

<p>semanticsLabel → teks alternatif untuk pembaca layar (aksesibilitas).</p>

