import 'package:flutter/material.dart';
import 'package:shopping_app/constants/app_colors.dart';
import 'package:shopping_app/constants/app_text_styles.dart';
import 'package:shopping_app/views/end.dart';
import 'package:shopping_app/widgets/button_content.dart';
import 'package:shopping_app/widgets/raised_gradient_button.dart';
// import 'package:js/js.dart';

class HomeViewAndroid extends StatefulWidget {
  const HomeViewAndroid({Key key}) : super(key: key);

  @override
  _HomeViewAndroidState createState() => _HomeViewAndroidState();
}

class _HomeViewAndroidState extends State<HomeViewAndroid> {
  List<Widget> bottomNavIcons = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/ai_android.png'),
          fit: BoxFit.cover,

        ),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          // Add one stop for each color
          // Values should increase from 0.0 to 1.0
          // stops: [0.1, 0.5, 0.8, 0.9],
          colors: [
            AppColors.bgColorLightPurple,
            AppColors.bgColorLightRed,
            AppColors.bgColorLightGrey,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            '',
            style: TextStyle(color: AppColors.secondaryColor.withOpacity(0.8)),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Кайсынысын тандайсын чырагым?',
                // style: AppTextStyles.mainQuestion,
              ),
              RaisedGradientButton(
                topMargin: 8.0,
                height: 55.0,
                width: 350.0,
                child: ButtonContent(
                  iconText: '1',
                  buttonText: 'Samsung',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => End_Page()),
                  );

                },
                gradient: LinearGradient(
                  colors: <Color>[
                    AppColors.mainColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),

              RaisedGradientButton(
                topMargin: 8.0,
                height: 55.0,
                width: 350.0,
                child: ButtonContent(
                  iconText: '2',
                  buttonText: 'Google Phone',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => End_Page()),
                  );
                },
                gradient: LinearGradient(
                  colors: <Color>[
                    AppColors.mainColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ), RaisedGradientButton(
                topMargin: 8.0,
                height: 55.0,
                width: 350.0,
                child: ButtonContent(
                  iconText: '3',
                  buttonText: 'Lg',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => End_Page()),
                  );
                },
                gradient: LinearGradient(
                  colors: <Color>[
                    AppColors.mainColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
              RaisedGradientButton(
                topMargin: 8.0,
                height: 55,
                width: 350,
                child: ButtonContent(
                  iconText: '4',
                  buttonText: 'Xiaomi',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => End_Page()),
                  );
                  // js.context.callMethod("open",["https://samsung.com/us/"]);
                },
                gradient: LinearGradient(
                  colors: <Color>[
                    AppColors.mainColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: Row(
        //   children: <Widget>[
        //     ...bottomNavIcons,
        //   ],
        //   // children: bottomNavIcons,
        // ),
      ),
    );
  }
}
