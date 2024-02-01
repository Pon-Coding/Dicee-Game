import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../pages/main_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const MainPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF74841c),
      body: _buildBody,
    );
  }

  Widget get _buildBody {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: Lottie.asset("assets/lottie/dice6.json"),
      ),
    );
  }
}
