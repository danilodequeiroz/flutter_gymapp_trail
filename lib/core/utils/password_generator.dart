import 'dart:math';

String generatePassword(int size) {
  const specialChars = r'!@#$%^&*()_-+=<>?/[]{}|';
  const upperCaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const lowerCaseChars = 'abcdefghijklmnopqrstuvwxyz';
  const numbers = '0123456789';
  const four = 4;

  final random = Random();
  final password = StringBuffer();

  password.write(specialChars[random.nextInt(specialChars.length)]);
  password.write(upperCaseChars[random.nextInt(upperCaseChars.length)]);
  password.write(lowerCaseChars[random.nextInt(lowerCaseChars.length)]);
  password.write(numbers[random.nextInt(numbers.length)]);

  for (int i = four; i < size; i++) {
    final randomGroup = random.nextInt(four);
    switch (randomGroup) {
      case 0:
        password.write(specialChars[random.nextInt(specialChars.length)]);
        break;
      case 1:
        password.write(upperCaseChars[random.nextInt(upperCaseChars.length)]);
        break;
      case 2:
        password.write(lowerCaseChars[random.nextInt(lowerCaseChars.length)]);
        break;
      case 3:
        password.write(numbers[random.nextInt(numbers.length)]);
        break;
    }
  }

  return password.toString();
}
