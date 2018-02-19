## Introduction 
[Flutter](https://flutter.io/) is a brand new mobile app SDK made by Google.
It is meant to help developers and designers build modern apps for Android and IOS.

I discovered Flutter a couple months ago while browsing Youtube. It only took me a few minutes to go from watching that initial video on flutter to downloading and installing it for myself. 

Flutter has one of the easiest and painless installation processes. You simply clone the GitHub repo and run there Flutter Doctor tool, it is a breeze. 
For more information on how to install Flutter for your system see: https://flutter.io/setup/


In this series, we are going to build a UI clone of the popular messaging app [WhatsApp](https://www.whatsapp.com/). 
WhatsApp is an amazing app which allows users to quickly message and call loved ones for free.

Using Flutter, we're able to quickly build the layout of WhatsApp with relative ease.


### Getting Started 

Firstly, we create a new Flutter project using there handy CLI. 
```BASH
$ flutter create whatsapp_ui_clone
```
This will generate the project files for both Android and IOS 

Now that the project has been generated, cd into the project folder and run Flutter run
```BASH
$ cd whatsapp_ui_clone &&  Flutter run 
```
By default, Flutter generates a Counter application so if everything went well, you should see this on your device. 

![alt text](https://github.com/Neevash/flutter-whatsapp-ui-clone/blob/master/screenshots/counter.png "Logo Title Text 1")

<br/>
Now that the app is running, let's navigate to the ```lib``` folder and open ```main.dart```.
Here you can see the code for the default app. We are going to remove everything so that we are left with a blank file.

Let's start by importing flutter's material package. This package contains a set of pre-made widgets which are designed following  Google's material design guidelines.

```Dart
import 'package:flutter/material.dart';
```
Great! with the package imported, we now move on to the ```main``` function. This is the first thing that runs when the app is launched.


In ```main.dart```,  we add the lines 
```Dart
void main(){

}
```

Next, we specify the runApp method inside of ```main```
```Dart
void main(){
    runApp(
    
  );
}
```

In ```runApp```, we create a new instance of MaterialApp. This will be the parent widget of our app. 

```Dart
void main() {
runApp(
  new MaterialApp(
    
  ));
}
```

<br/>
The widget MaterialApp can be assigned a few properties. For our purposes, we are only going to be using the home, theme and title. Modify the existing code so that it looks like this.

```Dart 
void main() {
runApp(
  new MaterialApp(
    home: new WhatsAppUiClone(),                     //new 
    title: 'WhatsApp',                                           // new 
    theme: new ThemeData(                              //new
      primaryColor: new Color(0xff075E54),       //new
      accentColor: new Color(0xff25D366),       //new
    ),
  ));
}
```
The above code sets a few properties for our app. Title gives the app its title, home assigns it a homepage and theme sets some global style rules.




<br/>

Time to create the ```WhatsAppUiClone``` class. 
Under the  ```main``` method, we create a new class called ```WhatsAppUiClone``` and have it extend the StatefulWidget. 

```Dart
class WhatsAppUiClone extends StatefulWidget {
  _WhatsAppUiClone createState() => new _WhatsAppUiClone();
}

class _WhatsAppUiClone extends State<WhatsAppUiClone> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    );
  }
}
```
In Flutter, there are two types of widgets, *Stateful* and *Stateless*. The above code uses the Stateful variant. As you can see, it is created in three steps. First, on line 1, the class name is defined followed by the keywords  ``` Extends StatefulWidget ```. Then on line two, the state is created. Finally, on line five another class is created, this time using the name used to create the state. This class extends the *State*.

<br/>

With most of the boilerplate out of the way, we can now move onto creating the appBar. 
In ```_WhatsAppUiClone```, add the following lines

```Dart
class _WhatsAppUiClone extends State<WhatsAppUiClone> with SingleTickerProviderStateMixin { //modified
  TabController _tabcontroller; //new 
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
    );
  }
}
```
Fantastic! with just a few lines of code, and a little modification, we have created a material app bar with a bottom navigation tabs. The class is modified to include ```SingleTickerProviderStateMixin``` which is an animation property used by the TabBar.
Next, we returned a new *Scaffold* which is a widget from the material package. A Scaffold provides us different API's for adding different features to our app such as an AppBar, Tabs, Drawer, etc... To learn more, see https://docs.flutter.io/flutter/material/Scaffold-class.html.

Inside the Scaffold, we use the appBar property to create a material app bar. The background color is then set to the primary color defined earlier in the *theme* property of our MaterialApp widget. As part of the appBar, we use the bottom property to create a TabBar. The TabBar takes in a few properties such as the indicator color, a controller with we also defined and *tabs*. *Tabs* takes an array if widgets of type *Tab*. 
The four tabs are set here. 

<br/> 

With that out of the way, it's time for us to create our different pages. 
For now, we will just create a widget which displays some text.
In our ```lib``` folder, create a new folder called ```pages```.
Inside of ```pages``` we create four called ```call_history.dart```,  ```camera_page.dart```, ```chat_screen.dart``` and ```status_page.dart```. These files will be the  different tab bodies. 

For call_history, we add the following lines 
```Dart 
import 'package:flutter/material.dart';

class CallHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child: new Text('Time to make history...', style: new TextStyle(fontSize: 20.0),),
      )
    );
  }
}
```

<br/>

In camera_page we add 

```Dart 
import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child: new Text('Camera Here!  ', style: new TextStyle(fontSize: 20.0),),
      )
    );
  }
}
```

<br/>



For chat_screen

```Dart 
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child: new Text('Red Squadron report in... ', style: new TextStyle(fontSize: 20.0),),
      )
    );
  }
}
```

<br/>


Finally for status_page 
```Dart 
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child: new Text('Red Five reporting...', style: new TextStyle(fontSize: 20.0),),
      )
    );
  }
}
```

<br/>

With all the components in place, it's time to wire things up and look at the results. 
Back in ```main.dart```, modify the file so that it looks like this 
```Dart
import 'package:flutter/material.dart';
import './pages/camera_page.dart' ; //new
import './pages/chat_screen.dart' ;  //new
import './pages/status_page.dart' ; //new
import './pages/call_history.dart' ;  //new

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

 //new
  @override
  void initState() {
    super.initState();
    _tabcontroller = new TabController(
      vsync: this,
      length: 4,
    );
  }

 //new
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
     //new
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

```
Starting from the top and working our way down, we imported the four files we just created into *main.dart*. Next, we override two of Flutter's [lifecycle](https://flutter.io/widgets-intro/#responding-to-widget-lifecycle-events) methods. In the [initState](https://docs.flutter.io/flutter/widgets/State-class.html#initState) method, we set the ```_tabcontroller``` we created earlier to a new TabController. The number of tabs was set here. 
Moving further down, we again override a lifecycle method, this time the [dispose](https://docs.flutter.io/flutter/widgets/State-class.html#dispose).
Finally, in the ```Scaffold```, we used the body property and set it to a new TabBarView. The TabBarView used the same controller as before and took in the four different classes we created as its children.

<br/>
Now if all went according to plan, the result should look like this 
[![IMAGE ALT TEXT](https://i9.ytimg.com/vi/ExGcq8baD5I/default.jpg?sqp=CISuqNQF&rs=AOn4CLBNuZmC639KVo4z24b4VS9iJJZJNA)](https://youtu.be/ExGcq8baD5I "Result")


### Conclusion 
As you can see, it takes very little for you to get up and going with Flutter. 
This is part one of a series I am planning to do. The next part may be released sometime during the next week. It all depends on how much homework I have.

If you spotted any errors or have any suggestions, feel free to send me a message or leave a comment. 

- Nash 

