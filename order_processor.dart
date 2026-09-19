double processOrder({
  required String orderId,
  required double itemPrice,
  String? promoCode,
  double? deliveryFee,
}) {
  double price = itemPrice;

  if (promoCode == "SAVE10") {
    price = itemPrice - itemPrice * 0.1;
  }

  double fee = deliveryFee ?? 500.0;
  double total = price + fee;

  print("Order: $orderId");
  print("Price: $price");
  print("Delivery: $fee");
  print("Total: $total");
  print("");

  return total;
}

void main() {
  processOrder(orderId: "A-001", itemPrice: 10000);
}
