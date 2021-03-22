import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'password_generates.dart';
import 'request_data.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splash: Image.asset("assests/splash_animation.gif"),
         duration: 2000,
          nextScreen: Home(),
        ),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

TextEditingController controller = TextEditingController();
String passwrod = "password";


class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>();
  bool _isloading = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[400],
      body: _isloading ? Container(
        child: Center(child: CircularProgressIndicator()),
      ) : 
      Container(
        height: size.height,
        width: size.width,
        margin: EdgeInsets.fromLTRB(25, 200, 25, 200),
        padding: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(36)),
        child: Column(
          children: [
            SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(icon: Icon(Icons.delete_forever_outlined,size: 40,), onPressed: (){
                  setState(() {
                    controller.text = "";
                  });
                  }),
                Container(
                  height: 90,
                  width: 200,
                  margin: EdgeInsets.only(left: 25),
                  child: Form(
                      key: formKey,
                      child: TextFormField(
                        controller: controller,
                        validator: (val) {
                          return val.length > 7
                              ? null
                              : "the password has to be 8 char";
                        },
                        decoration: InputDecoration(
                          labelText: "password",
                        ),
                      )),
                ),
                IconButton(
                    icon: Icon(
                      Icons.copy,
                      size: 40,
                    ),
                    onPressed: () {
                      if (controller.text.isEmpty ||
                          controller.text.length > 7) {
                        FlutterClipboard.copy(controller.text);
                      }
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: controller.text.isEmpty ||
                                  controller.text.length < 7
                              ? null
                              : Text("copyed: ${controller.text}")));
                    })
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                try{
                if (formKey.currentState.validate()) {
                  setState(() {
                    _isloading = true;
                  });
                  var req = await http.post(url, headers: headers, body: data);
                  if (req.statusCode == 302) {
                    setState(() {
                      _isloading = false;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("password changes successfuly")));
                  }
                }
                }catch(err){
                  print(err);
                }
              },
              child: Container(
                width: size.width * 0.5,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(36)),
                child: Center(
                    child: Text(
                  "submit",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(icon: Icon(Icons.replay, size: 40,), onPressed: (){
                  setState(() {
                    getRandomPassword();
                  });
                }),
                Text("$passwrod", style: TextStyle(fontSize: 25),),
                
                IconButton(icon: Icon(Icons.copy, size: 40,), onPressed: (){
                  FlutterClipboard.copy(passwrod);
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
