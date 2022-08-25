
import 'package:http/http.dart'as dart;
import 'dart:convert';



class Subcategories {


  String? status;
  List<Data>? data;

  Subcategories({this.status, this.data});

   Subcategories.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? subcategoryName;
  String? timeDuration;
  String? amount;

  Data({this.id, this.subcategoryName, this.timeDuration, this.amount});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subcategoryName = json['subcategory_name'];
    timeDuration = json['time_duration'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['subcategory_name'] = this.subcategoryName;
    data['time_duration'] = this.timeDuration;
    data['amount'] = this.amount;
    return data;
  }
}