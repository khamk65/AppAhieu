import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ESP8266 Wi-Fi Config',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WifiConfigPage(),
    );
  }
}

class WifiConfigPage extends StatefulWidget {
  @override
  _WifiConfigPageState createState() => _WifiConfigPageState();
}

class _WifiConfigPageState extends State<WifiConfigPage> {
  late RawDatagramSocket socket;
  final TextEditingController ssidController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initSocket();
  }

  @override
  void dispose() {
    socket.close();
    super.dispose();
  }

  void _initSocket() async {
    socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, 0);
    socket.listen((event) {
      if (event == RawSocketEvent.read) {
        Datagram? datagram = socket.receive();
        if (datagram != null) {
          final message = String.fromCharCodes(datagram.data);
          print('Received: $message');
        }
      }
    });
  }

  void sendConfig() {
    final ssid = ssidController.text;
    final password = passwordController.text;
    final configMessage = '$ssid:$password';

    socket.send(
      Uint8List.fromList(configMessage.codeUnits),
      InternetAddress('ESP8266_IP_ADDRESS'), // Địa chỉ IP của ESP8266
      2390, // Port của ESP8266 để nhận tin nhắn cấu hình
    );

    print('Sent config: $configMessage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ESP8266 Wi-Fi Config'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: ssidController,
              decoration: InputDecoration(
                labelText: 'SSID',
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: sendConfig,
              child: Text('Send Config'),
            ),
          ],
        ),
      ),
    );
  }
}
