// langkah 1
void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
// var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
// };

// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };

// langkah 3
// var mhs1 = Map<String, String>();
// gifts['first'] = 'partridge';
// gifts['second'] = 'turtledoves';
// gifts['fifth'] = 'golden rings';

// var mhs2 = Map<int, String>();
// nobleGases[2] = 'helium';
// nobleGases[10] = 'neon';
// nobleGases[18] = 'argon';

// print(gifts);
// print(nobleGases);

// print(mhs1);
// print(mhs2);

var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {
    2: 'helium', 
    10: 'neon', 
    18: 2,
    };

  var mhs1 = Map<String, String>();
  gifts['name'] = 'Cindy Laili Larasati';
  gifts['nim'] = '2341720038';

  mhs1['name'] = 'Cindy Laili Larasati';
  mhs1['nim'] = '2341720038';

  var mhs2 = Map<int, String>();
  nobleGases[4] = 'Cindy Laili Larasati';
  nobleGases[5] = '2341720038';

  mhs2[4] = 'Cindy Laili Larasati';
  mhs2[5] = '2341720038';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}