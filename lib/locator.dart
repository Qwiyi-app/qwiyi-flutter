
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:qwiyi_flutter/src/screens/home/home_provider.dart';
import 'package:qwiyi_flutter/src/screens/intro_screen/presentation/provider.dart';
import 'package:qwiyi_flutter/src/screens/menu/provider.dart';

final allProviders = <SingleChildWidget>[
 ChangeNotifierProvider(create: (context) => IntroProvider()),
 ChangeNotifierProvider(create: (context) => HomeFeatureProvider()),
 ChangeNotifierProvider(create: (context) => MenuFeatureProvider()),

];