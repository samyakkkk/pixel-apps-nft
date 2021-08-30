import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/shadow_container.dart';
import 'package:pixel_apps_ntf/screens/creator/wallet/wallet_view_model.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectWalletView extends StatelessWidget {
  SelectWalletView({Key? key}) : super(key: key);

  final List<String> _title = ["Bank wallet", "Coin wallet", "Wallet connect"];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (_, __) => Sizer(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (_, i) => ShadowContainer(
              child: ListTile(
                onTap: () =>
                    context.read(walletViewProvider).updateWalletView(1),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: sizes.smallPadding,
                    vertical: sizes.regularPadding),
                leading: SizedBox(
                  height: 60,
                  width: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        color: colors.kColorBackgroudSecondary,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(child: Icon(Icons.add)),
                  ),
                ),
                title: Text(_title[i], style: textStyles.kTextTitle),
              ),
            ));
  }
}
