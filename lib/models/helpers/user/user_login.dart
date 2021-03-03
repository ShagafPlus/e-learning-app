class User {

  int userId;
  String name;
  String email;
  String phone;
  String emailVerifiedAt;
  int roleId;
  String roleName;
  String dateHuman;
  String token;

  User({this.userId, this.name, this.email, this.phone, this.emailVerifiedAt,
      this.roleId, this.roleName, this.dateHuman, this.token});

  /*
  // let this for registration
  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        userId: responseData['id'],
        name: responseData['name'],
        email: responseData['email'],
        phone: responseData['mobile_number'],
        emailVerifiedAt: responseData['email_verified_at'],
        roleId: responseData['role_id'],
        roleName: responseData['role']['name'],
        dateHuman: responseData['date_human']//,
//        token: responseData['token'],
    );
  }
  */

  // let this for login

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
      userId: responseData['user']['id'],
      name: responseData['user']['name'],
      email: responseData['user']['email'],
      phone: responseData['user']['mobile_number'],
      emailVerifiedAt: responseData['user']['email_verified_at'],
      roleId: responseData['user']['role']['id'],
      roleName: responseData['user']['role']['name'],
      dateHuman: responseData['user']['date_human'],
      token: responseData['token'],
    );
  }


}