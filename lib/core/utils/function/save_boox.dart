 import 'package:hive/hive.dart';

import '../../../Features/home/domain/entities/book_entity.dart';

void saveBooxData(List<BookEntity> books, String boxName) {
    var box = Hive.box(boxName);
    box.add(books);}