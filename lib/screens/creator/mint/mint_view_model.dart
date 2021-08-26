import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum MintView { fixed, auction }

final mintViewProvider = ChangeNotifierProvider((ref) => MintViewModel());

class MintViewModel extends ChangeNotifier {
  List<MintView> viewList = [
    MintView.fixed,
    MintView.auction,
  ];

  int currentMintViewIndex = 0;

  MintView getView() {
    return viewList[currentMintViewIndex];
  }

  void updateMintView(int index) {
    currentMintViewIndex = index;
    notifyListeners();
  }
}
