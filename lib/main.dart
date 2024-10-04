import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'bookly_app.dart';

void main() {
  dotenv.load(fileName: '.env');
  runApp(const BooklyApp());
}

