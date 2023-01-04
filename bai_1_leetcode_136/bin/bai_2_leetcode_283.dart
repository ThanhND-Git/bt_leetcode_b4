//  https://leetcode.com/problems/move-zeroes/description/
void main(List<String> args) {
  moveZeroes([0,1,0,3,12]);
  moveZeroes([0]);
}
void moveZeroes(List<int> nums) {
  int i = nums.length - 1;
  // chạy từ cuối mảng về đầu mảng
  while (i >= 0) {
    if (nums[i] == 0) { // so sánh nums[i] với 0 nếu bằng 0 thì xóa khỏi mảng và thêm 0 vào cuối mảng
      nums.removeAt(i);
      nums.add(0);
    }
    i--;
  }
  print(nums);
}
