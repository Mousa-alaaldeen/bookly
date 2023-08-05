class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type']?.toString(),
      identifier: json['identifier']?.toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        if (type != null) 'type': type,
        if (identifier != null) 'identifier': identifier,
      };
}
