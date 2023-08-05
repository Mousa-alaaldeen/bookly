class ListPrice {
  num? amount;
  String? currencyCode;

  ListPrice({this.amount, this.currencyCode});

  factory ListPrice.fromJson(Map<String, dynamic> json) => ListPrice(
        amount: num.tryParse(json['amount'].toString()),
        currencyCode: json['currencyCode']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (amount != null) 'amount': amount,
        if (currencyCode != null) 'currencyCode': currencyCode,
      };
}
