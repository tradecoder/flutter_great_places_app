import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/places_provider.dart';
import './map_page.dart';

class PlaceDetailPage extends StatelessWidget {
  static const routeName = '/place-details';
  const PlaceDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments;
    final selectedPlace = Provider.of<GreatPlaces>(context).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedPlace.title),
      ),
      body: Column(children: [
        Container(
          color: null,
          height: 250,
          width: double.infinity,
          child: Image.file(
            selectedPlace.image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        const SizedBox(height: 12.0),
        Text(
          selectedPlace.location.address!,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, color: Colors.grey),
        ),
        const SizedBox(height: 120),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (ctx) => MapPage(
                  initialLocation: selectedPlace.location,
                  isSelecting: false,
                ),
              ),
            );
          },
          child: Text(
            'View on Map',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
      ]),
    );
  }
}
