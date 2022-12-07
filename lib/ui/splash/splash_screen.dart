import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/home_provider.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    if (mounted) {
      Future.delayed(const Duration(seconds: 2), () {
        final route = MaterialPageRoute(builder: (_) => const HomeScreen());
        Provider.of<HomeProvider>(context, listen: false).fetchHomeData();
        Navigator.of(context).pushReplacement(route);
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Material();
  }
}
