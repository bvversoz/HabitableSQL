// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';

import 'package:firebase_core/firebase_core.dart';
import 'home/home.dart';

void main() async {
  final gsheets = GSheets(credentials);
  final spreadsheetID = '18qgJIg9DFehV1WgHjcBrMD7oGie77xvCEhxySUhXLrY';
  await gsheets.spreadsheet(spreadsheetID);


  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  FutureBuilder(
    future: _initialization,
    builder: (context, snapshot) {
      if (snapshot.hasError) {
        print('Firebase initialization error: ${snapshot.error}');
        return Text('Firebase initialization error');
      }
      if (snapshot.connectionState == ConnectionState.done) {
        return Home();
      }
      return CircularProgressIndicator();
    },
  );

  final String apiKey = "AIzaSyChVwQ_m8MaST8OP2flOYR5GUe6LfOXTvY";
  final String appId = "1:1009298241783:web:498a9df58d1d21129ebbf2";
  final String messagingSenderId = "1009298241783";
  final String projectId = "experiencebv-f06af";

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: apiKey,
      appId: appId,
      messagingSenderId: messagingSenderId,
      projectId: projectId,
    ),
  );




  runApp(Home());
}



const credentials = r'''

{
  "type": "service_account",
  "project_id": "habitatforhumanity-392618",
  "private_key_id": "e04607b67c0bd90bd6ee73fb0ba2a055a65d9b99",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEuwIBADANBgkqhkiG9w0BAQEFAASCBKUwggShAgEAAoIBAQC+kwdSu9zJmMtw\nJOq8oeJxHvT+vd4s5fGVToWmRVaLHlq6EMPbiEUZbPEndLzEMjc0b0xFVwEDnk8r\nRm15ed8LG9SSI3dNfJ16oJb/bwNX+pHDQypuZ/xXxQ4i7s4G7QURtYxpzgpXF5lD\nDq+xS45wFaomSi6+33w+uw8Qnih+qSc5XfycvrLPtQ9EUDlVBP1ZAHS8ZJrh639m\nyz+UVw2/CsX9EBUsa256IBaDq+kLg9skw59vXxSORTohhX/xjCAZyJ3dBDEjEQDb\nFJnJct+29LbXLv6CU1v8MF+xScqi76lk3w1Dj7F6Ri9ersRJuOtf8XTd3RRTnI6C\n25PcME3FAgMBAAECgf9Uh2KRww7RwudGSeZuEZMe5o931NlD91O9P6O7dexGrwmo\nl617JZyz0MTzFOE/JNOkex/Mob3eNpnNca+dJTFWL0Hzw0dnimtPUp7aYNZa1glR\nUrlY8nnUp5/D+HUdHVFIr/4kvMvy7vflhne0OPWbQZpdR9b0H3lvwAjIL8UTNUmV\no/nisljXKbe/PYBXFrypMGPsd7E5xVDvXMHbxqJPZKkyB880Iwg4yUxoYpHn3uVz\nJWHMZ9BQotF++xtVgcsiekVS4E2mUsOdbxRSSE2tvzYYvVcmdkWOjGkCJozeQW/5\najoc28f+MIVDSfScwTEMXZaHR+Ij62G1ygH1G8ECgYEA52hYHbXfBOrrIMCODplz\nIG5ngxldys8fgSL4LLTShrWQibJaRC20ci+hBhEeJ0lFe5+o4Qs0ottKoyw2Nr6m\nqg0ynkswu5/iQ9FyTt8SUlxFB+hJCRVFG/Nm4hUThuCUxGoYEGExIa9WRcUMjg6n\nlE3zJNQ6A7MlPlYW7al+dUECgYEA0tPHK9WwJfm7ta2so9gckSpXcpD5BjJxfjIP\n9ogxdyyWJN7Z4LMVmCvLG7u/+Fa5dwiPV9LHGveEQ+uBGrjlZixwj6FGt2YKEkjg\npIU8T6sPEl8rw9l+Bka9nbi1D8AWWDsGj+3JjU869RfAmzrunJ2IGCOiXKtICBOV\nYIqVo4UCgYEAtjUX5NT2tPWQjCpx8Jbs6qVkBfssOevav6DcTr9WYVGHbJSttK9U\nPPC51oAWARMVjeDKZeCf4nfPDipaycJWkuFvcOp9hc6/p2y8l9PXplgW1sIU9/zy\nfK6r3OqBhJtDKGDtb8BHomFgCfG9EAID+6dhAyfEQnOFqM66oQnrk8ECgYAlgY1+\nS96xctMlCAedglXasWirNgVHR/QO2kMivannJKR1XLvwEIv37VqNzYHiYTNPbNNr\ncVEAiCYcmyn1og0VdzRzKOLWv61tAVANlLJdDfZ5czrq9adI4I7dHz3+1lJjUeTh\n+BCSNhUsAxS9yOcoL5JFkRlSWRpQbYN2kFD8rQKBgDmfZ0OW9N9R7h5Pu9ghIDwk\nqy5zJZrMiKvepKCJE2GAdJDN0y5rgBj5iyOkAT6Yas/sLm1M0U//wz/VeapxBNeF\n9A1IRivkQjgZgdVg6dxk1Bos6P8WLl7JBnHrqyFNnz50CAxLaMrFgOGT/DengM6h\nqAWBaaMzqoLuKYuJr0C6\n-----END PRIVATE KEY-----\n",
  "client_email": "habitat-for-humanity-volunteer@habitatforhumanity-392618.iam.gserviceaccount.com",
  "client_id": "107805949145228325295",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/habitat-for-humanity-volunteer%40habitatforhumanity-392618.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}

''';
