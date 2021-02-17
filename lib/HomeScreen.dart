import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shannof_abood/VideoScreen.dart';
import 'package:shannof_abood/video.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,

        child: Stack(
          children: <Widget>[

            //lets make content
            //lets first make content for small screens that is less than 580

            screenSize.width < 580 ?
            Container(
              //for small
              width: screenSize.width,
              height: screenSize.height,
              child: Column(
                children: <Widget>[
                  //Lets make container for picture

                  Container(
                    margin: EdgeInsets.only(top: 64),
                    height: 240,
                    child: Image.asset("assets/web.png", fit: BoxFit.contain,),
                  ),

                  SizedBox(height: 16,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 64),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("دورة تعلم Flutter المستوى الاول", style: TextStyle(fontSize: kIsWeb ? 64 : 32, fontWeight: FontWeight.w700, color: Colors.lightBlue),),
                          SizedBox(height: 8,),
                          Text("""هذه الدورة تاخذك من مستوى صفر الى ان تخرج في تطبيقك وهي عبارة عن خمسة فيدوهات
مقدم الدورة :
م.شنوف عامر 
 م. عبدالله الامين""", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, letterSpacing: 1.0, color: Colors.grey[800]),),
                          SizedBox(height: 16,),
                          
                          FlatButton.icon(
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => VideoUrl()
                                ));
                              },
                              icon: Icon(Icons.video_library), 
                              label: Text("دخول الدورة"),
                            color: Colors.grey[800],
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(32))
                            ),
                          )
                        ],
                      ),
                    ),
                  )


                ],
              ),

            ) :

            Container(
              //for large screens
              height: screenSize.height,
              width: screenSize.width,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 64),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text("دورة تعلم Flutter المستوى الاول", style: TextStyle(fontSize: 64, fontWeight: FontWeight.w700, color: Colors.lightBlue),),
                                SizedBox(height: 8,),
                                Text("""هذه الدورة تاخذك من مستوى صفر الى ان تخرج في تطبيقك وهي عبارة عن خمسة فيدوهات
مقدم الدورة :
م.شنوف عامر
م. عبدالله الامين""", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, letterSpacing: 1.0, color: Colors.grey[800]),),
                                SizedBox(height: 16,),

                                FlatButton.icon(
                                  onPressed: (){
                                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => VideoUrl()
                                    ));
                                  },
                                  icon: Icon(Icons.video_library),
                                  label: Text("دخول الدورة"),
                                  color: Colors.grey[800],
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(32))
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                        
                        Expanded(
                          child: Container(
                            child: Image.asset("assets/web.png", fit: BoxFit.contain,),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )



          ],
        ),

      ),
    );
  }
}
