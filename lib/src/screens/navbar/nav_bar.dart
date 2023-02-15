


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/home/presentation/home_screen/view/homeScreen.dart';
import 'package:qwiyi_flutter/src/screens/menu/presentation/user_detail.dart';
import 'package:qwiyi_flutter/src/screens/transaction/tranasaction_view.dart';
import 'package:qwiyi_flutter/src/share/color.dart';


class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this)..addListener(() {});
    super.initState();
  }

  int activeIndex = 0;
  changeActiveIndexstate(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children:  [
              HomeScreen(),
              TransactionView(),
             const MenuView()
            ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(-1, 1),
                    blurRadius: 20,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(0.4),
                  )
                ],
                color: secondaryColor
              ),
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              height: 75.h,
              child: TabBar(
                  isScrollable: false,
                  onTap: (value) {
                    changeActiveIndexstate(value);
                  },
                  unselectedLabelColor: Theme.of(context).primaryColor,
                  labelColor: primaryColor,
                  splashFactory: NoSplash.splashFactory,
                  indicatorWeight: 0.02,
                  controller: _tabController,
                  tabs: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.5),
                          child: Icon(
                         Icons.home,
                          color: kBColor.withOpacity(0.5),
                          ),
                          ),
                        
                          Text(
                            "Home",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color:  primaryColor,
                                   fontSize: 12.sp
                                ),
                          )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.5),
                          child: Icon(
                      Icons.circle_outlined,
                      color: kBColor.withOpacity(0.5),
                           ),
                        ),
                 
                          Text(
                            "Transactions",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: primaryColor,
                                   fontSize: 12.sp
                                ),
                          )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.5),
                          child: Icon(
                          Icons.menu,
                      color: kBColor.withOpacity(0.5),
                        ),
                        ),

                          Text(
                            "Menu",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: primaryColor,
                                  fontSize: 12.sp
                                ),
                          )
                      ],
                    ),
                  ]),
            ),
          ],
        )
      ],
    ));

  }
}
