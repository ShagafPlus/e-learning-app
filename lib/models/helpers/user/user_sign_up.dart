class RegisterUser {

  int userId;
  String name;
  String email;
  String phone;
  String emailVerifiedAt;
  int roleId;
  String roleName;
  String dateHuman;
  String token;

  RegisterUser({this.userId, this.name, this.email, this.phone, this.emailVerifiedAt,
    this.roleId, this.roleName, this.dateHuman, this.token});


  factory RegisterUser.fromJson(Map<String, dynamic> responseData) {
    return RegisterUser(
        userId: responseData['id'],
        name: responseData['name'],
        email: responseData['email'],
        phone: responseData['mobile_number'],
        emailVerifiedAt: responseData['email_verified_at'],
        roleId: responseData['role_id'],
        roleName: responseData['role']['name'],
        dateHuman: responseData['date_human']
    );
  }


}