import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum WalletView { select, scan, confirm }

final walletViewProvider = ChangeNotifierProvider((ref) => WalletViewModel());

class WalletViewModel extends ChangeNotifier {}
