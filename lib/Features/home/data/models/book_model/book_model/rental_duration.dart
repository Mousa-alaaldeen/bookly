class RentalDuration {
  String? unit;
  num? count;

  RentalDuration({this.unit, this.count});

  factory RentalDuration.fromJson(Map<String, dynamic> json) {
    return RentalDuration(
      unit: json['unit']?.toString(),
      count: num.tryParse(json['count'].toString()),
    );
  }

  Map<String, dynamic> toJson() => {
        if (unit != null) 'unit': unit,
        if (count != null) 'count': count,
      };
}
