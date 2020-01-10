import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(
              image:
                  AssetImage('assets/images/kieran-white-480956-unsplash.png'),
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
                              onPressed: () {},
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
