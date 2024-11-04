void main() {
  String password = "ismedom12";
  String username = "ismedom";
  bool authentication = checkAuthentication(password, username);
  print(authentication);

  String executionDate = checkExecutionDate(5);
  print("Today is " + executionDate);

  print("Minimum value is " +
      findMinimumAndMaximumValue(numbers)["min"].toString());
  print("Maximum value is " +
      findMinimumAndMaximumValue(numbers)["max"].toString());
}

bool checkAuthentication(String password, String username) {
  bool isAuthenticated = false;
  if (password.isEmpty || username.isEmpty) {
    return isAuthenticated = false;
  }

  if (password == "ismedom12" && username == "ismedom") {
    isAuthenticated = true;
  }
  return isAuthenticated;
}

List<String> daysOfTheWeek = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday'
];

String checkExecutionDate(int numberOfDay) {
  return daysOfTheWeek[numberOfDay - 1];
}

// Find minimum and maximum values

List<int> numbers = [
  1,
  22,
  34,
  5,
  4,
  33,
  5,
  433,
  0,
  3,
  2,
];

Map<String, int> findMinimumAndMaximumValue(List<int> array) {
  int minimumValue = array.reduce((a, b) => a < b ? a : b);
  int maximumValue = array.reduce((a, b) => a > b ? a : b);

  return {"min": minimumValue, "max": maximumValue};
}
