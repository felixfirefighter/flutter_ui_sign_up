import 'package:flutter/material.dart';
import 'package:flutter_ui_sign_up/components/app_text_form_field.dart';
import 'package:flutter_ui_sign_up/components/heading.dart';
import 'package:flutter_ui_sign_up/styles/colors.dart';
import 'package:flutter_ui_sign_up/utils/scales.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(AppColors.lightGrey),
      body: CustomPaint(
        painter: HomePainter(),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 64 + scaleWithHeight(context, 24),
                left: scaleWithWidth(context, 16),
                right: scaleWithWidth(context, 16),
                bottom: scaleWithWidth(context, 16),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: scaleWithHeight(context, 8),
                      bottom: scaleWithHeight(context, 16),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Heading(
                            text: 'Welcome Back',
                            color: Color(AppColors.white),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                  AppTextFormField(
                    labelText: 'Email',
                  ),
                  Padding(
                    padding: EdgeInsets.all(scaleWithHeight(context, 12)),
                  ),
                  AppTextFormField(
                    labelText: 'Password',
                  ),
                  Padding(
                    padding: EdgeInsets.all(scaleWithHeight(context, 32)),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Color(AppColors.darkGrey),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward),
                                onPressed: () {},
                                color: Color(AppColors.white),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                            scaleWithHeight(
                              context,
                              16,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed('/sign-up');
                              },
                            ),
                            FlatButton(
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Color(AppColors.darkGrey),
                elevation: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.lineTo(0, size.height * .6);
    path.lineTo(size.width, size.height * .6);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = Color(AppColors.darkGrey);
    canvas.drawPath(path, paint);

    path = Path();
    path.moveTo(size.width, size.height * .2);

    path.quadraticBezierTo(
      size.width * .75,
      size.height * .2,
      size.width * .5,
      size.height * .3,
    );

    path.quadraticBezierTo(
      size.width * .25,
      size.height * .4,
      0,
      size.height * .4,
    );

    path.lineTo(0, size.height);

    path.lineTo(size.width * .3, size.height);

    path.quadraticBezierTo(
      size.width * .475,
      size.height * .85,
      size.width * .65,
      size.height * .85,
    );

    path.quadraticBezierTo(
      size.width * .825,
      size.height * .85,
      size.width,
      size.height * .7,
    );

    path.lineTo(size.width, size.height * .8);
    path.close();

    paint.color = Color(AppColors.lightBlue);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
