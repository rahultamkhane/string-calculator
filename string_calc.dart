/**
 * String Calculator TDD Kata
 */

void main() {
  // An input string of comma-separated numbers
  String input = "1\n5,5\n2";
  int output = add(input);
  print('Input: $input');
  print('Output: $output');
}

/**
 * Function to calculate sum of given numbers
 */
int add(String numbers) {
  int sum = 0;
  final re = RegExp(r'[,\n]');
  List<String> nums = numbers.split(re);
  List<int> negNums = [];

  if (nums.length == 0)
    return 0;
  else if (nums.length == 1)
    return int.parse(nums[0]);
  else {
    for (String n in nums) {
      int x = int.parse(n);
      if (x < 0)
        negNums.add(x);
      else
        sum += x;
    }
  }
  if (negNums.length > 0)
    throw new Exception('Negative numbers not allowed: ${negNums.join(', ')}');
  return sum;
}
