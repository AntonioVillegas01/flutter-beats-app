import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'package:beats_app/src/widgets/fondo_circular_widget.dart';
import 'package:beats_app/src/widgets/cards_view_widget.dart';
import 'package:beats_app/src/widgets/custom_appBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        FondoCircular(),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(),
                _Header(),
                CardsView()
              ],
            ),
          ),
        ),
        BuyBotton()
      ],
    ));
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 45.0,),
          Text('Beats', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
          Text('By Dre', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18.0),),
        ],
      ),
    );
  }
}


class BuyBotton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Buy', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold )),
                SizedBox(width: 5.0,),
                Icon(FontAwesomeIcons.arrowRight, color: Colors.white,)
              ],
            ),
            width: size.width * 0.3,
            height: 75,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0))
            ),
          ),
        )
      ],
    );
  }
}



