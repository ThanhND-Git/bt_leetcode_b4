//  https://leetcode.com/problems/number-complement/
void main(List<String> args) {
  var a = findComplement(5);
  print('a = $a');
  print('\nEx2:');
  var b= findComplement(1);
  print('b = $b');
}

int findComplement(int num) {
  for (int i = 0; (1 << i) <= num && i < 31; i++) { // 1 <= num < 2^31 hay 2^0 <= num < 2^31
    print('i = $i');
    print(1 << i); // sử dụng toán tử << (Shirt Left)
    num = num ^ (1 << i); // sử dụng toán tử XOR để đảo ngược bit 
  }
  return num;
}
// i = 0                      // i = 0
// 1                          // 1
// i = 1                      // b = 0
// 2
// i = 2
// 4
// a = 2
