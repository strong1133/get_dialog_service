import 'package:get/get.dart';
import 'package:get_dialog_service/call_back_dialog.dart';

class DialogService extends GetxService {
  CallBackDialog callBackDialog = CallBackDialog();

  // Call Success Dialog
  void getSuccess({double? width, String? msg, String lang = 'ko', Function? callback}) {
    callBackDialog.getSuccessAltCb(
        width: width,
        msg: msg,
        lang: lang,
        callBack: () {
          if (callback != null) {
            callback();
          } else {
            // ignore: avoid_print
            print("NO CALLBACK");
          }
        });
  }

  // Call Fail Dialog
  void getFail({double? width, String? msg, String lang = 'ko', Function? callback}) {
    callBackDialog.getFailAltCb(
        width: width,
        msg: msg,
        lang: lang,
        callBack: () {
          if (callback != null) {
            callback();
          } else {
            // ignore: avoid_print
            print("NO CALLBACK");
          }
        });
  }

  // Call Warinig Dialog
  void getWarn({double? width, String? msg, String lang = 'ko', Function? callback}) {
    callBackDialog.getWarnAltCb(
        width: width,
        msg: msg,
        lang: lang,
        callBack: () {
          if (callback != null) {
            callback();
          } else {
            // ignore: avoid_print
            print("NO CALLBACK");
          }
        });
  }

  // Call Confirm Dialog
  void getConfirm({double? width, String? msg, String lang = 'ko', Function? callback, Function? noCallback}) {
    callBackDialog.getConfirmAltCb(
        width: width,
        msg: msg,
        lang: lang,
        callBack: () {
          if (callback != null) {
            callback();
          } else {
            // ignore: avoid_print
            print("NO CALLBACK");
          }
        },
        noCallBack: () {
          if (noCallback != null) {
            noCallback();
          } else {
            // ignore: avoid_print
            print("NO CALLBACK");
          }
        });
  }
}
