import 'package:flutter/cupertino.dart';
import 'package:open_mail_app/open_mail_app.dart';

abstract class MailService {
  Future<void> openMailApp(VoidCallback handleNoMailAppsFound,
      ValueSetter<OpenMailAppResult> handleMailAppPickerDialog);
}

class MailServiceImpl implements MailService {
  @override
  Future<void> openMailApp(VoidCallback handleNoMailAppsFound,
      ValueSetter<OpenMailAppResult> handleMailAppPickerDialog) async {
    // Android: Will open mail app or show native picker.
    // iOS: Will open mail app if single mail app found.
    var result = await OpenMailApp.openMailApp(
      nativePickerTitle: 'Select email app to open',
    );

    // If no mail apps found, show error
    if (!result.didOpen && !result.canOpen) {
      handleNoMailAppsFound();
      // iOS: if multiple mail apps found, show dialog to select.
      // There is no native intent/default app system in iOS so
      // you have to do it yourself.
    } else if (!result.didOpen && result.canOpen) {
      handleMailAppPickerDialog(result);
    }
  }
}
