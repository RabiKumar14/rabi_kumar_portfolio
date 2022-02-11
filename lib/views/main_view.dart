import 'package:flutter/material.dart';
import 'package:rabi_kumar_portfolio/widgets/appbar.dart';
import 'package:rabi_kumar_portfolio/widgets/button.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width > 600 ? const MainViewWeb() : const MainViewMobile();
  }
}

class MainViewMobile extends StatelessWidget {
  const MainViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: CustomAppBar(), body: Center());
  }
}

class MainViewWeb extends StatefulWidget {
  const MainViewWeb({Key? key}) : super(key: key);

  @override
  State<MainViewWeb> createState() => _MainViewWebState();
}

class _MainViewWebState extends State<MainViewWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SelectableText('name'),
                      CustomButton(height: 40, width: 100)
                    ],
                  ),
                  Text('picture'),
                ],
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
