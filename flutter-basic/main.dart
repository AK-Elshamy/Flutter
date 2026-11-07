void main() {
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  Map<int, int> frq = {};
  List<int> common = [];

  for (var i in a) {
    if (!frq.containsKey(i)) {
      frq[i] = 1;
    }
  }
  for (var i in b) {
    if (frq.containsKey(i)) {
      frq[i] = 2;
    }
  }
  for (var i in frq.keys) {
    if (frq[i] == 2) {
      common.add(i);
    }
  }
  print(common);
}
