import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  _signupsheet(context) {
    showModalBottomSheet(
      barrierColor: Colors.black12,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: MediaQuery.of(context).size.height * .5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hoverColor: Colors.white,
                      // contentPadding: EdgeInsets.all(16.0),
                      hintText: 'E-mail Address',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(.2),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black.withOpacity(.1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.all(16.0),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(.2),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black.withOpacity(.1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * .95,
                  color: Colors.black87,
                  onPressed: () {},
                  height: 56.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  textColor: Colors.white,
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        // resizeToAvoidBottomInset: true,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(
              image: AssetImage(
                'assets/images/ameen-fahmy-gcWd0ts4RCo-unsplash.jpg',
              ),
              fit: BoxFit.cover,
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'FACEPEXELS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32.0,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Text(
                              'Beautiful Free Images',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        child: Column(
                          children: <Widget>[
                            MaterialButton(
                              onPressed: () => _signupsheet(context),
                              color: Colors.white,
                              height: 56.0,
                              minWidth: MediaQuery.of(context).size.width * .9,
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14.0,
                                  fontFamily: 'SF Pro Display',
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  30.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Already have account?',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
