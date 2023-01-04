// https://leetcode.com/problems/jewels-and-stones/
void main(List<String> args) {
  var a = numJewelsInStones("aA", "aAAbbbb");
  print(a);
  var b = numJewelsInStones("z", "ZZ");
  print(b);
}

int numJewelsInStones(String jewels, String stones) {
  // tách các thành phần của stone về thành 1 mảng
  var str = stones.split('');
  // kiểm tra xem trong str có bao nhiêu phần tử mà jewels chứa 
  var res = str.where(jewels.contains).length;
  return res;
}
