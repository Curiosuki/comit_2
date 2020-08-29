import 'package:flutter/material.dart';
import 'package:flutter_starbucks/repository/starbuck_repository.dart';
import 'models/coffee.dart';


class DrinkPage extends StatefulWidget {
  @override
  _DrinkPageState createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {

  final _repository = StarbucksRepository();

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  List<Coffee> items = [];

  @override
  void initState() {    // 여러번 호출 됨
    super.initState();

    _repository.queryProduct().then((products) {
      setState(() {
        items = products;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildItem(index);
        });
  }

  Widget _buildItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.incimages.com/uploaded_files/image/970x450/getty_866530680_396044.jpg'),  // url 넣기
                      ),
                    ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    items[index].name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.card_giftcard,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Text(
                items[index].menuCategory,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.amberAccent,
                ),
              ),
              Text(
                '${items[index].price}원',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
