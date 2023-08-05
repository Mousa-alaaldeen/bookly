class RetailPrice {
  num? amount;
  String? currencyCode;

  RetailPrice({this.amount, this.currencyCode});

  factory RetailPrice.fromJson(Map<String, dynamic> json) => RetailPrice(
        amount: num.tryParse(json['amount'].toString()),
        currencyCode: json['currencyCode']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (amount != null) 'amount': amount,
        if (currencyCode != null) 'currencyCode': currencyCode,
      };
}
