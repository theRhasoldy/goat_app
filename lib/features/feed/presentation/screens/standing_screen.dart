import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FootballStandingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Football Standings'),
      ),
      body: WebView(
        initialUrl: Uri.dataFromString(
          '''
          <!DOCTYPE html>
          <html lang="en">
          
          <head>
            <meta charset="UTF-8">
            <title>Football Standings Widget Example</title>
          </head>
          
          <body>
            <div id="wg-api-football-standings"
              data-host="v3.football.api-sports.io"
              data-key="cad2a28d9c7384611d1aaaf4643623a2"
              data-league="39"
              data-team=""
              data-season="2021"
              data-theme=""
              data-show-errors="false"
              data-show-logos="true"
              class="wg_loader">
            </div>
          
            <script type="module" src="https://widgets.api-sports.io/2.0.3/widgets.js"></script>
          </body>
          
          </html>
          ''',
          mimeType: 'text/html',
          encoding: Encoding.getByName('utf-8'),
        ).toString(),
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
