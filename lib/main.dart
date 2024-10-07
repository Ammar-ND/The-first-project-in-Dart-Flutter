import 'package:flutter/material.dart';
import 'package:sixthy/screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sixthy/screens/category_trips_screen.dart';
import 'package:sixthy/screens/trip_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Amiri',
        textTheme: ThemeData.light().textTheme.copyWith(
          headlineLarge: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Amiri',
            fontWeight: FontWeight.bold,
          )
        )
        

      ),
      home: CategoriesScreen(),
      routes: {
        CategoryTripsScreen.screenRoute: (ctx) => CategoryTripsScreen(),
        TripDetailScreen.screenRoute: (ctx) => TripDetailScreen()
      },
    );
  }
}
