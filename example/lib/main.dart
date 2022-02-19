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

              //For default Button
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.yahoo,
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
                iconColor: Colors.black,
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

                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.yahoo,
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
