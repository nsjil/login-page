import 'package:flutter/material.dart';
import 'package:flutter_application_1/signup_dape.dart';

class Main_Login extends StatefulWidget {
  const Main_Login({super.key});

  @override
  State<Main_Login> createState() => _Main_LoginState();
}

class _Main_LoginState extends State<Main_Login> {
  bool isChecked = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Creat Your\nAccount",
              style: TextStyle(fontSize: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Email",
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: TextField(
                  decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: Icon(Icons.lock),
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              )),
            ),
            Row(
              children: [
                Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      checkColor: Colors.white, // Color of the check icon
      activeColor: Colors.green, // Color of the checkbox when checked
      tristate: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      side: BorderSide(
        color: Colors.grey,
        width: 2.0,),),
                Text("Remember me")
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupDape()));
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.green[400]),
                child: Center(
                    child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.5,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.grey,
                    ),
                    Text(" or continue with  "),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      height: 1.5,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Colors.grey,
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://w7.pngwing.com/pngs/249/19/png-transparent-google-logo-g-suite-google-guava-google-plus-company-text-logo.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/474x/f7/99/20/f79920f4cb34986684e29df42ec0cebe.jpg"))),
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://1000logos.net/wp-content/uploads/2016/10/Apple-Logo.png"))),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupDape()));
                    },
                    child: Text(
                      "sign up",
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
