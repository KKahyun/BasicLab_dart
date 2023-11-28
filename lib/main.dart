import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//가보자고(거의 완성 코드)
/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //DEBUG 없애기
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          // 뒤로가기 아이콘
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // 뒤로가기 동작 추가
            },
            color: Colors.black, // 아이콘 색상을 검정색으로 설정
          ),
          title: Text(
            "둔산 종합 사회복지관",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 내용들
              Text(
                "위치 : 대전광역시 서구 둔산로 241",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 9.0), // 간격 추가
              Text(
                "제공 시간 : 오전 11:30 - 오후 1:30",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 9.0), // 간격 추가
              Text(
                "제공 요일 : 월, 화, 수, 목, 금",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 9.0), // 간격 추가
              Text(
                "제공 대상 : 60세 이상 기초수급자 + 차상위계층",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 9.0), // 간격 추가
              Text(
                "급식소 전화번호 : 042-482-2032",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60.0),

              // "위치" 텍스트 추가
              Text(
                "위치",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),

              // 지도 혹은 사진을 받아올 수 있는 공간
              Container(
                // 여기에 지도나 이미지를 표시하는 위젯을 추가할 수 있습니다.
                // 예: Image.network("URL") 또는 Google Maps API 등을 사용
                width: double.infinity,
                height: 280.0, // 적절한 높이로 조절
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("image/location.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 95.0,), // 간격 추가

              // 회색 선 추가
              Container(
                height: 1.0, // 높이 1.0으로 설정하여 얇은 선을 만듭니다.
                color: Colors.grey[400], // 회색 선 색상
                // 지도나 이미지를 표시하는 위젯 추가
                // Image.network("URL") 또는 Google Maps API 등을 사용
              ),

              // Spacer 추가하여 버튼과 텍스트가 화면 최하단에 위치하도록 함
              Spacer(),

              // "길 찾기" 버튼 및 거리 텍스트
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "200m",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1AB65C), // 녹색
                    ),
                  ),

                  SizedBox(width: 35.0),
                  ElevatedButton(
                    onPressed: () { // 길 찾기 버튼 동작 추가
                      // 길 찾기 버튼 클릭 시 지도 페이지로 이동
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MapPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF1AB65C), // 녹색
                      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 8.0), // 버튼 크기 조절
                    ),
                    child: Text(
                      "길 찾기",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("지도 페이지"),
      ),
      body: SingleChildScrollView( // 스크롤 가능하도록 변경
        child: Center(
          // 여기에 실제 지도를 표시하는 위젯 추가
          child: Image.asset("image/map_image.png"), // 실제 지도 이미지의 경로를 지정
        ),
      ),
    );
  }
}
 */

//지도 페이지 색만 바꾸도록 요청한 코드
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        title: Text(
          "둔산 종합 사회복지관",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "위치 : 대전광역시 서구 둔산로 241",
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 9.0),
            Text(
              "제공 시간 : 오전 11:30 - 오후 1:30",
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 9.0),
            Text(
              "제공 요일 : 월, 화, 수, 목, 금",
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 9.0),
            Text(
              "제공 대상 : 60세 이상 기초수급자 + 차상위계층",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 9.0),
            Text(
              "급식소 전화번호 : 042-482-2032",
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 60.0),

            Text(
              "위치",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),

            Container(
              width: double.infinity,
              height: 280.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("image/location.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 95.0),

            Container(
              height: 1.0,
              color: Colors.grey[400],
            ),

            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "6.2km",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1AB65C),
                  ),
                ),
                SizedBox(width: 30.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1AB65C),
                    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 8.0),
                  ),
                  child: Text(
                    "길 찾기",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("지도 페이지"),
        backgroundColor: Color(0xFF1AB65C), // 상단 부분의 색 변경
        actions: [
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {
              // 전화 연결 동작 추가
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "둔산 종합 사회복지관",
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "대전광역시 서구 둔산로 241",
                    style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "급식소 전화번호 : 042-482-2032",
                    style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Image.asset("image/map_image.png"),
          ],
        ),
      ),
    );
  }
}




