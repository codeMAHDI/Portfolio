import 'package:flutter/material.dart';
import 'package:portfolio/Reposnive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      right: 5,
      top: Responsive.isMobile(context)
          ? Responsive.heightOfScreen(context) * 0.1
          : Responsive.heightOfScreen(context) * 0.2,
      child: const SizedBox(
        height: 200,
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialIconDesign(
                socialLink: "https://github.com/codeMAHDI", // link to open
                iconUrl: // icon link from google
                    'assets/images/github_i.png'),
            SocialIconDesign(
                socialLink: "https://www.facebook.com/moshiur.rahman.252841",
                iconUrl:
                    'assets/images/fb_i.png'),
            SocialIconDesign(
                socialLink:
                    "www.linkedin.com/in/moshiur-rahman-b5771616b/",
                iconUrl:
                    'assets/images/linkedin_I.png'),
          ],
        ),
      ),
    );
  }
}

class SocialIconDesign extends StatelessWidget {
  final String iconUrl;
  final String socialLink;
  const SocialIconDesign({
    super.key,
    required this.iconUrl,
    required this.socialLink,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      backgroundColor: Colors.transparent,
      onPressed: () {
        launchUrl(
          Uri.parse(socialLink),
        );
      },
      child: Image.asset(iconUrl,
      // fit: BoxFit.cover,
      )
    );
  }
}