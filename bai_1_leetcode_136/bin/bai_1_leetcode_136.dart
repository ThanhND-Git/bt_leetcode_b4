// https://leetcode.com/problems/single-number/description/
void main(List<String> arguments) {
  var a = singleNumber([2, 2, 1]);
  var b = singleNumber([4, 1, 2, 1, 2]);
  var c = singleNumber([1]);
  print(a);
  print(b);
  print(c);
}
// cách 1:
int singleNumber(List<int> nums) {
  // tạo ra 1 list s trống
  List<int> s = List.empty(growable: true);
  for (int i = 0; i < nums.length; i++) {
    if (s.contains(nums[i])) // nếu s chứa 1 phần tử bất kỳ của nums thì
    {
      s.remove(nums[i]); // remove phần tử đó
    } else {
      s.add(nums[i]); // ngược lại chưa có thì add phần tử đó vào s
    }
  }
  return s[0];
}

// cách 2:
// int singleNumber(List<int> nums) {
//   var count = 0;
//   for (var i = 0; i < nums.length; i++) {
//     count = 0;
//     for (var j = 0; j < nums.length; j++) {
//       if (nums[i] == nums[j]) {
//         count = count + 1;
//       }
//     }
//     if (count == 1) {
//       return nums[i];
//     }
//   }
//   return count;
// }
