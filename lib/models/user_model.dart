class User {
  String email;
  String password;
  User({this.email, this.password});

  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return new User(
        email: parsedJson['email'] ?? "",
        password: parsedJson['password'] ?? "");
  }

  Map<String, dynamic> toJson() {
    return {"email": this.email, "password": this.password};
  }
}
