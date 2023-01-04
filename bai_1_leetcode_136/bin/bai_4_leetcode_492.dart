// https://leetcode.com/problems/construct-the-rectangle/description/
import 'dart:math';

void main(List<String> args) {
  print(constructRectangle(4));
  print(constructRectangle(37));
  print(constructRectangle(122122));
}
 List<int> constructRectangle(int area) {
    // chiều rộng của 1 hình chữ nhật luôn <= với căn bậc 2 của diện tích 
    for (var W = sqrt(area).truncate(); W > 1; W--) {
      if (area % W == 0) {  // nếu diện tích chia hết cho chiều rộng
        return [area ~/ W, W];
      }
    }
    return [area, 1];
  }