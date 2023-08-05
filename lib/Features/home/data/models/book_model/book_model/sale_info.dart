import 'list_price.dart';
import 'offer.dart';
import 'retail_price.dart';

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  String? buyLink;
  List<Offer>? offers;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: json['country']?.toString(),
        saleability: json['saleability']?.toString(),
        isEbook: json['isEbook']?.toString().contains("true"),
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromJson(Map<String, dynamic>.from(json['listPrice'])),
        retailPrice: json['retailPrice'] == null
            ? null
            : RetailPrice.fromJson(
                Map<String, dynamic>.from(json['retailPrice'])),
        buyLink: json['buyLink']?.toString(),
        offers: (json['offers'] as List<dynamic>?)
            ?.map((e) => Offer.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        if (country != null) 'country': country,
        if (saleability != null) 'saleability': saleability,
        if (isEbook != null) 'isEbook': isEbook,
        if (listPrice != null) 'listPrice': listPrice?.toJson(),
        if (retailPrice != null) 'retailPrice': retailPrice?.toJson(),
        if (buyLink != null) 'buyLink': buyLink,
        if (offers != null) 'offers': offers?.map((e) => e.toJson()).toList(),
      };
}
