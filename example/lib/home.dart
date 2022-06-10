import 'package:flutter/material.dart';
import 'package:get_dialog_service/dialog_service.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Get Dialog Service Example'),
    );
  }

  Widget _buildBody() {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        children: [
          spacer(height: 30),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  'Test Buttons',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                spacer(height: 20),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      onPressed: () {
                        // ignore: avoid_print
                        print('Call Success Dialog');
                        DialogService().getSuccess(
                            width: 200,
                            msg: 'Success',
                            lang: 'ko',
                            callback: () {
                              // ignore: avoid_print
                              print('Call Back Success Dialog!!');
                            });
                      },
                      child: const Text('Call Success Dialog')),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {
                        // ignore: avoid_print
                        print('Call Fail Dialog');
                        DialogService().getFail(
                            width: 200,
                            msg: 'Fail on Error',
                            lang: 'ko',
                            callback: () {
                              // ignore: avoid_print
                              print('Call Back Fail Dialog!!');
                            });
                      },
                      child: const Text('Call Fail Dialog')),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow[600],
                      ),
                      onPressed: () {
                        // ignore: avoid_print
                        print('Call Warning Dialog');
                        DialogService().getWarn(
                            width: 200,
                            msg: 'Warning',
                            lang: 'ko',
                            callback: () {
                              // ignore: avoid_print
                              print('Call Back Warning Dialog!!');
                            });
                      },
                      child: const Text('Call Warning Dialog')),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                      ),
                      onPressed: () {
                        // ignore: avoid_print
                        print('Call Confirm Dialog');
                        DialogService().getConfirm(
                            width: 200,
                            msg: 'Confirm',
                            lang: 'ko',
                            callback: () {
                              // ignore: avoid_print
                              print('Call Back Confirm Dialog!! -> OK!! ');
                            },
                            noCallback: () {
                              // ignore: avoid_print
                              print('Call Back Confirm Dialog!! -> No!! ');
                            });
                      },
                      child: const Text('Call Confirm Dialog')),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox spacer({required double height}) {
    return SizedBox(
      height: height,
    );
  }
}
