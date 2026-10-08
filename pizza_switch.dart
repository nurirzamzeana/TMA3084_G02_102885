// TMA3084 - Software Engineering Laboratory
// Lab 1: Pizza Order Calculator
// Name: Nurirzam Zeana
// Matric No: 102885
// Group: G02

import 'dart:io';

void main() {
  print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');
  
  print('Please enter your pizza size (small, medium, or large):');
  String? pizzaSize = stdin.readLineSync();

  print('How many pizzas do you want of $pizzaSize?');
  int quantity = int.parse(stdin.readLineSync()!);

  int price = 0;

  switch (pizzaSize) {
    case 'small':
      price = 5;
      break;

    case 'medium':
      price = 7;
      break;

    case 'large':
      price = 10;
      break;

    default:
      print('Invalid pizza size');
      return;
  }

  int totalPayment = price * quantity;

  print('Your Total Payment is: \$$totalPayment');
}