import 'package:flutter/material.dart';
import 'package:flutter_starbucks/repository/starbuck_repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // 여기 안에 제이슨 을 사용
import 'models/supplier.dart';
import 'package:location/location.dart';


class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {

  final _repository = StarbucksRepository();
  final topMenuStrings = ['DT', '리저브', '블론드', '나이트로 콜드브루', '자차가능'];  // 배열을 만듦


  // 빈 리스트를 선언함
  List<Supplier> items = [];  // item이라는 이름의 List 또는 배열을 만들건데, Supplier라는 타입을 담을거야!
  List<Supplier> filteredItems = [];

  // 로케이션
  LocationData currentLocation;  // 참조타입 LocationData 객체와 연결시킬 참조변수 currentLocation을 생성

  Location location = Location();  // 참조타입 Location의 location이라는 변수명에 Location()객체를 생성할거야!

  @override  // override의 뜻은 함수재정의 하겠다란 뜻 : 부모 클래스에 정의된 initState()함수를 재정의 할거야!
  void initState() {
    // 여러번 호출 됨
    super.initState();  // 부모의 정의된 initSate()함수를 수행해라! = 기존걸 그냥 할거야!

    _repository.queryStore().then((stores){
      setState(() {
        items = stores;
        filteredItems = items;
      });
    }); // 아래 나오는 queryProduct()함수를 수행!

    // Platform messages may fail, so we use a try/catch PlatformException.
    getLocation();  // getLocation함수를 수행!
  }

  //  위에 initState함수에서 super.initSate() / queryProduct() / getLocation()을 순차로 명령은 했지만, sync때문에 병렬처리됨 -> 다른일들을 동시에 처리할수 있게됨.

  Future getLocation() async { // 비동기로 처리하는 getLocation함수 선언
    try {
      currentLocation = await location.getLocation();
      print('${currentLocation.latitude}, ${currentLocation.longitude}');
    } catch (e) {
      print('에러');
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('매장검색'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(

              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: '검색'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _buildItems(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildItem(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 메뉴쪽
  _buildItems() {
    return topMenuStrings.map((text) {
      // map (함수정의) = 리스트에 있는 항목을 변화 시키자!
      return Padding(
        padding: EdgeInsets.all(4.0),
        child: RaisedButton(
          child: Text(text),
          color: Colors.white,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          onPressed: () {},
        ),
      );
    }).toList();
  }


  // 커피리스트쪽을 끌고 옴
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
                  'https://www.incimages.com/uploaded_files/image/970x450/getty_866530680_396044.jpg'), // url 넣기
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
                    items[index].branch,
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
                items[index].address,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.amberAccent,
                ),
              ),
              Text(
                '100m',
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
