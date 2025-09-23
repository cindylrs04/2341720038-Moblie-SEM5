void main () {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

// langkah 4
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ('Cindy Laili Larasati', 2341720038);
  // print(mahasiswa);

// langkah 5
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

var mahasiswa3 = ('Cindy Laili Larasati', a: 2341720038, b: true, 'last');

  print(mahasiswa3.$1);
  print(mahasiswa3.a);
  print(mahasiswa3.b);
  print(mahasiswa3.$2);
}

//langkah 3
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}