// https://leetcode.com/problems/add-digits/description/
void main(List<String> args) {
  print(addDigits(38));
  print(addDigits(0));
  print(addDigits(15));
}
// 0 <= num <= 2^31 - 1
int addDigits(int num) {
  var i = 0;
  if (num == 0) {
    i = 0;
  } else {
    i= num % 9;
  }
  return i;
}
