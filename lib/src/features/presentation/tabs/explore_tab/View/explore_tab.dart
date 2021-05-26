import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:halfood/src/colors/colors.dart';
import 'package:halfood/src/features/presentation/commons_widgets/headers_text.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                _topBar(context),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.centerLeft,
                  child: headerText('Descubre nuevos lugares', Colors.black,
                      FontWeight.bold, 30.0),
                ),
                _sliderCards(),
                _headers(context, 'Populares esta semana', 'Más...'),
                _populares(context,
                    'https://images.unsplash.com/photo-1520201163981-8cc95007dd2a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
                _populares(context,
                    'https://images.unsplash.com/photo-1612182062633-9ff3b3598e96?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=361&q=80'),
                _populares(context,
                    'https://images.unsplash.com/photo-1582450871972-ab5ca641643d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
                SizedBox(height: 10.0,),
                _headers(context, 'Todos los lugares', 'Más...'),
                _sliderCollections(),
              ],
            ),
          ),
        ]))
      ],
    ));
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 310,
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 20.0,
              color: gris,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(
                'Search',
                style: TextStyle(
                  color: gris,
                  fontSize: 17.0,
                ),
              ),
            )
          ],
        ),
      ),
      //Spacer(),
      Container(
        width: 45,
        height: 45,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: filter, borderRadius: BorderRadius.circular(30)),
        child: IconButton(
          icon: Icon(Icons.filter_list, size: 30, color: Colors.white),
          onPressed: () {},
        ),
      )
    ],
  );
}

Widget _sliderCards() {
  return Container(
    height: 350, //importate en el swiper
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjet(context);
            });
      },
    ),
  );
}

Widget _tarjet(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
              width: 210.0,
              height: 250.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1515516969-d4008cc6241a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80')),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 10.0),
              child: Text('Pizzería La Italiana',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  )),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 5.0),
              child: Text('Av. Estados Unidos 312 J.L.B. y R.',
                  style: TextStyle(
                    //color: Theme.of(context).disabledColor,
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 13.0,
                  )),
            ),
            Row(
              //margin: EdgeInsets.only(top: 5.0),
              children: [
                Icon(Icons.star, color: amarillo, size: 16),
                Text('4,8',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    )),
                // Text('12 valoraciones', style:
                //   TextStyle(
                //     color: gris,
                //     fontWeight: FontWeight.w600,
                //     fontSize: 13,
                // )),
                Container(
                  width: 80,
                  height: 18,
                  margin: EdgeInsets.symmetric(
                    horizontal: 5.0,
                  ),
                  child: RaisedButton(
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: Theme.of(context).accentColor,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text('Delivery', style: TextStyle(fontSize: 11))),
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(textHeader, Colors.black, FontWeight.bold, 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow),
          ],
        ),
      ),
    ],
  );
}

Widget _populares(BuildContext context, String foto) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                image: NetworkImage(foto),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: headerText('Pizzería Presto', Colors.black, FontWeight.bold, 17.0),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      'Calle Perú 980 Cercado', style: TextStyle(
                      color: gris, 
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),),
                  ),

                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.0,),
                      Text(
                        '4.5', style: TextStyle(
                        color: Colors.black, 
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0,),
                      ),
                      // Text(
                      //   '12 valoraciones', style: TextStyle(
                      //   color: gris, 
                      //   fontWeight: FontWeight.w500,
                      //   fontSize: 13.0,),
                      // ),
                      Container(
                        margin: EdgeInsets.only(left: 35.0),
                        width: 110.0,
                        height: 18.0,
                        child: RaisedButton(
                          elevation: 0.5,
                          shape: StadiumBorder(),
                          color: Theme.of(context).accentColor,
                          onPressed: (){

                          },
                          child: Text('Delivery', style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.white,
                          ),),
                        ),
                      )
                    ],
                  )
                  
                ],),
            )
          ],
        ),
      ),
    ],
  );
}


Widget _sliderCollections(){
  return Container(
    height: 200.0, //sin esto no funca IMPORTANTE
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjetaCollections(context);
            }
          );
      },
    ),
  );
}

Widget _tarjetaCollections(BuildContext context){
  return Container (
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage('https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ),
        ),
      ],
    ),
  );
}