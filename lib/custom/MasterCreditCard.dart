import 'package:flutter/material.dart';

class MasterCreditCard extends StatelessWidget {

  
  final String ccType;
  final String ccBalance;
  

  
  const MasterCreditCard({Key key, this.ccType, this.ccBalance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 175,
                          width: 160,
                          decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(28.0),
                          color: Color(0xFFFFFFFF),
                        ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20,18,0,0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 35,
                                  child:Image(image: AssetImage('assets/images/master.png'))
                                  ),
                                  SizedBox(height: 48,),
                                  Text(ccBalance,style: themeData.textTheme.headline3),
                                  Text(ccType,style: themeData.textTheme.bodyText2),
                              ],
                              ),
                          ),
                        ),
                      );
    
  }
}