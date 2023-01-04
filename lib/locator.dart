
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:qwiyi_flutter/src/screens/intro_screen/presentation/provider.dart';

final allProviders = <SingleChildWidget>[
 ChangeNotifierProvider(create: (context) => IntroProvider()),

];