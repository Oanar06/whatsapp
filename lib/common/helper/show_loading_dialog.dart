import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_messenger/common/utils/coloors.dart';

showLoadingDialog({
  required BuildContext context,
  required String message,
}) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    message,
                    style: TextStyle(
                        fontSize: 15,
                        color: Coloors.greenDark,
                        height: 1.5),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
