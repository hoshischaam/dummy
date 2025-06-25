import 'package:flutter/material.dart';
import 'package:wisatabandung/model/tourism_place.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');
//final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

class DetailScreen extends StatefulWidget {
  final TourismPlace place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // String? language;
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        title: const Text('Ini Navbar'),
        titleTextStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
        backgroundColor: Colors.blueAccent,

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white, size: 30.0),

            onPressed: () {},
          ),
        ],

        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white, size: 30.0),

          onPressed: () {},
        ),
      ),
*/
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  widget.place.imageAsset,
                  width: double.infinity,
                  height: 250.0,
                  fit: BoxFit.cover,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          // radius: 25.0,
                          backgroundColor: Colors.black54,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              // padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                widget.place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Oswald',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today, size: 30.0),

                      const SizedBox(height: 8.0),

                      Text(widget.place.openDays, style: informationTextStyle),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      const Icon(Icons.access_time, size: 30.0),

                      const SizedBox(height: 8.0),

                      Text(widget.place.openTime, style: informationTextStyle),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      const Icon(Icons.monetization_on, size: 30.0),

                      const SizedBox(height: 8.0),

                      Text(
                        widget.place.ticketPrice,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),

              child: Text(
                widget.place.description,
                textAlign: TextAlign.center,
                style: informationTextStyle.copyWith(
                  fontSize: 16.0,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.place.imageUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        widget.place.imageUrls[index],
                        width: 150.0,
                        height: 250.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),

            /*      Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  '12345',
                  textAlign: TextAlign.center,
                  style: informationTextStyle.copyWith(
                    fontSize: 16.0,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  '1234',
                  textAlign: TextAlign.center,
                  style: informationTextStyle.copyWith(
                    fontSize: 16.0,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  '123',
                  textAlign: TextAlign.center,
                  style: informationTextStyle.copyWith(
                    fontSize: 16.0,
                    height: 1.5,
                  ),
                ),
              ),
            ),  */

            /* 
            ElevatedButton(child: const Text("Tombol"), onPressed: () {}),

             OutlinedButton(
              child: const Text('Outlined Button'),

              onPressed: () {}, 
            ), */
            /*    Container(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'aassets/bosscha.jpg',
                  width: 200,
                  height: 200,
                ),
              ),    
            ),*/

            /*
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  items: const <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                      value: 'Dart',
                      child: Text('Dart'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Kotlin',
                      child: Text('Kotlin'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Swift',
                      child: Text('Swift'),
                    ),
                  ],
                  value: language,
                  hint: const Text('Select Language Programming'),
                  onChanged: (String? value) {
                    setState(() {
                      language = value;
                    });
                    print('Selected: $value');
                  },
                ),
              ),
            ), */
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Full Name',
                      labelText: 'Full Name',
                    ),
                    onChanged: (String value) {
                      setState(() {
                        _name = value;
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(content: Text('Welcome, $_name!'));
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            /*
            SizedBox(
              height: (250 + 16.0) * numberList.length,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: numberList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Text(
                        '${numberList[index]}',
                        style: const TextStyle(fontSize: 50),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            ),    */
          ],
          //  ),
        ),
        // ),

        /* child: Container(

padding: const EdgeInsets.all(10.0),

decoration: BoxDecoration(

color: Colors.blueAccent,

border: Border.all(color: Colors.grey, width: 3),

borderRadius: BorderRadius.circular(10),

),

child: const Text('Ini', style: TextStyle(fontSize: 30)),

), */

        //const Center(child: Text("Ini Body")),
        /*  floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),

        onPressed: () {},
      ),
      */
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
