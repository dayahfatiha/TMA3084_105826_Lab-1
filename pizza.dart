import 'dart:io';

void main() {

  String again = "yes";

  while (again == "yes") {
    
    print("-------------------------------------------------------");
    print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");
    print("-------------------------------------------------------");

    stdout.write("Please enter your pizza size (small, medium, or large): ");
    String size = stdin.readLineSync()!;

    stdout.write("How many pizzas do you want? ");
    int quantity = int.parse(stdin.readLineSync()!);

    int price = 0;

    switch (size.toLowerCase()) {
      case "small":
        price = 5;
        break;

      case "medium":
        price = 7;
        break;

      case "large":
        price = 10;
        break;

      default:
        print("Invalid pizza size");
        continue;
    }

    int total = price * quantity;

    print("Your Total Payment is: \$${total}");

    stdout.write("Order again? (yes/no): ");
    again = stdin.readLineSync()!.toLowerCase();
  }

  print("Thank You");
}