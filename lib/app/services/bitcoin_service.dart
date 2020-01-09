import 'dart:convert';

import 'package:http/http.dart' as http;

class BitcoinService {
  get _url => "https://blockchain.info/ticker";

  get() async {
    var _response = await http.get(_url);

    Map<String, dynamic> _jsonDecode = json.decode(_response.body);

    var _jsonDecodeBr = _jsonDecode["BRL"];

    return "${_jsonDecodeBr['symbol']} ${_jsonDecodeBr['buy']}";
  }
}
