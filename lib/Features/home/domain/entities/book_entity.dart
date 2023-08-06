// بتعبر عن الداتا اللي بدها تنعرض ب
// ui
import 'package:hive/hive.dart';
part  'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String? bookId;

  @HiveField(1)
  final String image;

  @HiveField(2)
  final String? title;

  @HiveField(3)
  final String authorName;

  @HiveField(4)
  final num? price;

  @HiveField(5)
  final num? raning;
  BookEntity(
      {required this.authorName,
      required this.title,
      required this.image,
      required this.price,
      required this.raning,
      required this.bookId});
}
