import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  BottomNavBar({required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
         backgroundColor: Colors.blue,  // 네비게이션 바 배경 색상
      selectedItemColor: Colors.white,  // 선택된 아이템 색상
      unselectedItemColor: Colors.grey,  // 선택되지 않은 아이템 색상
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: '지도 피드',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timeline),
          label: '타임라인 피드',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: '생성하기',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '검색',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: '마이페이지',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped, // 탭 클릭 시 화면 전환
    );
  }
}
