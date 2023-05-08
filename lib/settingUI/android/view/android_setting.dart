import 'package:flutter/material.dart';
import 'package:outcaster_settings/settingUI/provider/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingANDROID extends StatefulWidget {
  const SettingANDROID({Key? key}) : super(key: key);

  @override
  State<SettingANDROID> createState() => _SettingANDROIDState();
}

class _SettingANDROIDState extends State<SettingANDROID> {
  SettingProvider? providerTrue;
  SettingProvider? providerFalse;
  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<SettingProvider>(context,listen: true);
    providerFalse = Provider.of<SettingProvider>(context,listen: false);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD93600),
        title: Text(
          "Settings UI",
          style:
              TextStyle(fontSize: 20, fontFamily: 'popins', letterSpacing: 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Common",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'popins',
                  letterSpacing: 1,
                  color: Color(0xffD93600),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.language,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(
                            letterSpacing: 1, fontSize: 15, fontFamily: 'popins'),
                      ),
                      Text(
                        "English",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontFamily: 'popins',
                            color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.cloud_outlined,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Environment",
                        style: TextStyle(
                            letterSpacing: 1, fontSize: 15, fontFamily: 'popins'),
                      ),
                      Text(
                        "Production",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontFamily: 'popins',
                            color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'popins',
                  letterSpacing: 1,
                  color: Color(0xffD93600),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.call,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Phone number",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 15, fontFamily: 'popins'),
                  )
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Email",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        fontFamily: 'popins',
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.exit_to_app,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Sign out",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 15, fontFamily: 'popins'),
                  ),

                ],
              ),
              SizedBox(height: 20),
              Text(
                "Security",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'popins',
                  letterSpacing: 1,
                  color: Color(0xffD93600),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.phonelink_lock_outlined,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Lock app in background",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 15, fontFamily: 'popins'),
                  ),
                  Spacer(),
                  Switch(activeColor: Color(0xffD93600),value: providerTrue!.lock, onChanged: (value) {
                      providerFalse!.lockcall(value);
                  },),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.fingerprint,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Use Fingerprint",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        fontFamily: 'popins',
                    ),
                  ),

                  Spacer(),
                  Switch(activeColor: Color(0xffD93600),value: providerTrue!.finger, onChanged: (value) {
                      providerFalse!.fingercall(value);
                  },),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.lock,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Change Password",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 15, fontFamily: 'popins'),
                  ),
                  Spacer(),
                  Switch(activeColor: Color(0xffD93600),value: providerTrue!.pass, onChanged: (value) {
                      providerFalse!.passcall(value);
                  },),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Misc",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'popins',
                  letterSpacing: 1,
                  color: Color(0xffD93600),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.description,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Terms of Service",
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 15, fontFamily: 'popins'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.content_copy,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Open source licenses",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        fontFamily: 'popins',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
