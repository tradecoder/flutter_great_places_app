import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/places_provider.dart';
import './pages/places_list_page.dart';
import './pages/add_place_page.dart';
import './pages/place_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const PlacesListPage(),
        routes: {
          AddPlacePage.routeName: (context) => const AddPlacePage(),
          PlaceDetailPage.routeName: (context) => const PlaceDetailPage(),
        },
      ),
    );
  }
}
