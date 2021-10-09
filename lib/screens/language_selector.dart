import 'package:flutter/material.dart';
import 'package:myzon/components/language_tile.dart';

class LanguageSelector extends StatefulWidget {
  @override
  _LanguageSelectorState createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back)),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Select your language",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  shrinkWrap: true,
                  childAspectRatio: 170 / 80,
                  children: [
                    LanguageTile(
                      text1: "English",
                      text2: "",
                      color: Colors.green[600],
                    ),
                    LanguageTile(
                      text1: "हिंदी",
                      text2: "Hindi",
                      color: Colors.indigo[600],
                    ),
                    LanguageTile(
                      text1: "मराठी",
                      text2: "Marathi",
                      color: Colors.red[600],
                    ),
                    LanguageTile(
                      text1: "বাংলা",
                      text2: "Bengali",
                      color: Colors.yellow[700],
                    ),
                    LanguageTile(
                      text1: "ગુજરાતી",
                      text2: "Gujarati",
                      color: Colors.orange[600],
                    ),
                    LanguageTile(
                      text1: "ਪੰਜਾਬੀ",
                      text2: "Punjabi",
                      color: Colors.green[600],
                    ),
                    LanguageTile(
                      text1: "മലയാളം",
                      text2: "Malayalam",
                      color: Colors.cyan[600],
                    ),
                    LanguageTile(
                      text1: "தமிழ்",
                      text2: "Tamil",
                    ),
                    LanguageTile(
                      text1: "తెలుగు",
                      text2: "Telugu",
                      color: Colors.blue[600],
                    ),
                    LanguageTile(
                      text1: "ಕನ್ನಡ",
                      text2: "Kannada",
                      color: Colors.red[600],
                    ),
                    LanguageTile(
                      text1: "ଘୃଣା କରେ",
                      text2: "Odia",
                      color: Colors.green[600],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
