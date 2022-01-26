import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

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
              SocialButton.facebookButton(onTap: (){}),
              const SizedBox(height: 5,),
              SocialButton.googleButton(onTap: (){}),
              const SizedBox(height: 5,),
              SocialButton.linkedinButton(onTap: (){}),
              const SizedBox(height: 5,),
              SocialButton.twitterButton(onTap: (){}),
              const SizedBox(height: 5,),
              SocialButton.whatsappButton(onTap: (){}),
              const SizedBox(height: 5,),
              SocialButton.githubButton(onTap: (){}),

              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialButton.facebookButtonCircle(onTap: (){}),
                  SocialButton.googleButtonCircle(onTap: (){}),
                  SocialButton.twitterButtonCircle(onTap: (){}),
                  SocialButton.linkedinButtonCircle(onTap: (){}),
                  SocialButton.whatsappButtonCircle(onTap: (){}),
                  SocialButton.githubButtonCircle(onTap: (){}),
                ],
              )



            ],
          ),
        ),
      ),
    );
  }
}
