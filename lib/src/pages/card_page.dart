import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final String imageUrl =
      'https://lh3.googleusercontent.com/proxy/3layle9MDgK-ONgN1d2ub4EHEf8CNn8t2m2w_EMzMEM7BgyWMMRolzPsi1D73MxUOWKlKh9kn1FQMW5_bKGw57xCWJvjHK50M1uJE3SUjrGEemrkSgPUgUcpVKdp8ABy8OHLYj55kTkw7ubDLkU';

  final images = [
    'https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3BhY2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://p4.wallpaperbetter.com/wallpaper/801/462/396/5bd28f177c562-wallpaper-preview.jpg',
    'https://wallpapercave.com/wp/wp2005597.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        children: <Widget>[
          _cardt1(img: images[0]),
          SizedBox(
            height: 30,
          ),
          _cardt2(img: images[1]),
          SizedBox(
            height: 30,
          ),
          _cardt3(img: images[2]),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget _cardt1({String img}) {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
              image: NetworkImage(img != null ? img : imageUrl),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 300),
              height: 300,
              fit: BoxFit.cover),
          ListTile(
            leading: Icon(Icons.assistant_photo, color: Colors.cyanAccent),
            title: Text('Una persona escribió esto...'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardt2({String img}) {
    final card = Container(
        child: Column(
      children: <Widget>[
        FadeInImage(
            image: NetworkImage(img != null ? img : imageUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 300,
            fit: BoxFit.cover),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Deep Space'),
        )
      ],
    ));

    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: card,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, offset: Offset(0, 10.0), blurRadius: 15),
        ],
      ),
    );
  }

  Widget _cardt3({String img}) {
    final content = Container(
      child: Row(
        children: [
          FadeInImage(
            image: NetworkImage(img != null ? img : imageUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 300),
            width: 150,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Nueva Card',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text('Lorem Ipsum Dolor Sit amet, wakanda dijo la changa')
              ],
            ),
          ),
        ],
      ),
    );

    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        child: content,
        borderRadius: BorderRadius.circular(10.0),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.blue),
        boxShadow: [
          BoxShadow(
            color: Colors.blue[100],
            offset: Offset(0, 20.0),
            blurRadius: 10,
          ),
        ],
      ),
    );
  }
}
