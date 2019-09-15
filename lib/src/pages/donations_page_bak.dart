import 'package:ewomentrees/src/pages/sign_in_page.dart';
import 'package:ewomentrees/src/widgets/donation_card.dart';
import 'package:ewomentrees/src/widgets/pledge_to_plant.dart';
import 'package:flutter/material.dart';

class DonationPage extends StatefulWidget{
  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage>{
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
        title: Text("eWomen Trees Project", style: TextStyle(color: Colors.black, fontSize: 17),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              PledgeToPlant(),
              DonationCard(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer(){
    return Container(
      
      height: 220.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Pledge Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
              Text("10.00 USD", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
            ],
          ),
          Divider(height: 40.0, color: Colors.amberAccent,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Total", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
              Text("10.00 USD", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),),
            ],
          ),
          SizedBox(height: 20.0,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0)
              ),
              child: Center(
                child: Text(
                  "Proceed to Pledge",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                  ),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}