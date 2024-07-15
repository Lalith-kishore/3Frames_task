class PrettyApi {
  int? id;
  String? name;
  String? company;
  String? username;
  String? email;
  String? address;
  String? zip;
  String? state;
  String? country;
  String? phone;
  String? photo;

  PrettyApi(
      {this.id,
      this.name,
      this.company,
      this.username,
      this.email,
      this.address,
      this.zip,
      this.state,
      this.country,
      this.phone,
      this.photo});

  PrettyApi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    company = json['company'];
    username = json['username'];
    email = json['email'];
    address = json['address'];
    zip = json['zip'];
    state = json['state'];
    country = json['country'];
    phone = json['phone'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['company'] = company;
    data['username'] = username;
    data['email'] = email;
    data['address'] = address;
    data['zip'] = zip;
    data['state'] = state;
    data['country'] = country;
    data['phone'] = phone;
    data['photo'] = photo;
    return data;
  }
}
