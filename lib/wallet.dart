import 'package:five_july/textstyles.dart';
import 'package:flutter/material.dart';

class wallet extends StatefulWidget {
  const wallet({super.key});

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  List<Icon> currencyicon = [
    Icon(Icons.currency_exchange, color: Colors.green, size: 25),
    Icon(Icons.currency_bitcoin_outlined, color: Colors.yellow[800], size: 30),
  ];
  List<Text> currencytitle = [
    Text(
      'USDT',
      style: fieldstyles,
    ),
    Text(
      'BTC',
      style: fieldstyles,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, const Color.fromARGB(255, 15, 31, 123)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [.01, 1.0])),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.wallet,
                  size: 25,
                  color: Colors.white,
                ),
                Text(
                  '  My Wallet',
                  style: signupbutton,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '   Wallet Balance',
                        style: signupbutton,
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.indigo[100],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(80),
                                bottomRight: Radius.circular(5),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundImage: AssetImage('assets/images/t.png'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '4,250.37',
                        style: signup,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  '   Redeem Your Server',
                  style: signupbutton,
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: currencyicon.length,
                  itemBuilder: ((BuildContext context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 8, left: 10, right: 10),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.indigo[900],
                      ),
                      child: ListTile(
                        title: currencytitle[index],
                        subtitle: Text(
                          'Exchangeable TC',
                          style: walletcurrency,
                        ),
                        leading: currencyicon[index],
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  '   Purchased Targo Coin',
                  style: signupbutton,
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo[700]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        '  Price',
                        style: targocoin,
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Text(
                        '\$10',
                        style: targocoinrate,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '  Get Targo Coin',
                        style: targocoin,
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Text(
                        "1000 TC",
                        style: targocoinrate,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      print('Purchased');
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: targocoinrate,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
