// بتعبر عن الداتا اللي بدها تنعرض ب
// ui
class BookEntity {
  final String? bookId;
  final String image;
  final String? title;
  final String authorName;
  final num? price;
  final num? raning;
  BookEntity(
      {required this.authorName,
      required this.title,
      required this.image,
      required this.price,
      required this.raning,
      required this.bookId});
}
