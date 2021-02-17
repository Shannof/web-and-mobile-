import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoUrl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: GridView.count(
          crossAxisCount: screenSize.width > 580 ? 3 : 2,
          childAspectRatio: 1.8,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            InkWell(
              onTap: _launchURL1,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/img.jpg",
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                  ),
                  screenSize.width < 580 ?
                  Center(
                    child: Text(
                      "الدرس الاول",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ):
                  Center(
                    child: Text(
                      "الدرس الاول",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: _launchURL2,
              child: Stack(
                children: [

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/img.jpg",
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                  ),
                  screenSize.width < 580 ?
                  Center(
                    child: Text(
                      "الدرس الثاني",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ):
                  Center(
                    child: Text(
                      "الدرس الثاني",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),

                ],
              ),
            ),
            InkWell(
              onTap: _launchURL3,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/img.jpg",
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                  ),
                  screenSize.width < 580 ?
                  Center(
                    child: Text(
                      "الدرس الثالث",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ):Center(
                    child: Text(
                      "الدرس الثالث",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: _launchURL4,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/img.jpg",
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                  ),
                  screenSize.width < 580 ?
                  Center(
                    child: Text(
                      "الدرس الرابع",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ):Center(
                    child: Text(
                      "الدرس الرابع",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: _launchURL5,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/img.jpg",
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                  ),
                  screenSize.width < 580 ?
                  Center(
                    child: Text(
                      "الدرس الخامس",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ):
                  Center(
                    child: Text(
                      "الدرس الخامس",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL1() async {
    const url = 'https://youtu.be/f0dCOzIGNt8';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://youtu.be/cwajAL2Mxew';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL3() async {
    const url = 'https://youtu.be/p-0-oBsMQjo';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL4() async {
    const url = 'https://youtu.be/Pk42tEfCSYE';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL5() async {
    const url = 'https://youtu.be/Ec8Ni8k3QsY';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
