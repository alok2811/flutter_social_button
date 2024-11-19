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
        title: const Text("Social Login Buttons"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Default Email Button
              FlutterSocialButton(
                onTap: () {},
                title: 'Login with Email',
              ),
              const SizedBox(height: 10),

              /// Yahoo Login Button
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.yahoo,
                title: 'Login with Yahoo!',
              ),
              const SizedBox(height: 10),

              /// Facebook Login Button
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.facebook,
                title: 'Login with Facebook',
              ),
              const SizedBox(height: 10),

              /// Google Login Button with Black icon
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.google,
                iconColor: Colors.black,
                title: 'Login with Google',
              ),
              const SizedBox(height: 10),

              /// Apple Login Button
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.apple,
                title: 'Login with Apple',
              ),

              /// Phone Login Button
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.phone,
                title: 'Login with Phone',
              ),
              const SizedBox(height: 10),

              /// WhatsApp Login Button
              FlutterSocialButton(
                onTap: () {},
                buttonType: ButtonType.whatsapp,
                title: 'Login with WhatsApp',
              ),
              const SizedBox(height: 10),

              /// Instagram Login Button
              FlutterSocialButton(
                onTap: () {},
                mini: false,
                buttonType: ButtonType.instagram,
                title: 'Instagram',
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.black,
                thickness: 2.5,
              ),

              // Row of Mini Social Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /// Mini Email Button
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    title: 'Email',
                  ),

                  /// Mini Facebook Button
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.facebook,
                    title: 'Facebook',
                  ),

                  /// Mini Google Button
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.google,
                    title: 'Google',
                  ),

                  /// Mini Phone Button
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.phone,
                    title: 'Phone',
                  ),

                  /// Mini Yahoo Button
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.yahoo,
                    title: 'Yahoo!',
                  ),

                  /// Mini Instagram Button
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.instagram,
                    title: 'Instagram',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
