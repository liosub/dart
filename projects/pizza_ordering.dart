import 'dart:io';

void main() {
  const order = ['margherita', 'pepperoni', 'pineapple'];
  print("total price is ${ordercal(order)}");
}

double ordercal(List order) {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 8.5,
  };
  double sum = 0.0;
  for (var e in pizzaPrices.entries) {
    if (order.contains(e.key)) {
      print(e.value);
      sum += e.value;
    }
  }
  return sum;
}
