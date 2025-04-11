import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 회원가입 로직 구현 (나중에 추가)
            print('회원가입 진행');
          },
          child: Text('회원가입 진행'),
        ),
      ),
    );
  }
}
