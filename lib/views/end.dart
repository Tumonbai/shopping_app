import 'package:flutter/material.dart';
import 'package:shopping_app/constants/app_colors.dart';
import 'package:shopping_app/constants/app_text_styles.dart';
import 'package:shopping_app/views/end.dart';
import 'package:shopping_app/widgets/button_content.dart';
import 'package:shopping_app/widgets/raised_gradient_button.dart';
// import 'package:js/js.dart';

class End_Page extends StatefulWidget {
  const End_Page({Key key}) : super(key: key);

  @override
  _End_PageState createState() => _End_PageState();
}

class _End_PageState extends State<End_Page> {
  List<Widget> bottomNavIcons = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/end.png'),
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
            'Сиз акыркы беттесиз',
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
                'Сиздин тандоонуз аткарылды,'
                    'Товарды кутуп алыныз',
                // style: AppTextStyles.mainQuestion,
              ),
              MaterialButton(
                textColor: Colors.white70,
                padding: const EdgeInsets.all(10.0),
                child: Text ('АРТКА'),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                color: Colors.deepPurple,

                  )

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




// class end_page extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Page 2"),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             MaterialButton(
//               child: Text("Go Back!"),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               color: Colors.red,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }