import 'package:flutter/material.dart';
import 'package:glofaa_customer/views/widgets/app_bar_without_search_bar.dart';
import 'package:glofaa_customer/views/widgets/choose_language_conatianer_widget.dart';
import 'package:glofaa_customer/views/widgets/choose_language_conatianer_widget2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: const [
              AppBarWithoutSearchBar(
                title: 'Choose Language',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 19),
                child: Column(
                  children: [
                    ChooseLanguageContainerWidget(
                      language: 'English',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    ChooseLanguageContainerWidget(
                      language: 'हिन्दी',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    ChooseLanguageContainerWidget(
                      language: 'Hinglish',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    ChooseLanguageContainerWidget2(
                      image: 'assets/images/image20.png',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    ChooseLanguageContainerWidget2(
                      image: 'assets/images/image21.png',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    ChooseLanguageContainerWidget2(
                      image: 'assets/images/image22.png',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    ChooseLanguageContainerWidget2(
                      image: 'assets/images/image23.png',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    ChooseLanguageContainerWidget2(
                      image: 'assets/images/image25.png',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
