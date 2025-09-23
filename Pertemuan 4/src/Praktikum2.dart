// langkah 1
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);

// Langkah 3
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  names1.add("Cindy Laili Larasati");
  names1.add("2341720038");
  names1.add("names1");

  names2.addAll({"Cindy Laili Larasati", "2341720038", "names2"});

  print(names1);
  print(names2);
}
