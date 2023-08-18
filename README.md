# People-Engagement-Platform User Documentation
Welcome to the user documentation for Protype for People-Engagement-Platform! This guide will help you get started with using our app and making the most out of its features.

# Table of Contents
- Introduction
- Getting Started
    - Installation
    - Account Setup
- Using the App
    - Overview of the features



## 1. Introduction
People-Engagement-Platform is a mobile application developed using the Flutter framework. The People Engagement Platform is a comprehensive software solution designed to enhance employee engagement, collaboration, and communication within organizations. It provides a digital environment where employees can connect, interact, and stay informed, leading to improved productivity, job satisfaction, and overall organizational success.


## 2. Getting Started

### Installation

------

Before you begin, ensure you have the following prerequisites:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) installed on your system
- An integrated development environment (IDE) like [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/)
- Emulator or physical device for testing

#### 1. Install Flutter SDK

1. Visit the [Flutter website](https://flutter.dev/) and download the latest stable version for your operating system (Windows, macOS, or Linux).

2. Extract the downloaded archive to a preferred location on your computer.

3. Add the `flutter/bin` directory to your system's PATH variable. This step allows you to run Flutter commands from any directory in the terminal.

#### 2. Set Up IDE

##### Android Studio:

1. Install [Android Studio](https://developer.android.com/studio) if not already installed.
   
2. Install the Flutter and Dart plugins from the plugin marketplace.
   
3. Restart Android Studio to apply the changes.

##### Visual Studio Code:

1. Install [Visual Studio Code](https://code.visualstudio.com/) if not already installed.
   
2. Install the Flutter and Dart extensions from the VS Code marketplace.
   
3. Restart VS Code to apply the changes.

#### 3. Verify Installation

To verify that Flutter is installed correctly, open a terminal or command prompt and run:

```sh
flutter doctor
```

#### 4. Run the App
Clone or download the Flutter app's source code from a Git repository.

Navigate to the app's directory in the terminal:

```sh
cd path/to/your/app
```

Connect a physical device or start an emulator.

Run the app using the following command:

```sh
flutter run
```


The app should now build and launch on your connected device or emulator. You'll see the app's output and any debugging information in the terminal.

-----
### Account Setup using Firebase
------
1. Create a new project in the [Firebase Console](https://console.firebase.google.com/) if you haven't already.

2. Set up Firebase Authentication for your project:
   - Go to the "Authentication" section in the Firebase Console.
   - Enable the authentication methods you want to use (Email/Password, Google, etc.).
   - Follow the provided instructions to configure each authentication method.

## 3.Using the App
    
### Overview of the features

#### Landing Page

The landing page serves as an introduction to the app and provides a brief overview of its key features. It may include a catchy tagline, app logo, and a call-to-action to encourage users to log in or register.

#### Login Page

The login page enables users who have registered to log into the app using their credentials. Users can enter their email and password to gain access to the app's features. Successful login directs users to the home page.

#### Registration Page

The registration page allows new users to create accounts. Users can input their desired email, password to register. After successful registration, users can proceed to the home page.

#### Home Page

The home page is the central hub of the app and serves as the user's dashboard. It displays relevant information and provides quick access to various sections of the app.

#### Messages

The Messages section is a prototype to the actual message page which allows users to communicate with each other through instant messaging. Conversations are organized in a user-friendly interface.

#### Network

The Network section helps users connect with other users within the app. It might feature profiles, contact information, and a way to establish professional connections. Users can search for contacts and build their network.

#### Discover

The Discover section offers a space for users to explore new content or opportunities. This might include suggested connections, trending topics, or recommended content based on user interests.


## 4.Screenshots

![Landing Page](project/screenshot/screenshot1.jpg)

![Login Page](project/screenshot/screenshot2.jpg)

![Registeration Page](project/screenshot/screenshot3.jpg)

![Home Page](project/screenshot/screenshot4.jpg)

![Message Page](project/screenshot/screenshot5.jpg)

![Individual Message Page](project/screenshot/screenshot6.jpg)

![Discover Page](project/screenshot/screenshot7.jpg)

![Network Page](project/screenshot/screenshot8.jpg)
