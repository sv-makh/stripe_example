import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_example/payment_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = "pk_test_51KjNQvGdIA07RfpY6wd42kYC60ZYvYzrZF1Ju7ryzsvxQCDiPCVavqwWXXmoOi3m6eUMu9HD5fr5cXtxDMDk2xrH00ZiOrebB5";
  //await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stripe Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const PaymentPage(),
    );
  }
}
