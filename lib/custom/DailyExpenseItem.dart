import 'package:flutter/material.dart';
import 'BorderBox.dart';

class DailyExpense extends StatelessWidget {

  final String itemName;
  final String ccType;
  final String itemDate;
  final String itemExpense;
  final Widget child;

  const DailyExpense({Key key, this.itemName, this.itemExpense, this.child, this.ccType, this.itemDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final ThemeData themeData = Theme.of(context);
    return Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Container(
                      height: 60,
                      color: Color(0xFFFFFFFF),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Padding(
                              padding: const EdgeInsets.only(left :0),
                              child: BorderBox(height: 48,width: 48, border: 18,
                              child:child, 
                          ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children : [
                                  Text(itemName,style:themeData.textTheme.headline4),
                                   Text(ccType,style:themeData.textTheme.bodyText2)
                                ]
                              ),
                            ),
                            ],),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(itemExpense,style:themeData.textTheme.headline4),
                                  Text(itemDate,style:themeData.textTheme.bodyText2)
                                ],
                              ),
                            ),
                          ],
                        ),
                    ),
                  ) ;
  }
}