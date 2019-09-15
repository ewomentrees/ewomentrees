import 'package:ewomentrees/src/pages/sign_in_page.dart';
import 'package:ewomentrees/src/widgets/donation_card.dart';
import 'package:ewomentrees/src/widgets/pledge_to_plant.dart';
import 'package:flutter/material.dart';

class DonationPage extends StatefulWidget {
  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        
        child: Stack(
          children: <Widget>[
            AppBar(
              title: Text(
                "4.99 USD = 1 Tree",
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              elevation: 0.0,
              //backgroundColor: Colors.white,
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                ),
                PledgeToPlant(),
                SizedBox(
                  height: 20.0,
                ),
                DonationCard(),
                SizedBox(
                  height: 40.0,
                ),
                 GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
                        },

                        child: Text(
                        "Pledge to plant Trees", 
                        style: TextStyle(
                          fontSize: 18.0, 
                          color: Colors.redAccent, 
                          fontWeight: FontWeight.bold),
                        ),
                      )
                /**GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SignInPage()));
                  },
                  child: Container(
                    width: 350.0,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Text(
                        "Proceed to pledge to plant",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),**/
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              heightFactor: 0.5,
              widthFactor: 0.5,
              child: Material(
                borderRadius: BorderRadius.circular(200),
                color: Color.fromRGBO(100, 255, 100, 0.4),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
