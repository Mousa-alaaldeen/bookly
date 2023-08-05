import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json['kind']?.toString(),
        id: json['id']?.toString(),
        etag: json['etag']?.toString(),
        selfLink: json['selfLink']?.toString(),
        volumeInfo: json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromJson(
                Map<String, dynamic>.from(json['volumeInfo'])),
        saleInfo: json['saleInfo'] == null
            ? null
            : SaleInfo.fromJson(Map<String, dynamic>.from(json['saleInfo'])),
        accessInfo: json['accessInfo'] == null
            ? null
            : AccessInfo.fromJson(
                Map<String, dynamic>.from(json['accessInfo'])),
        searchInfo: json['searchInfo'] == null
            ? null
            : SearchInfo.fromJson(
                Map<String, dynamic>.from(json['searchInfo'])),
      );

  Map<String, dynamic> toJson() => {
        if (kind != null) 'kind': kind,
        if (id != null) 'id': id,
        if (etag != null) 'etag': etag,
        if (selfLink != null) 'selfLink': selfLink,
        if (volumeInfo != null) 'volumeInfo': volumeInfo?.toJson(),
        if (saleInfo != null) 'saleInfo': saleInfo?.toJson(),
        if (accessInfo != null) 'accessInfo': accessInfo?.toJson(),
        if (searchInfo != null) 'searchInfo': searchInfo?.toJson(),
      };
}
