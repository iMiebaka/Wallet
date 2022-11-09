import 'package:flutter/material.dart';
import 'package:wallet/screens/coinsPage.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> pagePositionIndex = ["", "", ""];

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                "Transferwise.",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "We allow you \nto simplify payments",
                style: TextStyle(fontSize: 55, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Digital wallets enable users to make purchase from their devces",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                  children: pagePositionIndex
                      .asMap()
                      .entries
                      .map(
                        (index) => Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Icon(
                              Icons.circle,
                              color: index.key == 0
                                  ? Colors.blue.shade400
                                  : Colors.grey.shade400,
                              size: 12,
                            )),
                      )
                      .toList()),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CoinsPage()));
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue.shade600,
                  padding: const EdgeInsets.symmetric(vertical: 15)),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Get started",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
