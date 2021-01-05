import 'package:flutter/material.dart';
import 'BorderBox.dart';

class ExpenseItem extends StatelessWidget {

  
  final String itemName;
  final String itemExpense;
  final Widget child;
  

  
  const ExpenseItem({Key key, this.itemName, this.itemExpense, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
                    padding: const EdgeInsets.fromLTRB(15, 35, 0, 0),
                    child: Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left :6),
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
                                   Text(itemExpense,style:themeData.textTheme.bodyText2)
                                ]
                              ),
                            )
                          ],
                        ),
                    ),
                  ) ;
    
  }
}