import 'package:get/get.dart';
import 'package:get_dialog_service/call_back_dialog.dart';

class DialogService extends GetxService {
  CallBackDialog callBackDialog = CallBackDialog();

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

  void getFail({double? width, String? msg, String lang = 'ko', Function? callback}) {
    callBackDialog.getFailsAltCb(
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
}
