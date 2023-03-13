import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class ios_screen extends StatefulWidget {
  const ios_screen({Key? key}) : super(key: key);

  @override
  State<ios_screen> createState() => _ios_screenState();
}

class _ios_screenState extends State<ios_screen> {
  provider? IosproviderF;
  provider? IosproviderT;

  @override
  Widget build(BuildContext context) {
    IosproviderT = Provider.of(context, listen: true);
    IosproviderF = Provider.of(context, listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Color(0xffF2EFF8),
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Colors.red,
          middle: Text(
            "Setting UI",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,

              // color: Colors.white
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Common",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.language,
                  color: Colors.grey,
                ),
                title: Text(
                  "Language",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: Row(
                  children: [
                    Text(
                      "English",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Colors.grey,
                    )
                  ],
                ),
                backgroundColor: Colors.white,
              ),
              // Divider(
              //   color: Color(0xff8F8F8F),
              //   thickness: 0.2,
              // ),
              CupertinoListTile(
                leading: Icon(
                  Icons.cloud,
                  color: Colors.grey,
                ),
                title: Text(
                  "Environment",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: Row(
                  children: [
                    Text(
                      "Production",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Colors.grey,
                    )
                  ],
                ),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Account",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              CupertinoListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
                title: Text(
                  "Phone number",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.grey,
                ),
                backgroundColor: Colors.white,
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                title: Text(
                  "Email",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.grey,
                ),
                backgroundColor: Colors.white,
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.grey,
                ),
                title: Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.grey,
                ),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Security",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
              CupertinoListTile(
                backgroundColor: Colors.white,
                leading: Icon(
                  Icons.phonelink_lock,
                  color: Colors.grey,
                ),
                title: Text(
                  "Lock app in background",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: CupertinoSwitch(
                  activeColor: Color(0xffff4500),
                  value: IosproviderT!.onOff1,
                  onChanged: (value) => IosproviderF!.button1(value),
                ),
              ),
              CupertinoListTile(
                backgroundColor: Colors.white,
                leading: Icon(
                  Icons.fingerprint,
                  color: Colors.grey,
                ),
                title: Text(
                  "Use fingerprint",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: CupertinoSwitch(
                  activeColor: Color(0xffff4500),
                  value: IosproviderT!.onOff2,
                  onChanged: (value) => IosproviderF!.button2(value),
                ),
              ),
              CupertinoListTile(
                backgroundColor: Colors.white,
                leading: Icon(
                  Icons.lock_outlined,
                  color: Colors.grey,
                ),
                title: Text(
                  "Change password",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: CupertinoSwitch(
                  activeColor: Color(0xffff4500),
                  value: IosproviderT!.onOff3,
                  onChanged: (value) => IosproviderF!.button3(value),
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Misc",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.room_preferences,
                  color: Colors.grey,
                ),
                title: Text(
                  "Terms of Service",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.grey,
                ),
                backgroundColor: Colors.white,
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.photo_library,
                  color: Colors.grey,
                ),
                title: Text(
                  "Open source licenses",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.grey,
                ),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
