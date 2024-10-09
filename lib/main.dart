import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:screen_protector/screen_protector.dart';
import 'bookly_app.dart';
import 'core/di/dependency_injection.dart';
import 'core/utils/constants.dart';
import 'core/utils/simple_bloc_observer.dart';
import 'features/home/domain/entities/book_entity.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  dotenv.load(fileName: '.env');
  ScreenUtil.ensureScreenSize();
  await ScreenProtector.preventScreenshotOff();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  await setupGetIt();
  Bloc.observer = SimpleBlocObserver();
  ///run app
  runApp(const BooklyApp());
}

