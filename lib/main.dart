import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'bookly_app.dart';
import 'core/utils/constants.dart';
import 'features/home/domain/entities/book_entity.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  dotenv.load(fileName: '.env');
  ScreenUtil.ensureScreenSize();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  ///run app
  runApp(const BooklyApp());
}

