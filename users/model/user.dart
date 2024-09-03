// ignore_for_file: public_member_api_docs, sort_constructors_first
class user {
  int id;
  String fname;
  String lname;
  String username;
  String phone;
  String email;
  String sex;
  String password;
  String password1;
  String address;
  String usertype;
  user(
    this.id,
    this.fname,
    this.lname,
    this.username,
    this.phone,
    this.email,
    this.sex,
    this.password,
    this.password1,
    this.address,
    this.usertype,
  );

  Map<String, dynamic> toJson() => {
        'id': id.toString(),
        'fname': fname.toString(),
        'lname': lname.toString(),
        'username': username.toString(),
        'phone': phone.toString(),
        'email': email.toString(),
        'sex': sex.toString(),
        'password': password.toString(),
        'password1': password1.toString(),
        'address': address.toString(),
        'usertype': usertype.toString(),
      };
}
