import 'package:flutter/material.dart';
import 'package:spotcation/features/timeline/screens/timeline_feed_screen.dart';  // 타임라인 피드 화면
import 'package:spotcation/features/create/screens/create_spot_screen.dart';     // 생성하기 화면
import 'package:spotcation/features/search/screens/search_screen.dart';         // 검색 화면
import 'package:spotcation/features/mypage/screens/my_page_screen.dart';         // 마이페이지 화면
import 'package:spotcation/core/widgets/bottom_nav_bar.dart';  // BottomNavBar 위젯

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotcation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MapScreen(), // 시작 화면: 지도 피드
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  int _selectedIndex = 0;

  // 네비게이션 버튼을 클릭했을 때 호출되는 함수
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // 선택된 인덱스에 맞는 화면 반환
  Widget _getScreen() {
    switch (_selectedIndex) {
      case 0:
        return MapFeedScreen();  // 지도 피드 화면
      case 1:
        return TimelineFeedScreen();  // 타임라인 피드 화면
      case 2:
        return CreateSpotScreen();  // 생성하기 화면
      case 3:
        return SearchScreen();  // 검색 화면
      case 4:
        return MyPageScreen();  // 마이페이지 화면
      default:
        return MapFeedScreen();  // 기본적으로 지도 피드 화면
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spotcation'),
      ),
      body: _getScreen(), // 선택된 화면을 표시
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped, // 탭 클릭 시 화면 변경
      ),
    );
  }
}

class MapFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '지도 피드 화면',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
