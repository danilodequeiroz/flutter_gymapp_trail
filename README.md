
# flutter_gymapp

A new Flutter project for gym schedules  
Required tools:
- Firebase CLI
    - Node JS / NVM ([windows](https://github.com/coreybutler/nvm-windows/) / [linux or macos](https://github.com/nvm-sh/nvm))
- FlutterFire CLI
    - Firebase account with a firebase project

Required config files:
- `android/app/google-services.json`
- `ios/firebase_app_id_file.json`
- `ios/Runner/GoogleServices-Info.plist`
- `lib/firebase_options.dart`
- `firebase.json`
  ** These files should be created from your own firebase configuration even before trying to run the project. That's why they are not versioned on this git repo and ignored on `.gitignore` file.
  The step-by-step configuration process is described below.

## Getting Started

Before opening the app on Android Studio, which I recommend using because it was tested on Android Studio only, make sure you follow the basic firebase setup bellow.

Configuring firebase CLI:

- If you're on windows, follow [this guide](https://firebase.google.com/docs/cli#install-cli-windows)
- If you're on macos or linux, follow [this guide](https://firebase.google.com/docs/cli#install-cli-mac-linux)

Make sure that your terminal / command line answer to `npm --version` command before install firebase CLI with the following command:

`npm install -g firebase-tools`

Once the installation process is finished, you can login into your google account that owns your firebase project.  
You can use your own google account or whatever account you want.  
Once you already have the account you can follow to login using:

`firebase login`

You can check if your logged in, using:

`firebase login:list`

Open [firebase console](https://console.firebase.google.com/), and create a new project.  
Open the command line or terminal, and you can check the project you just created using the following command:

`firebase projects:list`

and you'll get the following output:

```
PS C:\Users\danilodequeiroz\AndroidStudioProjects\flutter-gymapp-trail> firebase projects:list                    
√ Preparing the list of your Firebase projects  
┌──────────────────────┬──────────────────────┬────────────────┬──────────────────────┐  
│ Project Display Name │ Project ID           │ Project Number │ Resource Location ID │  
├──────────────────────┼──────────────────────┼────────────────┼──────────────────────┤  
│ flutter-gymapp       │ flutter-gymapp-nnnnn │ 000000000000   │ [Not specified] │  
└──────────────────────┴──────────────────────┴────────────────┴──────────────────────┘  
  
1 project(s) total.  
  
```  
Install the FlutterFire CLI by running the following command from any directory:

```
dart pub global activate flutterfire_cli
```
That command activates the FlutterFire CLI globally on your system. This means that you can use the FlutterFire CLI commands from any directory on your system. The FlutterFire CLI is a command-line tool that you can use to interact with Firebase services from your Flutter applications.

Once the installation is finished, if you're on windows you'll need to edit you `Path` environment variable, including the following directory:

`C:\Users\user_name\AppData\Local\Pub\Cache\bin`

Where `user_name` is the name of your local account.

A web search for `"configure linux path"`  or `"configure macos path"` will show you how to do this step on a linux or mac machine.

Close your current command line and reopen, then test if the following command works to you with the following output:
`flutterfire --version`

```
C:\Users\danilodequeiroz>flutterfire --version
1.0.0
```
Navigate to your project directory, for example:

`cd "C:\Users\danilodequeiroz\AndroidStudioProjects\flutter-gymapp-trail"`

And run the flutterfire configuration command and pick the project you created on the previous steps and confirm:
`flutterfire configure`

```
PS C:\Users\danilodequeiroz\AndroidStudioProjects\flutter-gymapp-trail> flutterfire configure
i Found 1 Firebase projects.
? Select a Firebase project to configure your Flutter application with ›
❯ flutter-gymapp-nnnnn7 (flutter-gymapp) <- select your project
  <create a new project>
``` 

Select the platforms your project supports and confirm:

``` 
PS C:\Users\danilodequeiroz\AndroidStudioProjects\flutter-gymapp-trail> flutterfire configure
i Found 1 Firebase projects.
✔ Select a Firebase project to configure your Flutter application with · flutter-gymapp-c51d7 (flutter-gymapp)
? Which platforms should your configuration support (use arrow keys & space to select)? ›
✔ android
✔ ios
  macos
✔ web
  windows
``` 

That step will create the following files:

 - `flutter_gymapp_trail/firebase.json`
 - `flutter_gymapp_trail/lib/firebase_options.dart`
 - `flutter_gymapp_trail/android/app/google-services.json`

Which you can keep them on `.gitignore` file for security reasons.

Now you can open the project then build and run.


