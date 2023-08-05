class Epub {
  bool? isAvailable;

  Epub({this.isAvailable});

  factory Epub.fromJson(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable']?.toString().contains("true"),
      );

  Map<String, dynamic> toJson() => {
        if (isAvailable != null) 'isAvailable': isAvailable,
      };
}
