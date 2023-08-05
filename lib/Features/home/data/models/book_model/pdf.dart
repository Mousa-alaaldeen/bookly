class Pdf {
  bool? isAvailable;

  Pdf({this.isAvailable});

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
        isAvailable: json['isAvailable']?.toString().contains("true"),
      );

  Map<String, dynamic> toJson() => {
        if (isAvailable != null) 'isAvailable': isAvailable,
      };
}
