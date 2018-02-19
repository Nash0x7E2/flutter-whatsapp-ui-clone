import 'package:flutter/material.dart';
import './pages/camera_page.dart' ;
import './pages/chat_screen.dart' ; 
import './pages/status_page.dart' ;
import './pages/call_history.dart' ;

void main() {
runApp(
  new MaterialApp(
    home: new WhatsAppUiClone(),
    title: 'WhatsApp',
    theme: new ThemeData(
      primaryColor: new Color(0xff075E54),
      accentColor: new Color(0xff25D366),
    ),
  ));
}

class WhatsAppUiClone extends StatefulWidget {
  _WhatsAppUiClone createState() => new _WhatsAppUiClone();
}

class _WhatsAppUiClone extends State<WhatsAppUiClone>  with SingleTickerProviderStateMixin {
  TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = new TabController(
      vsync: this,
      length: 4,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: new Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabcontroller,
          indicatorColor: Colors.white,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: 'CHATS',),
            new Tab(text: 'STATUS',),
            new Tab(text: 'CALLS',)
          ],
        ),
      ),
    body: new TabBarView(
      controller: _tabcontroller,
      children: <Widget>[
        new CameraPage(),
        new ChatScreen(),
        new StatusScreen(),
        new CallHistory()

      ],
    ),
    );
  }
}
