import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:know_our_school/Model/model.dart';

class SchoolProvider extends ChangeNotifier{

  SchoolModel? _info;

  SchoolModel? get schoolInfo => _info;

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    final List<dynamic> data = await json.decode(response);
    _info = SchoolModel.fromJson(data.first);
    notifyListeners();
// ...
  }

}