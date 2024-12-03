import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _switchValue = true;
  String _selectedOption = ''; // State variable to track the selected option

  @override
  Widget build(BuildContext context) {
    double baseWidth = 300;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: 220 * fem,
      padding: EdgeInsets.fromLTRB(0 * fem, 30 * fem, 0 * fem, 20 * fem),
      decoration: BoxDecoration(
        color: Color(0xffc3ac8e),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15 * fem),
          bottomRight: Radius.circular(15 * fem),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x4c000000),
            offset: Offset(8 * fem, 8 * fem),
            blurRadius: 2 * fem,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Info Section
          Container(
            margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 15 * fem, 15 * fem),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
                  width: 40 * fem,
                  height: 40 * fem,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture 1.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    'Sarah',
                    style: TextStyle(
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Menu Options
          buildMenuOption(
            fem,
            ffem,
            Icons.home,
            'Home',
                () {
              setState(() {
                _selectedOption = 'Home';
              });
            },
          ),
          buildMenuOption(
            fem,
            ffem,
            Icons.person,
            'Profile',
                () {
              setState(() {
                _selectedOption = 'Profile';
              });
            },
          ),
          buildMenuOption(
            fem,
            ffem,
            Icons.language,
            'Language',
                () {
              setState(() {
                _selectedOption = 'Language';
              });
            },
          ),
          buildMenuOption(
            fem,
            ffem,
            Icons.notifications,
            'Notification',
                () {
              setState(() {
                _switchValue = !_switchValue;
                _selectedOption = '';
              });
            },
            trailing: CupertinoSwitch(
              activeColor: Color(0xd86b4332),
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          ),
          buildMenuOption(
            fem,
            ffem,
            Icons.rate_review,
            'Add Review',
                () {
              setState(() {
                _selectedOption = 'Add Review';
              });
            },
          ),
          buildMenuOption(
            fem,
            ffem,
            Icons.help_center,
            'Help Center',
                () {
              setState(() {
                _selectedOption = 'Help Center';
              });
            },
          ),
          buildMenuOption(
            fem,
            ffem,
            Icons.info,
            'About Us',
                () {
              setState(() {
                _selectedOption = 'About Us';
              });
            },
          ),
          buildMenuOption(
            fem,
            ffem,
            Icons.star,
            'Rate the App',
                () {
              setState(() {
                _selectedOption = 'Rate the App';
              });
            },
          ),
          Center(
            child: Container(
              width: 200,
              height: 60,
              child: RatingBar.builder(
                initialRating: 0,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 40,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
          ),
          buildMenuOption(
            fem,
            ffem,
            Icons.feedback,
            'Leave Feedback',
                () {
              setState(() {
                _selectedOption = 'Leave Feedback';
              });
            },
          ),
          buildMenuOption(
            fem,
            ffem,
            Icons.share,
            'Share with Friend',
                () {
              setState(() {
                _selectedOption = 'Share with Friend';
              });
            },
          ),
        ],
      ),
    );
  }

  Widget buildMenuOption(
      double fem,
      double ffem,
      IconData iconData,
      String title,
      VoidCallback onTap, {
        Widget? trailing,
      }) {
    bool isSelected = _selectedOption == title;

    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 5,right: 5),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff6b4332) : Colors.transparent,
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        padding: EdgeInsets.symmetric(vertical: 9.5 * fem, horizontal: 12.5 * fem),
        child: Row(
          children: [
            Icon(iconData, size: 24 * fem, color: isSelected ? Colors.white : Color(0xff000000)),
            SizedBox(width: 15),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  color: isSelected ? Colors.white : Color(0xff000000),
                ),
              ),
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }
}
