import 'package:flutter/material.dart';
import 'package:wallet/component/iconDisplay.dart';
import 'package:wallet/component/transactionDetails.dart';

class CoinsPage extends StatelessWidget {
  const CoinsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.maxFinite,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.menu),
                Stack(
                  children: const [
                    Icon(
                      Icons.notifications_outlined,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(
                        Icons.circle,
                        size: 10,
                        color: Colors.red,
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Main Wallet",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    child: const Text(
                      "My Balance",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const Text(
                    '10,000,00.00 USD',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                IconDisplay(
                  icon: Icons.arrow_downward,
                  title: "Recieve",
                ),
                IconDisplay(
                  icon: Icons.swap_horiz,
                  title: "Swap",
                ),
                IconDisplay(
                  icon: Icons.arrow_forward,
                  title: "Send",
                ),
                IconDisplay(
                  icon: Icons.credit_card,
                  title: "Buy",
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Last Transactions",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Last Transactions",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            LastTransaction(
                image: "assets/images/icons8-bitcoin-64.png",
                coinName: "Bitcoin",
                coinInit: "BTC",
                amount: "20,333.3",
                divident: 29),
            LastTransaction(
                image: "assets/images/icons8-ethereum-64.png",
                coinName: "Ethereum",
                coinInit: "ETH",
                amount: "30,333,000",
                divident: -29),
            LastTransaction(
                image: "assets/images/icons8-tether-64.png",
                coinName: "Tether",
                coinInit: "USDT",
                amount: "520,333",
                divident: 29),
            LastTransaction(
                image: "assets/images/icons8-bitcoin-64.png",
                coinName: "Bitcoin",
                coinInit: "BTC",
                amount: "20,333.3",
                divident: 29),
            LastTransaction(
                image: "assets/images/icons8-binance-64.png",
                coinName: "BNB",
                coinInit: "BNB",
                amount: "520,333",
                divident: -29),
          ],
        ),
      )),
    );
  }
}
