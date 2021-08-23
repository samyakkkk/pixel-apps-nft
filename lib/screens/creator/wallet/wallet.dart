import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/creator/wallet/wallet_view_model.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class CreatorWallet extends StatelessWidget {
  static const String id = "/creatorWallet";
  const CreatorWallet({Key? key}) : super(key: key);

  Widget? _view(WalletView v) {
    switch (v) {
      case WalletView.confirm:
        break;
      case WalletView.scan:
        break;
      case WalletView.select:
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(sizes.mediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add wallet to pay", style: textStyles.kTextMediumText),
              Sizer.qtr(),
              Text("Easy to sell your Digital Art with 3 step",
                  style: textStyles.kTextSubtitle),
              Sizer(),
            ],
          ),
        ),
      ),
    );
  }
}
