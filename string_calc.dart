/**
 * String Calculator TDD Kata
 */

void main() {
  String input = "12";
  int output = add(input);
  print('Input: $input');
  print('Output: $output');
}

int add(String numbers) {
  int sum = 0;
  if (numbers == "")
    return 0;
  else {
    List<String> nums = numbers.split(",");
    if (nums.length == 1) return int.parse(nums[0]);
  }
  return sum;
}
