# PinoySarsa: Flutter Static UI

A two-screen, non-interactive Flutter UI for **PinoySarsa**, a Famous Filipino Cuisine app.
Built for the Week 14 lab activity (Flutter Foundations & Static UI, Part 2).

## Screens

1. **Login screen** (`lib/screens/login_screen.dart`)
2. **Home / Discover Recipe screen** (`lib/screens/home_screen.dart`)

## Features used

- `StatelessWidget` screens in separate files
- `Column`, `Row`, `Container`, `Text`, `Icon`
- `Stack` and `Positioned` (back button on the Home header)
- `Image.asset` with `BoxFit` (images in `assets/images/`)
- `Padding`, `SizedBox`, `Expanded` for sizing and spacing
- One shared `ThemeData` (`lib/theme/app_theme.dart`)

## How to preview each screen

There is no navigation, so only one screen shows at a time.

1. Open `lib/main.dart`.
2. Set `previewScreen` at the top of the file:
   - `1` shows the **Login** screen
   - `2` shows the **Home** screen
3. Save the file, then run the app (`flutter run -d chrome` or press F5 in VS Code).
   Use a hot restart if the screen does not change.

## Project structure

```
lib/
  main.dart
  theme/app_theme.dart
  screens/login_screen.dart
  screens/home_screen.dart
assets/images/
  logo.png, adobo.png, sinigang.png
```

## Design reference

Figma: https://www.figma.com/proto/vmOEo1SAfAHywcWDMUls0Z/Week2Activity1?node-id=73-158&t=SXTNVJHc54JhIfjP-1&scaling=scale-down&content-scaling=fixed&page-id=0%3A1&starting-point-node-id=73%3A46&show-proto-sidebar=1