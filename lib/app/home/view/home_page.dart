import 'package:citrus_leaf_assessment/app/api/view_model/api_view_model.dart';
import 'package:citrus_leaf_assessment/app/home/view/widgets/app_bar.dart';
import 'package:citrus_leaf_assessment/app/home/view/widgets/centre_container.dart';
import 'package:citrus_leaf_assessment/app/home/view/widgets/page_view_widget.dart';
import 'package:citrus_leaf_assessment/app/home/view/widgets/sponsored_link.dart';
import 'package:citrus_leaf_assessment/app/home/view/widgets/transfer_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final apiPro = Provider.of<ApiViewModel>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppBarWidget(),
            Expanded(
              child: Center(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const PageViewWidget(),
                    const TransferMoneyCard(),
                    const CentreContainer(),
                    const SponsoredLink(),
                    const PageViewWidget(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          apiPro.onTap(context);
                        },
                        child: const Text(
                          "API RESPONSE",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
