import 'package:provider/provider.dart';
import 'package:tm_reklama/core/providers/balance_provider.dart';

List<ChangeNotifierProvider> providers = [
  ChangeNotifierProvider<BalanceProvider>(
    create: (context) => BalanceProvider(),
  ),
  // ChangeNotifierProvider<BannerProvider>(create: (context) => BannerProvider()),
  // ChangeNotifierProvider<RecommendedPostProvider>(
  //     create: (context) => RecommendedPostProvider()),
];
