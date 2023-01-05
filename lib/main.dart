import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/locator.dart';
import 'package:provider/provider.dart';
import 'package:qwiyi_flutter/src/screens/intro_screen/presentation/view/introview.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const QwiyiApp());
}

class QwiyiApp extends StatelessWidget {
  const QwiyiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
     SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent
        ));
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child){
    return MultiProvider(
      providers: allProviders,
      builder: (context, child) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IntroView(),
    );
      },
      );
    });

  }
}


