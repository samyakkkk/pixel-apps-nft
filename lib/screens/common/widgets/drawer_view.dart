import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/connect_wallet.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: colors.kColorBackgroud,
        child: Column(
          children: [
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  title:
                      Text("About OpenArt", style: textStyles.kTextMediumText),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Blog", style: textStyles.kTextMediumText),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Help", style: textStyles.kTextMediumText),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Contact", style: textStyles.kTextMediumText),
                  onTap: () {},
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(sizes.regularPadding),
              child: LongSolidButton(
                  onPress: () => showDialog(
                        context: context,
                        builder: (_) => Dialog(
                          backgroundColor: colors.kColorBackgroud,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: ConnectWalletDialog(),
                        ),
                      ),
                  text: "Connect wallet",
                  colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple]),
            ),
          ],
        ),
      ),
    );
  }
}
