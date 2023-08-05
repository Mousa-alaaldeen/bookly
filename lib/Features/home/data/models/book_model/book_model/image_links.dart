class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail: json['smallThumbnail']?.toString(),
        thumbnail: json['thumbnail']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (smallThumbnail != null) 'smallThumbnail': smallThumbnail,
        if (thumbnail != null) 'thumbnail': thumbnail,
      };
}
