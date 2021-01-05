import 'package:bankapp/custom/BorderBox.dart';
import 'package:bankapp/custom/MasterCreditCard.dart';
import 'package:bankapp/custom/VisaCreditCard.dart';
import 'package:bankapp/custom/AddCardButton.dart';
import 'package:bankapp/custom/ExpenseItem.dart';
import 'package:bankapp/custom/DailyExpenseItem.dart';
import 'package:bankapp/utils/constants.dart';

import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
          child: Scaffold(
            backgroundColor:Color.fromRGBO(243,246,249,1.0),
            body:Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25,30,25,40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My cards",style: themeData.textTheme.headline1,),
                          BorderBox(height: 50,width: 50, border: 20,
                            child:Image(image: AssetImage('assets/images/avatar.jpg')), 
                            )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25,right: 10),
                            child: CircularBorder(
                              width: 2,
                              size: 55,
                              color: Color(0xFFb3bbc0),
                              icon: Icon(Icons.add, color: Color(0xFFb3bbc0)),
                            ),
                          ),
                          MasterCreditCard(
                            ccBalance: "\$7,560.00",
                            ccType: "Credit Card",
                          ),
                          VisaCreditCard(
                            ccBalance: "\$3,320.00",
                            ccType: "Debit Card",
                          ),
                          Container(
                            width: 20,
                            color: Colors.transparent,
                          )
                             
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                          children: [
                            ExpenseItem(
                              itemName: "STEAM",
                              itemExpense :"\$22.65",
                              child : Image(image:AssetImage("assets/images/steam.jpg"), fit: BoxFit.cover)
                            ),
                            ExpenseItem(
                              itemName: "AT&T",
                              itemExpense :"\$59.00",
                              child : Image(image:AssetImage("assets/images/at&t.png"), fit: BoxFit.cover)
                            ),
                            ExpenseItem(
                              itemName: "LYFT",
                              itemExpense :"\$35.50",
                              child : Image(image:AssetImage("assets/images/lyft.jpg"), fit: BoxFit.cover)
                            ),
                            ExpenseItem(
                              itemName: "SPOTIFY",
                              itemExpense :"\$19.90",
                              child : Image(image:AssetImage("assets/images/spotify.png"), fit: BoxFit.cover)
                            ),
                            Container(
                            width: 10,
                            color: Colors.transparent,
                          )
                          ],
                      ),
                        ),
                    ),
                  ],
                ),
              DraggableScrollableSheet(
                initialChildSize: 0.35,
                minChildSize: 0.35,
                maxChildSize: 1.0,
                builder: (BuildContext context, ScrollController scrollController){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      ),
                     ),
                    child: Stack(
                      children:[
                        ListView(
                          controller: scrollController,
                          padding: const EdgeInsets.all(20),
                            children: <Widget>[
                              Center(
                                child: Container(
                                  //margin: EdgeInsets.only(top:10),
                                    height: 4,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.grey[300],
                                    ) 
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10.0,20,10,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Today, 20 Sep",style: themeData.textTheme.headline5),
                                    Text("- \$430.08",style: themeData.textTheme.headline5)
                                  ],
                                ),
                              ),
                              DailyExpense(
                                itemName: "Uber Eats",
                                ccType: "Debit Card",
                                itemExpense: "- \$28.60",
                                itemDate: "11.:45 AM",
                                child: Image(image:AssetImage("assets/images/uber-eats.png"), fit: BoxFit.cover),
                              ),
                              DailyExpense(
                                itemName: "Lyft",
                                ccType: "Credit Card",
                                itemExpense: "- \$10.49",
                                itemDate: "09:20 AM",
                                child: Image(image:AssetImage("assets/images/lyft.jpg"), fit: BoxFit.cover),
                              ),
                              DailyExpense(
                                itemName: "Apple Store",
                                ccType: "Credit Card",
                                itemExpense: "- \$390.99",
                                itemDate: "10:04 AM",
                                child: Image(image:AssetImage("assets/images/apple.jpg"), fit: BoxFit.cover),
                              ),
                            ],
                    ),
                  ])
                      );
                  },
              ),
              ] 
            ),
            )
    );
  }
}

