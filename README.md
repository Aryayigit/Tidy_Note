# 📝 TinyNote - Flutter Note-Taking App

This project is a simple note-taking application built with Flutter. Users can add and delete notes. The app follows Material Design principles and uses **Provider** for state management. Notes are persistently stored using **Hive**.

## 🚀 Features
- ✅ **Add New Notes:** Users can create notes by entering a title and description.
- ✅ **List Notes:** Users can view all saved notes on the home screen.
- ✅ **Delete Notes:** Users can easily remove unwanted notes.
- ✅ **Persistent Data Storage:** Notes are stored using **Hive** and remain saved even if the app is closed.
- ✅ **State Management:** Managed using **Provider**.
- ✅ **User-Friendly & Intuitive Design:** The interface is clean, easy to use, and follows Material Design principles.

## 📂 Project Structure
lib/
│── main.dart
│── models/
│   ├── note_model.dart
│── screens/
│   ├── home_screen.dart
│   ├── add_note_screen.dart
│── providers/
│   ├── note_provider.dart
│── services/
│   ├── local_database.dart
│── widgets/
│   ├── note_card.dart

## 🛠 Installation
1. **Install Flutter** (if not already installed)
   https://flutter.dev/docs/get-started/install
   ```
2. **Clone the repository**
   git clone https://github.com/yourusername/tinynote.git
   cd tinynote
   ```
3. **Install dependencies**
   flutter pub get
   ```
4. **Run the application**
   flutter run
   ```

## 🛑 Requirements
- Flutter 3.x or higher
- Dart 3.x or higher
- Android Studio or Visual Studio Code

## 📌 Dependencies
- **Provider** (State management)
  flutter pub add provider
  ```
- **Hive** (Data storage)
  flutter pub add hive
  flutter pub add hive_flutter
  ```

## 📜 License
This project is open-source and can be modified or used by anyone.

