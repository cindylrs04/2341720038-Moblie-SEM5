import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // Variabel Future untuk FutureBuilder
  late Future<Position> position;

  @override
  void initState() {
    super.initState();
    // Simpan Future hasil getPosition() ke variabel position
    position = getPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location')),
      body: Center(
        child: FutureBuilder<Position>(
          future: position,
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                // Tampilkan loading saat menunggu data
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text('Mencari lokasi...'),
                  ],
                );

              case ConnectionState.done:
                if (snapshot.hasError) {
                  // Tampilkan error jika gagal
                  return Text(
                    'Terjadi kesalahan: ${snapshot.error}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
                    textAlign: TextAlign.center,
                  );
                } else if (snapshot.hasData) {
                  // Tampilkan data posisi jika berhasil
                  final pos = snapshot.data!;
                  return Text(
                    'Latitude: ${pos.latitude}\nLongitude: ${pos.longitude}',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  );
                }
                return const Text('Data tidak tersedia');

              default:
                return const Text('');
            }
          },
        ),
      ),
    );
  }

  // Method untuk mengambil posisi dengan delay simulasi 3 detik
  Future<Position> getPosition() async {
    // Pastikan layanan lokasi aktif
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Jika layanan lokasi mati, berikan error
      throw Exception('Location services are disabled.');
    }

    // Minta izin lokasi
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception('Location permissions are denied');
    } else if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permissions are permanently denied.');
    }

    // Simulasi loading 3 detik
    await Future.delayed(const Duration(seconds: 3));

    // Ambil posisi saat ini
    return await Geolocator.getCurrentPosition();
  }
}
