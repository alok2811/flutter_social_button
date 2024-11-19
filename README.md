<h1 align="center">Flutter Social Button</h1>

# Flutter Social Button

[![pub package](https://img.shields.io/pub/v/flutter_social_button.svg)](https://pub.dev/packages/flutter_social_button)  
[![pub points](https://img.shields.io/pub/likes/flutter_social_button?logo=dart)](https://pub.dev/packages/flutter_social_button)  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-in-0e76a8)](https://www.linkedin.com/in/alok-dubey-02ba331b6)  
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?logo=instagram&logoColor=white)](https://www.instagram.com/flutter_coding_/)  
[![Facebook](https://img.shields.io/badge/Facebook-1877F2?logo=facebook&logoColor=white)](https://www.facebook.com/dalok2811/)  
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?logo=youtube&logoColor=white)](https://www.youtube.com/channel/UC7S6rSRNON1_YvKgiUjfyIw)

---

## Features

Flutter Social Button is a Flutter package to easily add social media buttons to your app. Buttons are customizable, and the package supports a wide range of social platforms.

---

## Getting Started

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_social_button: ^latest_version
```

## Usage Example

import flutter_social_button.dart

```

import 'package:flutter_social_button/flutter_social_button.dart';

```
## For built-in buttons.

```

// for full width Buttons

            //For default Button Its return a Email Button
               FlutterSocialButton(
                   onTap: () {}, ), 
                   
            //For facebook Button   
            
             FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.facebook, // Button type for different type buttons
              ),
              
          //For google Button
          
               FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.google, // Button type for different type buttons
                iconColor: Colors.black,  // for change icons colors
              ),  

           // for Mini Circle Button

                 FlutterSocialButton(
                    onTap: () {},
                    mini: true,   //just pass true for mini circle buttons
                    buttonType: ButtonType.phone,  // Button type for different type buttons
                  ),

```


## Button Types

- Facebook
- Google
- Yahoo
- Twitter
- LinkedIn
- WhatsApp
- Apple
- GitHub
- Phone
- Email
- Instagram
- YouTube
- Snapchat
- Pinterest
- TikTok
- Reddit
- Tumblr
- Skype
- Viber
- Discord
- WeChat
- Line
- Quora
- Twitch
- Flickr
- Yelp
- Spotify



## Example

<img src = "https://github.com/alok2811/flutter_social_button/blob/master/screenshots/phone_screen.png" width="250">

```
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
              //For default Button
              FlutterSocialButton(
                onTap: () {},
              ),
              const SizedBox(
                height: 2,
              ),

              //For facebook Button
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.facebook,
              ),
              const SizedBox(
                height: 2,
              ),

              //For google Button
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.google,
              ),
              const SizedBox(
                height: 2,
              ),

              //For phone Button
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.phone,
              ),

              const SizedBox(
                height: 2,
              ),

              //For Whatsapp Button
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.whatsapp,
              ),
              const SizedBox(
                height: 2,
              ),

              const Divider(
                color: Colors.black,
                thickness: 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.facebook,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.google,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.phone,
                  ),
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
