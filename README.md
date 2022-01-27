[![pub package](https://img.shields.io/pub/v/social_login_buttons.svg)](https://pub.dev/packages/flutter_social_button)
[![pub points](https://badges.bar/social_login_buttons/pub%20points)](https://pub.dev/packages/flutter_social_button)


# Flutter Social Button

Flutter Social Button is a flutter package to create social media login buttons easily to any flutter app.

## Screenshot

#Mobile View

![Image](https://github.com/alok2811/flutter_social_button/blob/master/screenshots/phone_screen.png)

#Web View

![Image](https://github.com/alok2811/flutter_social_button/blob/master/screenshots/desktop_screen.png)

## Getting started

## Usage

Add the dependency in pubsec.yaml file.

```
dart
  dependencies:
    flutter:
      sdk: flutter
    flutter_social_button: any
```

## Button Types

- Facebook
- Google
- Twitter
- Linkedin
- Whatsapp
- Apple
- Github
- Phone


## Example

```
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Social Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social Buttons"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButton.appleButton(onTap: (){}),
              const SizedBox(height: 2,),
              SocialButton.facebookButton(onTap: (){}),
              const SizedBox(height: 2,),
              SocialButton.googleButton(onTap: (){}),
              const SizedBox(height: 2,),
              SocialButton.linkedinButton(onTap: (){}),
              const SizedBox(height: 2,),
              SocialButton.twitterButton(onTap: (){}),
              const SizedBox(height: 2,),
              SocialButton.whatsappButton(onTap: (){}),
              const SizedBox(height: 2,),
              SocialButton.githubButton(onTap: (){}),
              const SizedBox(height: 2,),
              SocialButton.phoneButton(onTap: (){}),

              const Divider(color: Colors.black, thickness: 2.5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialButton.appleButtonCircle(onTap: (){}),
                  SocialButton.facebookButtonCircle(onTap: (){}),
                  SocialButton.googleButtonCircle(onTap: (){}),
                  SocialButton.twitterButtonCircle(onTap: (){}),
                  SocialButton.linkedinButtonCircle(onTap: (){}),
                  SocialButton.whatsappButtonCircle(onTap: (){}),
                  SocialButton.githubButtonCircle(onTap: (){}),
                  SocialButton.phoneButtonCircle(onTap: (){}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

```


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
