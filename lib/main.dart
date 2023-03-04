import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qwiyi_flutter/locator.dart';
import 'package:qwiyi_flutter/src/screens/intro_screen/presentation/view/introview.dart';
import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/ui_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const QwiyiApp());
}

class QwiyiApp extends StatelessWidget {
  const QwiyiApp({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MultiProvider(
          providers: allProviders,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              navigatorKey: NavigatorRoute.navigatorKey,
              // scaffoldMessengerKey: NavigatorRoute.scaffoldMessengerKey,
              theme: ThemeData(
                  appBarTheme: AppBarTheme(
                      iconTheme: IconThemeData(
                          color: Colors.black,
                          size: screenAwareSize(36, context))),
                  primarySwatch: Colors.blue,
                  fontFamily: 'montserrat'),
              home: const IntroView(),
            );
          },
        );
      },
    );
  }
}
