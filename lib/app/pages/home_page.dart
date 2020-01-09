import 'package:bitcoin_price/app/services/bitcoin_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final service = BitcoinService();

  var _result = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/bitcoin.png"),
          Padding(
            child: Text(
              this._result,
              style: TextStyle(
                  color: Colors.deepOrange, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.only(top: 20, bottom: 20),
          ),
          RaisedButton(
            onPressed: () async {
              setState(() {
                this._result = "Carregando...";
              });

              var _bitCoinValue = await service.get();

              setState(() {
                this._result = _bitCoinValue;
              });
            },
            child: Text(
              "Atualizar",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}
