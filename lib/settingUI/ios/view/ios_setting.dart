import 'package:flutter/cupertino.dart';
import 'package:outcaster_settings/settingUI/provider/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingIOS extends StatefulWidget {
  const SettingIOS({Key? key}) : super(key: key);

  @override
  State<SettingIOS> createState() => _SettingIOSState();
}

class _SettingIOSState extends State<SettingIOS> {
  SettingProvider? providerF;
  SettingProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<SettingProvider>(context, listen: false);
    providerT = Provider.of<SettingProvider>(context, listen: true);
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Color(0xffD93600),
          middle: Text(
            "Settings UI",
            style: TextStyle(
                letterSpacing: 1, fontSize: 20, color: CupertinoColors.white),
          ),
        ),
        backgroundColor: CupertinoColors.white,
        child: Column(
          children: [
            Container(
              height: 55,
              color: CupertinoColors.systemGrey3,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 2, top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Common",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Color(0xff908B90)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.globe,
                    size: 25,
                    color: CupertinoColors.inactiveGray,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Language",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: CupertinoColors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "English",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: CupertinoColors.opaqueSeparator),
                  ),
                  SizedBox(
                    width: 05,
                  ),
                  Icon(
                    CupertinoIcons.forward,
                    size: 20,
                    color: CupertinoColors.opaqueSeparator,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.cloud,
                    size: 25,
                    color: CupertinoColors.inactiveGray,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Environment",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: CupertinoColors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Production",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: CupertinoColors.opaqueSeparator),
                  ),
                  SizedBox(
                    width: 05,
                  ),
                  Icon(
                    CupertinoIcons.forward,
                    size: 20,
                    color: CupertinoColors.opaqueSeparator,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 55,
              color: CupertinoColors.systemGrey3,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 2, top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Color(0xff908B90)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.phone,
                    size: 25,
                    color: CupertinoColors.inactiveGray,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Phone number",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: CupertinoColors.black,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    size: 20,
                    color: CupertinoColors.opaqueSeparator,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.mail,
                    size: 25,
                    color: CupertinoColors.inactiveGray,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Email",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: CupertinoColors.black,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    size: 20,
                    color: CupertinoColors.opaqueSeparator,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.square_arrow_right,
                    size: 25,
                    color: CupertinoColors.inactiveGray,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Sing out",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: CupertinoColors.black,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    size: 20,
                    color: CupertinoColors.opaqueSeparator,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 55,
              color: CupertinoColors.systemGrey3,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 2, top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sequrity",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Color(0xff908B90)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.device_phone_portrait,
                    size: 25,
                    color: CupertinoColors.inactiveGray,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Lock app in background",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: CupertinoColors.black,
                    ),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    value: providerT!.lock,
                    onChanged: (value) {
                      providerF!.lockcall(value);
                    },
                    activeColor: Color(0xffD93600),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.hand_raised,
                    size: 25,
                    color: CupertinoColors.inactiveGray,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Use Finger",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: CupertinoColors.black,
                    ),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    value: providerT!.finger,
                    onChanged: (value) {
                      providerF!.fingercall(value);
                    },
                    activeColor: Color(0xffD93600),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.lock,
                    size: 25,
                    color: CupertinoColors.inactiveGray,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Change Password ",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: CupertinoColors.black,
                    ),
                  ),
                  Spacer(),
                  CupertinoSwitch(
                    value: providerT!.pass,
                    onChanged: (value) {
                      providerF!.passcall(value);
                    },
                    activeColor: Color(0xffD93600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 55,
              color: CupertinoColors.systemGrey3,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 2, top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Misc",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: Color(0xff908B90)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.doc_text_fill,
                    size: 25,
                    color: CupertinoColors.inactiveGray,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Terms of Service",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: CupertinoColors.black),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    size: 20,
                    color: CupertinoColors.opaqueSeparator,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.doc_on_doc_fill,
                    size: 25,
                    color: CupertinoColors.inactiveGray,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Open source licence",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        color: CupertinoColors.black),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.forward,
                    size: 20,
                    color: CupertinoColors.opaqueSeparator,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
