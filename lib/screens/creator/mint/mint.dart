import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/shadow_container.dart';
import 'package:pixel_apps_ntf/screens/creator/mint/mint_view_model.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

import 'view/auction_mint_view.dart';
import 'view/fixed_mint_view.dart';

class MintScreen extends ConsumerWidget {
  static const String id = "/mintScreen";
  const MintScreen({Key? key}) : super(key: key);

  Widget _view(MintView v) {
    switch (v) {
      case MintView.fixed:
        return FixedMintView();
      case MintView.auction:
        return AuctionMintView();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final viewModel = watch(mintViewProvider);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(sizes.mediumPadding),
              child: Column(
                children: [
                  Sizer.vertical64(),
                  ShadowContainer(
                    borderRadius: BorderRadius.circular(30),
                    child: Padding(
                      padding: EdgeInsets.all(sizes.smallPadding),
                      child: Row(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () => context
                                .read(mintViewProvider)
                                .updateMintView(0),
                            child: TopTabBar(
                                text: "Fixed price",
                                selected: viewModel.currentMintViewIndex == 0),
                          )),
                          Sizer.horizontal(),
                          Expanded(
                              child: InkWell(
                                  onTap: () => context
                                      .read(mintViewProvider)
                                      .updateMintView(1),
                                  child: TopTabBar(
                                      text: "Auction",
                                      selected:
                                          viewModel.currentMintViewIndex ==
                                              1))),
                        ],
                      ),
                    ),
                  ),
                  Sizer.vertical20(),
                  _view(viewModel.getView())
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(sizes.regularPadding),
                child: ShadowContainer(
                    borderRadius: BorderRadius.circular(52),
                    child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopTabBar extends StatelessWidget {
  final String text;
  final bool selected;

  const TopTabBar({Key? key, required this.text, required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: sizes.regularPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
            colors: selected
                ? [colors.kColorBtnBlue, colors.kColorBtnPurple]
                : [Colors.grey[200]!, Colors.grey[200]!]),
      ),
      child: Center(
        child: Text(text,
            style: textStyles.kTextTitle.copyWith(
                color: selected ? Colors.white : colors.kColorFontPlaceholder)),
      ),
    );
  }
}
