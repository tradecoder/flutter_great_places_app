# flutter_great_places_app

On `lib/helpers/location_helper.dart` put your valid google map api key. If you put an invalid api key, it won't work. 
```dart
const googleApiKey = 'put_your_google_map_api_key_here';
```

## Android
* Android: OK.

## iOS
* iOS: Some configuration in `info.plist` and `AppDelegate.swift` is not setup for some packages/plugins. Check documentation for `location`, `sqflite` and `google_maps_flutter` configurations and complete setup in `info.plist` and `AppDelegate.swift`.

## Features
* Camera
* Google maps
* Location and location address
* Local storage (sqflite)