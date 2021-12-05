class User {
  String? id;
  String? name;
  String? email;
  String? regdate;
  String? otp;

  User(
    {
      required this.id,
      required this.name,
      required this.email,
      required this.regdate,
      required this.otp
    }
  );
  User.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    email = json["email"];
    regdate = json["regdate"];
    otp = json["otp"];
  }
}