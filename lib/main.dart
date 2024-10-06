import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import 'bookly_app.dart';
import 'core/utils/constants.dart';
import 'features/home/domain/entities/book_entity.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  dotenv.load(fileName: '.env');
  ScreenUtil.ensureScreenSize();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);

  ///run app
  runApp(const BooklyApp());
}

