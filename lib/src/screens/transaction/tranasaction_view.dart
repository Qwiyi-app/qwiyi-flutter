import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiyi_flutter/src/screens/transaction/model/trasaction_model.dart';
import 'package:qwiyi_flutter/src/share/appbar/app_bar.dart';
import 'package:qwiyi_flutter/src/share/bottomNavBar/customNavBar.dart';
import 'package:qwiyi_flutter/src/share/color.dart';
// import 'package:qwiyi_flutter/src/share/function.dart';
import 'package:qwiyi_flutter/src/share/styling.dart';

class TransactionView extends StatelessWidget {
  TransactionView({super.key});
  final getHistory = TrasactionHistory.getHistoryList();
  final int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Scaffold(
        appBar: const QwiyiAppBar(
          title: 'Transactions',
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: getHistory.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
                        margin: EdgeInsets.symmetric(vertical: 3.h),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 2),
                                  blurRadius: 6,
                                  color: Colors.grey.withOpacity(0.2))
                            ]),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: primaryColor,
                            child: Text(getHistory[index]
                                .name
                                .substring(0, 1)
                                .toUpperCase()),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(getHistory[index].name,
                                  style: QwiyiTypography.normalPrimaryTextStyle(
                                          context)
                                      .copyWith(color: primaryColor)),
                              Text(getHistory[index].dateTIme,
                                  style: QwiyiTypography.normalPrimaryTextStyle(
                                          context)
                                      .copyWith(
                                          color: primaryColor, fontSize: 12.sp))
                            ],
                          ),
                          trailing: Text(
                            '#'
                            '${getHistory[index].amt}',
                            style: QwiyiTypography.bigTextStyle(context)
                                .copyWith(
                                    color: getHistory[index].color,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15.sp,
                                    fontFamily: 'Roboto'),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomNavBar(
          selectedIndex: _selectedIndex,
        ),
      )),
    );
  }
}
