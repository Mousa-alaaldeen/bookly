class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;

  SaleInfo({this.country, this.saleability, this.isEbook});

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: json['country']?.toString(),
        saleability: json['saleability']?.toString(),
        isEbook: json['isEbook']?.toString().contains("true"),
      );

  Map<String, dynamic> toJson() => {
        if (country != null) 'country': country,
        if (saleability != null) 'saleability': saleability,
        if (isEbook != null) 'isEbook': isEbook,
      };
}
