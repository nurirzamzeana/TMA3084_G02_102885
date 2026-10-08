// TMA3084 - Software Engineering Laboratory
// Lab 1: Pizza Order Calculator
// Name: Nurirzam Zeana
// Matric No: 102885
// Group: G02

import 'dart:io';

void main() {
  print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');

  String? continueOrder = 'yes';

  while (continueOrder == 'yes') {
    print('Please enter your pizza size (small, medium, or large):');
    String? pizzaSize = stdin.readLineSync();

    print('How many pizzas do you want of $pizzaSize?');
    int quantity = int.parse(stdin.readLineSync()!);

    int price = 0;

    if (pizzaSize == 'small') {
      price = 5;
    } else if (pizzaSize == 'medium') {
      price = 7;
    } else if (pizzaSize == 'large') {
      price = 10;
    } else {
      print('Invalid pizza size');
      continue;
    }

    int totalPayment = price * quantity;

    print('Your Total Payment is: \$$totalPayment');

    print('Do you want to order again? (yes/no)');
    continueOrder = stdin.readLineSync();
  }

  print('Thank you for your order!');
}