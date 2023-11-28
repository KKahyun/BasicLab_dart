// 전화 연결 페이지 만들기

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //DEBUG 없애기
      title: 'Flutter Demo',
      home: PhoneCallScreen(),
    );
  }
}

//이게 제일 나음
/*
class PhoneCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color(0xFF273F55),
              child: Center(
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius : BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 프로필 원과 텍스트
                  Container(
                    width: 130.0,
                    height: 130.0,
                    margin: EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    // 프로필 사진이 들어갈 부분입니다.
                  ),
                  // "둔산 종합 사회 복지관" 텍스트
                  Text(
                    "둔산 종합 사회 복지관",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  // "전화 연결 중..." 텍스트
                  Text(
                    "전화 연결 중...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 19.0,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  // 버튼 영역
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // 음소거 버튼
                      ElevatedButton(
                        onPressed: () { // 음소거 버튼 동작 추가
                          print("음소거 되었습니다");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Icon(Icons.mic_off, color: Colors.white),
                        )
                      ),
                      // 전화 연결 버튼
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          gradient: LinearGradient(
                            colors: [Color(0xFFEC4545), Color(0xFFE82222)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {// 전화 연결 버튼 동작 추가
                            //전화 연결 버튼 클릭 시 현재 화면을 닫음
                            Navigator.pop(context); //현재 화면을 닫고 이전 화면으로 돌아가는 동작
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(22.0),
                            child: Icon(Icons.call, color: Colors.white, size: 50.0),
                          ),
                        ),
                      ),
                      // 소리 버튼
                      ElevatedButton(
                        onPressed: () {
                          // 소리 버튼 동작 추가
                          print("소리가 켜졌습니다");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Icon(Icons.volume_up, color: Colors.white),
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 */

// 색 및 아이콘 변환 잘 됨
// 멘트도 클릭에 따라 잘 뜸
class PhoneCallScreen extends StatefulWidget {
  @override
  _PhoneCallScreenState createState() => _PhoneCallScreenState();
}

class _PhoneCallScreenState extends State<PhoneCallScreen> {
  bool isMuted = false;
  bool isSoundOn = true;

  void showMuteUnmuteMessage() {
    final message = isMuted ? "음소거 되었습니다" : "음소거 해제되었습니다";
    _showMessage(message);
  }

  void showSoundMessage() {
    final message = isSoundOn ? "소리가 켜졌습니다" : "소리가 꺼졌습니다";
    _showMessage(message);
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color(0xFF273F55),
              child: Center(),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130.0,
                    height: 130.0,
                    margin: EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    "둔산 종합 사회 복지관",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    "전화 연결 중...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 19.0,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isMuted = !isMuted;
                          });
                          showMuteUnmuteMessage();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: isMuted ? Colors.blue : Colors.grey,
                          shape: CircleBorder(),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Icon(
                            isMuted ? Icons.mic_off : Icons.mic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          gradient: LinearGradient(
                            colors: [Color(0xFFEC4545), Color(0xFFE82222)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(22.0),
                            child: Icon(Icons.call, color: Colors.white, size: 50.0),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isSoundOn = !isSoundOn;
                          });
                          showSoundMessage();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: isSoundOn ? Colors.blue : Colors.grey,
                          shape: CircleBorder(),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Icon(
                            isSoundOn ? Icons.volume_up : Icons.volume_off,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

