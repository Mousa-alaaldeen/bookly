import 'epub.dart';
import 'pdf.dart';

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
        country: json['country']?.toString(),
        viewability: json['viewability']?.toString(),
        embeddable: json['embeddable']?.toString().contains("true"),
        publicDomain: json['publicDomain']?.toString().contains("true"),
        textToSpeechPermission: json['textToSpeechPermission']?.toString(),
        epub: json['epub'] == null
            ? null
            : Epub.fromJson(Map<String, dynamic>.from(json['epub'])),
        pdf: json['pdf'] == null
            ? null
            : Pdf.fromJson(Map<String, dynamic>.from(json['pdf'])),
        webReaderLink: json['webReaderLink']?.toString(),
        accessViewStatus: json['accessViewStatus']?.toString(),
        quoteSharingAllowed:
            json['quoteSharingAllowed']?.toString().contains("true"),
      );

  Map<String, dynamic> toJson() => {
        if (country != null) 'country': country,
        if (viewability != null) 'viewability': viewability,
        if (embeddable != null) 'embeddable': embeddable,
        if (publicDomain != null) 'publicDomain': publicDomain,
        if (textToSpeechPermission != null)
          'textToSpeechPermission': textToSpeechPermission,
        if (epub != null) 'epub': epub?.toJson(),
        if (pdf != null) 'pdf': pdf?.toJson(),
        if (webReaderLink != null) 'webReaderLink': webReaderLink,
        if (accessViewStatus != null) 'accessViewStatus': accessViewStatus,
        if (quoteSharingAllowed != null)
          'quoteSharingAllowed': quoteSharingAllowed,
      };
}
