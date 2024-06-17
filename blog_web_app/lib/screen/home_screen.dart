import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {

  WebViewController webViewController = WebViewController()
  ..loadRequest(Uri.parse('https://blog.codefactory.ai'))

  ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Blog with me'),
        titleTextStyle: TextStyle(color: Colors.white),
        centerTitle: true,

        // AppBar에 액션 버튼을 추가할 수 있는 매개변수
        actions: [
          IconButton(
              // 아이콘을 눌렀을 때 실행할 콜백 함수
              onPressed: (){

                // 웹뷰 위젯에서 사이트 전환하기
                webViewController.loadRequest(Uri.parse('https://blog.codefactory.ai'));
              },

              // 홈버튼 아이콘 설정

              icon: Icon(
                Icons.home,
              )
          )
        ],

      ),

      body: WebViewWidget(
        controller: webViewController,
      ),

    );
  }
}
