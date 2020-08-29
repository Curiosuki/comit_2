
import 'package:flutter/foundation.dart';


// object를 생성함
class JoinOrLogin extends ChangeNotifier{  // 상태 flag
  bool _isJoin = false; //
  bool get isJoin => _isJoin;
  void toggle(){
    _isJoin = !_isJoin;
    notifyListeners(); // 데이터 변경된걸 알려줌
  }
}