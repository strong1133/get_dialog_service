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
  void getFailAltCb({double? width, String? title, String? msg, String? lang, required Function callBack}) {
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

  //
  // Get Warning Alert Diaglog with Call Back Func
  void getWarnAltCb({double? width, String? title, String? msg, String? lang, required Function callBack}) {
    // ignore: no_leading_underscores_for_local_identifiers
    String _tempMsg = '';
    // ignore: no_leading_underscores_for_local_identifiers
    String _tempTitle = '';

    _tempMsg = msg ?? 'Warning';
    _tempTitle = title ?? (lang == 'ko' ? '경고' : 'Warning');

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
                  '$kImagePath/icon_warning.png',
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
  // Get Warning Alert Diaglog with Call Back Func
  void getConfirmAltCb({double? width, String? title, String? msg, String? lang, required Function callBack, required Function noCallBack}) {
    // ignore: no_leading_underscores_for_local_identifiers
    String _tempMsg = '';
    // ignore: no_leading_underscores_for_local_identifiers
    String _tempTitle = '';

    _tempMsg = msg ?? 'Confirm';
    _tempTitle = title ?? (lang == 'ko' ? '확인' : 'Confirm');

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
                  '$kImagePath/icon_info.png',
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
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
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
              const SizedBox(width: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  elevation: 0,
                  minimumSize: const Size(100, 40),
                ),
                child: Text(
                  lang == 'ko' ? '취소' : 'Cancle',
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Get.back();
                  noCallBack();
                },
              ),
            ]),
            const SizedBox(height: 20),
          ],
        ),
      ],
    ));
  }

  //
  // Get Loading Alert Diaglog
  void getLoadingAltCb() {
    Get.dialog(AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      content: const SizedBox(
        height: 200,
        child: Center(
            child: SizedBox(
          height: 50.0,
          width: 50.0,
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.blue), strokeWidth: 5.0),
        )),
      ),
    ));
  }
}
