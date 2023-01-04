// https://leetcode.com/problems/ugly-number/description/
void main(List<String> args) {
  print(isUgly(6));
  print(isUgly(1));
  print(isUgly(14));
}
bool isUgly(int n) {
  if (n <= 0) return false;
  // cho p lần lượt là giá trị 2, 3, 5
  for (int p in [2, 3, 5]) {
    while (n % p == 0) { // kiểm tra xem n có chia hết cho p hay không 
      n ~/= p; // nếu chia hết thì sẽ gán n = n ~/ p ví dụ 6 ~/ 2 = 3 và 3 ~/ 3 = 1
    }
  }
  return n == 1; // kiểm tra n có bằng 1 hay ko để trả về true hay false
}
