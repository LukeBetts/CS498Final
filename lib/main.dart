import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
        title:'Login UI',
        theme:ThemeData(primarySwatch: Colors.blue),
        home:MyHomePage(title:'Gestalt Therapy with Briarwood Clinic'));
  }
}
class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}):super(key:key);
  final String title;
  @override
  _MyHomePageState createState()=>_MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  TextStyle style=TextStyle(fontFamily:'Montserrat',fontSize:23);
  @override
  Widget build(BuildContext context){
    final tokenfield=TextField(
      style:style,
      decoration:InputDecoration(
          contentPadding:EdgeInsets.fromLTRB(20,15,20,15),
          hintText:"Token",
          border:OutlineInputBorder(borderRadius:BorderRadius.circular(32))),
    );
    final passwordField=TextField(
      obscureText:true,
      style:style,
      decoration:InputDecoration(
          contentPadding:EdgeInsets.fromLTRB(20,15,20,15),
          hintText:"Password",
          border:OutlineInputBorder(borderRadius:BorderRadius.circular(32))),
    );
    final loginButton=Material(
      elevation:5,
      borderRadius:BorderRadius.circular(30),
      color:Color(0xff01A0C7),
      child:MaterialButton(
        minWidth:MediaQuery.of(context).size.width,
        padding:EdgeInsets.fromLTRB(20,15,20,15),
        onPressed:(){
          Navigator.push(
              context,MaterialPageRoute(builder:(context)=>MainPage()));
        },
        child:Text(
          "Login",
          textAlign:TextAlign.center,
          style:
              style.copyWith(color:Colors.white,fontWeight:FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        title:Text(widget.title),
      ),
      body:Center(
        child:Container(
          color:Colors.white,
          child:Padding(
            padding:const EdgeInsets.all(36),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.center,
              children:<Widget>[
                SizedBox(
                  height:1,
                ),
                SizedBox(
                  height:45,
                ),
                tokenfield,
                SizedBox(
                  height:25,
                ),
                passwordField,
                SizedBox(
                  height:35,
                ),
                loginButton,
                SizedBox(
                  height:15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        title:Text('Home Page'),
      ),
      body:SingleChildScrollView(
        child:Column(
          children:<Widget>[
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text('Click the drawer in the top left to view other pages or click the link below to log out.',
            style:TextStyle(fontSize:23),
            textAlign:TextAlign.center,
            ),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Material(
              elevation:5,
              borderRadius:BorderRadius.circular(30),
              color:Color(0xff01A0C7),
              child:MaterialButton(
                minWidth:MediaQuery.of(context).size.width,
                padding:EdgeInsets.fromLTRB(50,15,50,15),
                onPressed:(){
                  Navigator.pop(context);
                },
                child:Text(
                  "Logout",
                  style: TextStyle(color: Colors.white, fontSize: 23, fontFamily: 'Montserrat',),
                  textAlign:TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
      drawer:Drawer(
        child:ListView(
          padding:EdgeInsets.zero,
          children:<Widget>[
            DrawerHeader(
              child:Text('Therapy App',style:new TextStyle(fontSize:40,color:Colors.white),),
              decoration:BoxDecoration(
                color:Colors.blue,
              ),
            ),
            ListTile(
              title:Text('Assignments',style:new TextStyle(fontSize:25),),
              onTap:(){
                Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Assigments()));
              },
            ),
            ListTile(
              title:Text('Authors',style:new TextStyle(fontSize:25),),
              onTap:(){
                Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Authors()));
              },
            )
          ],
        ),
      ),
    );
  }
}
class Assigments extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        title:Text('Assignments')
      ),
      body:SingleChildScrollView(
        child:Column(
          children:<Widget>[
            Text(
              'Read the Following Article and answer the question below.',
              style:TextStyle(fontSize:23),
            ),
            Image.asset('assets/pdf/article-page-001.jpg'),
            Image.asset('assets/pdf/article-page-002.jpg'),
            Image.asset('assets/pdf/article-page-003.jpg'),
            Image.asset('assets/pdf/article-page-004.jpg'),
            Text(
              'What was the Article about?',
              style:TextStyle(fontSize:23),
            ),
            TextFormField(
              decoration:InputDecoration(
                labelText:"Type Answer Here"
              ),
            ),
            Material(
              elevation:5,
              borderRadius:BorderRadius.circular(30),
              color:Color(0xff01A0C7),
              child:MaterialButton(
                minWidth:MediaQuery.of(context).size.width,
                padding:EdgeInsets.fromLTRB(50,15,50,15),
                onPressed:(){
                  Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Submission()));
                },
                child:Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                  textAlign:TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class Submission extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Thank you for your submission.', style: TextStyle(fontSize: 23), textAlign: TextAlign.center,),
            Text('Click below to return to the home screen.', style: TextStyle(fontSize: 23), textAlign: TextAlign.center,),
            Material(
              elevation:5,
              borderRadius:BorderRadius.circular(30),
              color:Color(0xff01A0C7),
              child:MaterialButton(
                minWidth:MediaQuery.of(context).size.width,
                padding:EdgeInsets.fromLTRB(50,15,50,15),
                onPressed:(){
                  Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>MainPage()));
                },
                child:Text(
                  "Return",
                  style: TextStyle(color: Colors.white, fontSize: 23, fontFamily: 'Montserrat',),
                  textAlign:TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}            
class Authors extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        title:Text('About the Authors'),
      ),
      body:SingleChildScrollView(
        child:Column(
          children:<Widget>[
            Text(
              'This application was developed by the following Ball State University CS498 Students: Luke Betts, Bradon Edlebrock, Noah Hornbeck, Matthew Schymik.  We would also like to note our partnership with Maria Wiley and the Briarwood Clinic of Muncie, IN.',
              style:TextStyle(fontSize:23),
              textAlign:TextAlign.center,
            ),
            Image.asset('assets/images/bc.png'),
            Image.asset('assets/images/mw.webp'),
            Image.asset('assets/images/bsu.jpg'),
          ]  
        )    
      )
    );
  }
}