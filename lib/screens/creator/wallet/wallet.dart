import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/creator/wallet/views/confirm_wallet.dart';
import 'package:pixel_apps_ntf/screens/creator/wallet/views/scan_wallet.dart';
import 'package:pixel_apps_ntf/screens/creator/wallet/views/select_wallet.dart';
import 'package:pixel_apps_ntf/screens/creator/wallet/wallet_view_model.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class CreatorWallet extends ConsumerWidget {
  static const String id = "/creatorWallet";
  const CreatorWallet({Key? key}) : super(key: key);

  Widget _view(WalletView v) {
    switch (v) {
      case WalletView.confirm:
        return ConfirmWalletView();
      case WalletView.scan:
        return ScanWalletView();
      case WalletView.select:
        return SelectWalletView();
      default:
        return Container();
    }
  }

  String enumToString(WalletView v) {
    switch (v) {
      case WalletView.confirm:
        return "Confirm";
      case WalletView.scan:
        return "Scan";
      case WalletView.select:
        return "Select";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final viewModel = watch(walletViewProvider);
    return Scaffold(
      backgroundColor: colors.kColorBackgroud,
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
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: viewModel.viewList
                    .map((e) => Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            WalletStatus(
                              completed: viewModel.viewList.indexOf(e) <
                                  viewModel.currentWalletViewIndex,
                              selected: viewModel.viewList.indexOf(e) ==
                                  viewModel.currentWalletViewIndex,
                              stepNumber:
                                  '${viewModel.viewList.indexOf(e) + 1}',
                              title: enumToString(e),
                            ),
                            Visibility(
                              visible: viewModel.viewList.indexOf(e) !=
                                  viewModel.viewList.length - 1,
                              child: Container(
                                width: 50,
                                child: Center(
                                  child: Divider(
                                    thickness: 1,
                                    height: 1,
                                    endIndent: 10,
                                    indent: 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                    .toList(),
              ),
              Sizer.vertical24(),
              _view(viewModel.getView()),
            ],
          ),
        ),
      ),
    );
  }
}

class WalletStatus extends StatelessWidget {
  final String title;
  final String stepNumber;
  final bool selected;
  final bool completed;

  const WalletStatus({
    Key? key,
    required this.title,
    required this.stepNumber,
    required this.selected,
    required this.completed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: selected || completed
                ? LinearGradient(
                    colors: [
                      colors.kColorBtnBlue,
                      colors.kColorBtnPurple,
                    ],
                  )
                : LinearGradient(
                    colors: [
                      colors.kColorFontPlaceholder,
                      colors.kColorShadow,
                    ],
                  ),
          ),
          child: Center(
            child: completed
                ? Icon(Icons.check_outlined, color: Colors.white)
                : Text(stepNumber,
                    style: textStyles.kTextBtnText
                        .copyWith(color: colors.kColorFontPrimary)),
          ),
        ),
        Sizer.half(),
        Text(title,
            style: textStyles.kTextRegular.copyWith(
                color: selected || completed
                    ? colors.kColorFontPrimary
                    : colors.kColorFontPlaceholder)),
      ],
    );
  }
}
