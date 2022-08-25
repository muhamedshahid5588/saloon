class Cart {
  String? status;
  Message? message;

  Cart({this.status, this.message});

  Cart.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message =
    json['message'] != null ? new Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.message != null) {
      data['message'] = this.message!.toJson();
    }
    return data;
  }
}

class Message {
  List<String>? customerId;
  List<String>? bookingDate;
  List<String>? bookingTime;

  Message({this.customerId, this.bookingDate, this.bookingTime});

  Message.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'].cast<String>();
    bookingDate = json['booking_date'].cast<String>();
    bookingTime = json['booking_time'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['booking_date'] = this.bookingDate;
    data['booking_time'] = this.bookingTime;
    return data;
  }
}