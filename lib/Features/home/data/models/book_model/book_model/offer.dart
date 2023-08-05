import 'list_price.dart';
import 'rental_duration.dart';
import 'retail_price.dart';

class Offer {
  num? finskyOfferType;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  bool? giftable;
  RentalDuration? rentalDuration;

  Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
    this.giftable,
    this.rentalDuration,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        finskyOfferType: num.tryParse(json['finskyOfferType'].toString()),
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromJson(Map<String, dynamic>.from(json['listPrice'])),
        retailPrice: json['retailPrice'] == null
            ? null
            : RetailPrice.fromJson(
                Map<String, dynamic>.from(json['retailPrice'])),
        giftable: json['giftable']?.toString().contains("true"),
        rentalDuration: json['rentalDuration'] == null
            ? null
            : RentalDuration.fromJson(
                Map<String, dynamic>.from(json['rentalDuration'])),
      );

  Map<String, dynamic> toJson() => {
        if (finskyOfferType != null) 'finskyOfferType': finskyOfferType,
        if (listPrice != null) 'listPrice': listPrice?.toJson(),
        if (retailPrice != null) 'retailPrice': retailPrice?.toJson(),
        if (giftable != null) 'giftable': giftable,
        if (rentalDuration != null) 'rentalDuration': rentalDuration?.toJson(),
      };
}
