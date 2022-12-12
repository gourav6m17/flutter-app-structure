import 'package:app_structure/provider/home_provider.dart';
import 'package:app_structure/ui/splash/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'di_container.dart' as di;
import 'package:sizer/sizer.dart';


Future main() async {
  await dotenv.load(fileName: "assets/env/.env.dev");
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
 
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<HomeProvider>(
      create: (_) => di.sl<HomeProvider>(),
    ),
 
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return
          DevicePreview(
              enabled: true,
              builder: (context) {
                return
          MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        title: 'App Title',
        theme: ThemeData(
          //fontFamily: 'poppins',
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      );
      });
    });

  }
 
}
