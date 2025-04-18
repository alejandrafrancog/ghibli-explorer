# Ghibli Explorer 🏯✨

[![Flutter](https://img.shields.io/badge/Flutter-3.19+-02569B?logo=flutter)](https://flutter.dev)

A minimalist Flutter app exploring the Studio Ghibli universe through their public API. Perfect for learning Flutter fundamentals, REST API integration, and basic clean architecture principles.

## 🎯 Current Features
- 🏠 Welcome screen with animated UI
- 🎥 Films browser with basic info (title, description, release date)
- 👥 Character list (name, gender, age)
- 🧩 Clean API service implementation
- ➡️ Basic navigation between screens

## 🚧 In Progress
- ⚠️ Location screen (button no funcional)
- 🖼️ Missing movie posters integration
- 📱 Responsive layout improvements

## 📦 Tech Stack
- **Flutter 3.19+** - Dart 3.3
- **Studio Ghibli API** - https://ghibliapi.dev
- **Architecture**: Basic Clean Architecture
- **State Management**: Provider (o el que uses)
- **Dependencies**: http, flutter_bloc (si aplica)

## 🛠️ Development Setup

```bash
# 1. Clone repo
git clone https://github.com/alejandrafrancog/ghibli-explorer.git

# 2. Install dependencies
flutter clean
flutter pub get

# 3. Run app
flutter run
