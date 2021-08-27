import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/shadow_container.dart';
import 'package:pixel_apps_ntf/screens/creator/wallet/wallet_view_model.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScanWalletView extends StatelessWidget {
  const ScanWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read(walletViewProvider).updateWalletView(2),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(sizes.pagePadding),
        child: Center(
          child: Column(
            children: [
              QrImage(
                data: 'Visit pixelsapp.io',
                version: QrVersions.auto,
                size: 320,
                gapless: false,
              ),
              Sizer(),
              Text("Scan to connect wallet",
                  style:
                      textStyles.kTextRegular.copyWith(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
