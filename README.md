# Firebase CloudApp

This Flutter application demonstrates how to integrate Firebase services for authentication and cloud data storage.

## Features

### Authentication
- Sign up with email and password
- Sign in with email and password
- Sign out

### Cloud Firestore
- Fetching and displaying data from Firestore

## Getting Started

To run this Flutter app on your local machine and connect it to Firebase, follow these steps:

### Prerequisites

- Flutter SDK installed on your machine. You can download it from [here](https://flutter.dev/docs/get-started/install).
- Firebase account and a Firebase project. You can create a project in the [Firebase Console](https://console.firebase.google.com/).

### Firebase Setup

#### Add Firebase to your Flutter project:
Follow the instructions in the [FlutterFire documentation](https://firebase.flutter.dev/docs/overview) to add Firebase to your Flutter project.

#### Enable Firebase Authentication:
In the Firebase Console, navigate to **Authentication** and enable the sign-in methods you want to use (e.g., Email/Password).

#### Set up Cloud Firestore:
In the Firebase Console, navigate to **Firestore** and create a collection named `users`.
Add a document with an `email` field to test data fetching.

### Running the App

1. Clone this repository to your local machine:
    ```bash
    git clone https://github.com/Aamirsiddique09/repository.git
    ```
2. Navigate to the project directory:
    ```bash
    cd firebase_cloudApp
    ```
3. Run the app:
    ```bash
    flutter run
    ```

## Usage

### Sign Up:
Enter your email and password to create a new account.

### Sign In:
Use your registered email and password to sign in.

### Fetch Data:
After signing in, navigate to the `FetchValueScreen` to fetch and display data from Firestore.

## Directory Structure

```css
firebase_cloudApp/
├── android/
├── ios/
├── lib/
│   ├── auth_service.dart
│   ├── cloud_service.dart
│   ├── login_page.dart
│   ├── fetch_value_screen.dart
│   └── main.dart
├── README.md
├── pubspec.yaml
└── ...
