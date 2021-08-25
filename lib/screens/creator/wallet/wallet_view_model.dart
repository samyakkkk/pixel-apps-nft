import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum WalletView { select, scan, confirm }

final walletViewProvider = ChangeNotifierProvider((ref) => WalletViewModel());

class WalletViewModel extends ChangeNotifier {
  List<WalletView> viewList = [
    WalletView.select,
    WalletView.scan,
    WalletView.confirm,
  ];

  int currentWalletViewIndex = 0;

  WalletView getView() {
    return viewList[currentWalletViewIndex];
  }

  void updateWalletView(int index) {
    currentWalletViewIndex = index;
    notifyListeners();
  }
}
