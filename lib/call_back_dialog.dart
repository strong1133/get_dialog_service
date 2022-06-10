import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:get/get.dart';

class CallBackDialog {
  //
  // Get Success Alert Diaglog with Call Back Func
  void getSuccessAltCb({double? width, String? title, String? msg, String? lang, required Function callBack}) {
    // ignore: no_leading_underscores_for_local_identifiers
    String _tempMsg = '';
    // ignore: no_leading_underscores_for_local_identifiers
    String _tempTitle = '';

    _tempMsg = msg ?? 'Success';
    _tempTitle = title ?? (lang == 'ko' ? '성공' : 'Success');

    Get.dialog(AlertDialog(
      title: Text(
        _tempTitle,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        textAlign: TextAlign.center,
      ),
      content: SingleChildScrollView(
        child: SizedBox(
          width: width ?? 200,
          child: ListBody(
            //List Body를 기준으로 Text 설정a
            children: <Widget>[
              Center(
                child: Image.asset(
                  '$kImagePath/icon_success.png',
                  package: 'rflutter_alert',
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                _tempMsg,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      actions: [
        Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(100, 40),
                ),
                child: Text(
                  lang == 'ko' ? '확인' : 'Ok',
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Get.back();
                  callBack();
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ],
    ));
  }

  //
  // Get Fail Alert Diaglog with Call Back Func
  void getFailsAltCb({double? width, String? title, String? msg, String? lang, required Function callBack}) {
    // ignore: no_leading_underscores_for_local_identifiers
    String _tempMsg = '';
    // ignore: no_leading_underscores_for_local_identifiers
    String _tempTitle = '';

    _tempMsg = msg ?? 'Fail';
    _tempTitle = title ?? (lang == 'ko' ? '실패' : 'Fail');

    Get.dialog(AlertDialog(
      title: Text(
        _tempTitle,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        textAlign: TextAlign.center,
      ),
      content: SingleChildScrollView(
        child: SizedBox(
          width: width ?? 200,
          child: ListBody(
            //List Body를 기준으로 Text 설정a
            children: <Widget>[
              Center(
                child: Image.asset(
                  '$kImagePath/icon_error.png',
                  package: 'rflutter_alert',
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                _tempMsg,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      actions: [
        Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(100, 40),
                ),
                child: Text(
                  lang == 'ko' ? '확인' : 'Ok',
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Get.back();
                  callBack();
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ],
    ));
  }
}
