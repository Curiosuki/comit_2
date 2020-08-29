import 'package:flutter/material.dart';
import 'package:thememaker/model/note_model.dart';
import 'package:zefyr/zefyr.dart';


class EditorPage extends StatefulWidget {
  /*------------------------------------------------------------------*/

  final Function add;
  final Function update;
  final int noteIndex;
  final Note note;
  EditorPage({this.add, this.update, this.noteIndex, this.note});

  @override
  _EditorPageState createState() => _EditorPageState();
}

  /*------------------------------------------------------------------*/

  class _EditorPageState extends State<EditorPage> {

  /*------------------------------------------------------------------*/

  ZefyrController _editorController;
  TextEditingController _titleController;
  /// Zefyr editor like any other input field requires a focus node.
  FocusNode _focusNode;
  NotusDocument _document;

  @override

  /*------------------------------------------------------------------*/

  void initState() {
    super.initState();
    _document = _loadDocument();
    _titleController = _loadTitle();
    _editorController = ZefyrController(_document);
    _focusNode = FocusNode();
  }

  /*------------------------------------------------------------------*/

  NotusDocument _loadDocument() {
    // If in edit mode then load the provided document
    return widget.note != null ? widget.note.document : NotusDocument();
  }

  /*------------------------------------------------------------------*/

  TextEditingController _loadTitle() {
    // If in edit mode then load the provided title
    return widget.note != null
        ? TextEditingController(text: widget.note.title)
        : TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    // Zefry 부분
    double screenHeight = MediaQuery.of(context).size.height;
    // To make the editor height responsive
    double editorHeight = screenHeight * 0.5;

    /*------------------------------------------------------------------*/

    final editor = ZefyrField(
      height: editorHeight, // set the editor's height
      controller: _editorController,
      focusNode: _focusNode,
      autofocus: false,
      decoration: InputDecoration(
        hintText: '노트내용',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      physics: ClampingScrollPhysics(),
    );
    /*------------------------------------------------------------------*/

    final titleField = TextField(
      controller: _titleController,
      decoration: InputDecoration(
        hintText: '노트제목',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
    //
    /*------------------------------------------------------------------*/

    final form = Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            titleField,
            editor
          ],
        ),
      ),
    );

    /*------------------------------------------------------------------*/

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Code Doc",
        ),
        centerTitle: true,

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () => _saveDocument(context),
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => _clearDocument(context),
          ),
        ],
      ),
      body: ZefyrScaffold(child: form),
    );

    /*------------------------------------------------------------------*/

  }
  void _saveDocument(BuildContext context) {
    final NotusDocument doc = _editorController.document;
    final String title = _titleController.text;
    final Note note = Note(title: title, document: doc);
    // Check if we need to add new or edit old one
    if (widget.noteIndex == null && widget.note == null) {
      widget.add(note);
    } else {
      widget.update(widget.noteIndex, note);
    }
    Navigator.pop(context);
  }

  /*------------------------------------------------------------------*/

  void _clearDocument(BuildContext context) async {
    bool confirmed = await _getConfirmationDialog(context);
    if (confirmed) {
      _editorController.replaceText(
          0, _editorController.document.length - 1, '');
    }
  }

  /*------------------------------------------------------------------*/

  Future<bool> _getConfirmationDialog(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible:
      false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('삭제'),
          content: Row(
            children: <Widget>[
              Expanded(
                child: Text('내용 전체를 삭제하시겠습니까?'),
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('취소'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            FlatButton(
              child: Text('예'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }
  /*------------------------------------------------------------------*/

}
