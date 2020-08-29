import 'package:flutter/material.dart';

class MainFlutter extends StatefulWidget {
  @override
  _MainFlutterState createState() => _MainFlutterState();
}

class _MainFlutterState extends State<MainFlutter> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
          new EntryItem(data[index]),
      itemCount: data.length,
    );
  }
}

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  new Entry(
    '01. 기본위젯',
    <Entry>[
      new Entry(
        '(1) 텍스트',
        <Entry>[
          new Entry('- TEXT'),
          new Entry('- RICHTEXT'),
        ],
      ),
      new Entry(
        '(2) 아이콘',
        <Entry>[
          new Entry('- ICON'),
          new Entry('- ICONBUTTON'),
        ],
      ),
      new Entry(
        '(3) 버튼',
        <Entry>[
          new Entry('- RaisedButton'),
          new Entry('- FlatButton'),
          new Entry('- OutlineButton'),
          new Entry('- FloatingButton'),
          new Entry('- Inkwell'),
          new Entry('- Tooltip'),
        ],
      ),
      new Entry(
        '(4) 이미지',
        <Entry>[
          new Entry('- Asset'),
          new Entry('- Network'),
        ],
      ),
    ],
  ),
  new Entry(
    '02. 그릇위젯',
    <Entry>[
      new Entry(
        '(1) 박스와 카드',
        <Entry>[
          new Entry('- SizedBox'),
          new Entry('- ContrainedBox'),
          new Entry('- FittedBox'),
          new Entry('- FrationallySizedBox'),
          new Entry('- Card'),
        ],
      ),
      new Entry(
        '(2) 컨테이너와 박스데코레이션',
        <Entry>[
          new Entry('- Container'),
          new Entry('- BoxDecoration - border'),
          new Entry('- BoxDecoration - image'),
          new Entry('- BoxDecoration - border'),
          new Entry('- BoxDecoration - borderRadius'),
          new Entry('- BoxDecoration - borderShadow'),
          new Entry('- BoxDecoration - LinearGradient'),
          new Entry('- BoxDecoration - RadialGradient'),
          new Entry('- BoxDecoration - SweepGradient'),
          new Entry('- BoxDecoration - backgroundBlendMode(1)'),
          new Entry('- BoxDecoration - backgroundBlendMode(2)'),
        ],
      ),
      new Entry(
        '(3) 클립핑과 원형',
        <Entry>[
          new Entry('- ClipRRect'),
          new Entry('- CircleAvartar'),
        ],
      ),
      new Entry(
        '(4) 열과 행',
        <Entry>[
          new Entry('- Row'),
          new Entry('- Column'),
          new Entry('- Expanded'),
          new Entry('- Wrap'),
          new Entry('- Stack'),
        ],
      ),
    ],
  ),
  new Entry(
    '03. 조정과 구분',
    <Entry>[
      new Entry('- Center'),
      new Entry('- Align'),
      new Entry('- Padding'),
      new Entry('- AspectRatio'),
      new Entry('- Divider'),
      new Entry('- Spacer'),
    ],
  ),
  new Entry(
    '04. 뷰 위젯',
    <Entry>[
      new Entry(
        'List',
        <Entry>[
          new Entry('- ListView'),
          new Entry('- ListBody'),
          new Entry('- ListTile'),
          new Entry('- ListView.Builder'),
        ],
      ),
      new Entry(
        'Expansion',
        <Entry>[
          new Entry('- ExpansionPanel'),
          new Entry('- ExpansionTile'),
        ],
      ),
      new Entry('SingleChildScrollView'),
      new Entry('GridView'),
      new Entry('PageView'),
    ],
  ),
  new Entry(
    '05. 고급 위젯',
    <Entry>[
      new Entry(
        'Animation',
        <Entry>[
          new Entry('- Hero'),
          new Entry('- Staggered'),
        ],
      ),
      new Entry(
        'Sliver',
        <Entry>[
          new Entry('- CustomScrollView'),
          new Entry('- NestedScrollView'),
          new Entry('- SliverAppBar'),
          new Entry('- SliverList'),
          new Entry('- SliverFixedExtentList'),
          new Entry('- SliverGrid'),
          new Entry('- SliverPersistentHeader'),
        ],
      ),
    ],
  ),
  new Entry(
    '06. 데이터',
    <Entry>[
      new Entry(
        'Future',
        <Entry>[
          new Entry('- Future / then'),
          new Entry('- Future / async/await'),
        ],
      ),
      new Entry(
        'Stream',
        <Entry>[
          new Entry('- Stream'),
          new Entry('- StreamBuilder'),
        ],
      ),
      new Entry('Provider',
        <Entry>[
          new Entry('- Provider'),
          new Entry('- Consumer'),
        ],),
    ],
  ),
  new Entry(
    '07. 폼',
    <Entry>[
      new Entry('- Form'),
      new Entry('- FormField'),
      new Entry('- TextField'),
      new Entry('- TextInput'),
    ],
  ),
  new Entry(
    '08. 기타',
    <Entry>[
      new Entry('- Stepper'),
      new Entry('- Slider'),
      new Entry('- Chip'),
      new Entry('- DayPicker'),
      new Entry('- SnackBar'),
      new Entry('- BottomSheet'),
      new Entry('- SimpleDialog'),
      new Entry('- AlertDialog'),
      new Entry('- Popup'),
      new Entry('- CheckBox'),
      new Entry('- CheckBoxListTile'),
      new Entry('- Switch'),
      new Entry('- SwitchListTile'),
      new Entry('- Radio'),
      new Entry('- RadioListTile'),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    const flutterlogo_trasparent = CircleAvatar(
      backgroundImage: AssetImage('assets/images/flutterlogo.png'),
    );

    if (root.children.isEmpty) return new ListTile(title: new Text(root.title));
    return new ExpansionTile(
      key: new PageStorageKey<Entry>(root),
      title: new Text(root.title),
      leading: flutterlogo_trasparent,
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
