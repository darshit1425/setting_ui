import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

provider? homeprovider;
provider? homeproviderTrue;

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    homeproviderTrue = Provider.of(context, listen: true);
    homeprovider = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Settings UI",
              style: TextStyle(letterSpacing: 1, fontSize: 25)),
          backgroundColor: Color(0xffff4500),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Common",
                    style: GoogleFonts.alice(
                      color: Color(0xffff4500),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text("Language"),
                subtitle: Text("English"),
              ),
              Divider(
                color: Color(0xff8F8F8F),
                thickness: 0.2,
              ),

              ListTile(
                leading: Icon(Icons.cloud),
                title: Text("Environment"),
                subtitle: Text("Production"),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Account",
                    style: GoogleFonts.alice(
                        color: Color(0xffff4500), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Phone number"),
              ),
              Divider(
                color: Color(0xff8F8F8F),
                thickness: 0.2,
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
              ),
              Divider(
                color: Color(0xff8F8F8F),
                thickness: 0.2,
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Sign Out"),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Security",
                    style: GoogleFonts.alice(
                      color: Color(0xffff4500),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.phonelink_lock),
                title: Text("Lock app in background"),
                trailing: Switch(
                  activeColor: Color(0xffff4500),
                  value: homeproviderTrue!.onOff1,
                  onChanged: (value) => homeprovider!.button1(value),
                ),
              ),
              Divider(
                color: Color(0xff8F8F8F),
                thickness: 0.2,
              ),
              ListTile(
                leading: Icon(Icons.fingerprint),
                title: Text("Use fingerprint"),
                trailing: Switch(
                  activeColor: Color(0xffff4500),
                  value: homeproviderTrue!.onOff2,
                  onChanged: (value) => homeprovider!.button2(value),
                ),
              ),
              Divider(
                color: Color(0xff8F8F8F),
                thickness: 0.2,
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text("Change password"),
                trailing: Switch(
                  activeColor: Color(0xffff4500),
                  value: homeproviderTrue!.onOff3,
                  onChanged: (value) => homeprovider!.button3(value),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Misc",
                    style: GoogleFonts.alice(
                      color: Color(0xffff4500),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
