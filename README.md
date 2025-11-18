# 🎯 Flutter Stateful Widgets Practice

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)

A comprehensive Flutter project demonstrating **Stateful Widget** concepts through four progressive exercises. Built as part of Week 5 practice at CADT, this project showcases state management, interactive UI components, and modern Flutter design patterns.

---

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Exercise Breakdown](#exercise-breakdown)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Screenshots](#screenshots)
- [Learning Objectives](#learning-objectives)
- [Technologies Used](#technologies-used)
- [Resources](#resources)

---

## 🌟 Overview

This project contains **four distinct exercises** that progressively build understanding of Flutter's stateful widgets, from simple button toggles to complex score tracking interfaces. Each exercise is self-contained and can be run independently.

---

## ✨ Features

- **Independent State Management**: Each widget manages its own state
- **Interactive UI Components**: Buttons, cards, image galleries, and score trackers
- **Modern Design Patterns**: Clean architecture with reusable components
- **Responsive Layouts**: Using Row, Column, Expanded, and Stack widgets
- **Smooth Animations**: AnimatedSwitcher for seamless transitions
- **Cross-platform**: Runs on iOS, Android, Web, Windows, macOS, and Linux

---

## 🎓 Exercise Breakdown

### Exercise 1: Selectable Button 🔘

**Objective**: Create a stateful button that toggles selection state

**Key Concepts**:
- StatefulWidget basics
- State toggling with `setState()`
- Conditional styling with getters
- Multiple independent widget instances

**Features**:
- Toggle between "Selected" and "Not Selected" states
- Dynamic background and text colors
- Multiple buttons, each managing their own state

**File**: `lib/EX-1/ex_1.dart`

```bash
flutter run -t lib/EX-1/ex_1.dart
```

---

### Exercise 2: Favorite Cards ❤️

**Objective**: Build a list of cards with toggleable favorite status

**Key Concepts**:
- Creating reusable stateful components
- ListView implementation
- IconButton interaction
- Border decoration and layouts

**Features**:
- List of favorite cards with title and description
- Heart icon toggles between filled and outlined
- Individual favorite state per card
- Clean card layout with dividers

**File**: `lib/EX-2/ex_2_step_1_start.dart`

```bash
flutter run -t lib/EX-2/ex_2_step_1_start.dart
```

---

### Exercise 3: Image Gallery 🖼️

**Objective**: Create a circular image carousel with navigation controls

**Key Concepts**:
- Managing indexed state
- Circular navigation logic
- AppBar actions
- Asset management
- AnimatedSwitcher for transitions

**Features**:
- Navigate through multiple images
- Previous/Next buttons in AppBar
- Circular carousel (first ↔ last)
- Smooth image transitions
- Current position indicator

**File**: `lib/EX-3/ex_3_start.dart`

```bash
flutter run -t lib/EX-3/ex_3_start.dart
```

**Note**: Ensure images are placed in `assets/w4-s2/` and declared in `pubspec.yaml`

---

### Exercise 4: Score Tracker 📊 (BONUS)

**Objective**: Build a score tracking interface with progress bars

**Key Concepts**:
- Stack widget for layered UI
- Progress bar implementation
- Increment/decrement logic
- Dynamic color theming

**Features**:
- Three score cards with customizable titles
- Increment (+) and decrement (-) buttons
- Visual progress bars with green fill
- Score clamping (0-10 range)
- Modern card-based design

**File**: `lib/EX-4/ex_4.dart`

```bash
flutter run -t lib/EX-4/ex_4.dart
```

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- IDE: VS Code, Android Studio, or IntelliJ IDEA
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd w5_statefull_widget
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Verify installation**
   ```bash
   flutter doctor
   ```

4. **Run an exercise**
   ```bash
   # Example: Run Exercise 1
   flutter run -t lib/EX-1/ex_1.dart
   
   # Or run on specific device
   flutter run -d <device-id> -t lib/EX-1/ex_1.dart
   ```

### Available Devices

Check connected devices:
```bash
flutter devices
```

Run on specific platforms:
```bash
flutter run -d chrome          # Web
flutter run -d linux           # Linux Desktop
flutter run -d windows         # Windows Desktop
flutter run -d macos           # macOS Desktop
```

---

## 📁 Project Structure

```
w5_statefull_widget/
├── lib/
│   ├── main.dart              # Default entry point
│   ├── EX-1/
│   │   └── ex_1.dart          # Selectable Button
│   ├── EX-2/
│   │   ├── ex_2_step_1_start.dart      # Favorite Cards (solution)
│   │   └── ex_2_step_1_correction.dart # Layout reference
│   ├── EX-3/
│   │   └── ex_3_start.dart    # Image Gallery
│   │   └── w4-s2/             # Image assets folder
│   └── EX-4/
│       └── ex_4.dart          # Score Tracker
├── assets/
│   └── w4-s2/                 # Gallery images
│       ├── bird.jpg
│       ├── bird2.jpg
│       ├── insect.jpg
│       ├── girl.jpg
│       └── man.jpg
├── test/
│   └── widget_test.dart
├── pubspec.yaml               # Project configuration
└── README.md                  # This file
```

---

## 📸 Screenshots

### Exercise 1: Selectable Button
Multiple buttons with independent toggle states

### Exercise 2: Favorite Cards
Interactive list with favorite toggling

### Exercise 3: Image Gallery
Circular carousel with smooth transitions

### Exercise 4: Score Tracker
Green-themed score cards with progress bars

---

## 🎯 Learning Objectives

By completing this project, you will learn to:

✅ Create and manage StatefulWidgets  
✅ Choose appropriate state types and structures  
✅ Render dynamic UI based on state changes  
✅ Use Flutter layout widgets (Expanded, Stack, Row, Column)  
✅ Implement user interactions (buttons, gestures)  
✅ Manage multiple stateful components independently  
✅ Work with assets and images  
✅ Apply modern Flutter design patterns  
✅ Debug and test stateful widgets  

---

## 🛠️ Technologies Used

- **Flutter**: UI Framework
- **Dart**: Programming Language
- **Material Design**: UI Components
- **StatefulWidget**: State Management
- **Hot Reload**: Fast Development

---

## 📚 Resources

### Official Documentation
- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Documentation](https://dart.dev/guides)
- [Material Design Guidelines](https://material.io/design)

### Helpful Tutorials
- [Flutter Tutorial for Beginners](https://www.classcentral.com/classroom/youtube-flutter-tutorial-for-beginners-45851)
- [StatefulWidget Guide](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html)
- [Card Widget](https://api.flutter.dev/flutter/material/Card-class.html)
- [Image Widget](https://api.flutter.dev/flutter/widgets/Image-class.html)
- [Stack Widget Tutorial](https://www.youtube.com/watch?v=GPoRjSjd1cI)

---

## 🤝 Contributing

This is a practice project, but suggestions and improvements are welcome!

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📝 License

This project is created for educational purposes as part of CADT coursework.

---

## 👤 Author

**Your Name**  
CADT - Cambodia Academy of Digital Technology  
Week 5 - Stateful Widgets Practice

---

## 🙏 Acknowledgments

- CADT Flutter Course Instructors
- Flutter Community
- Material Design Team

---

<div align="center">

**⭐ Star this repo if you found it helpful!**

Made with ❤️ using Flutter

</div>
