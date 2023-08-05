class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});

  factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
        textSnippet: json['textSnippet']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (textSnippet != null) 'textSnippet': textSnippet,
      };
}
