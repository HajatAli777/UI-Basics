class userDataModel {
  final String uid;
  final String name;
  final String email;
  final String? profilepic;


  userDataModel(
    {required this.uid,required this.name,required this.email, this.profilepic});
 
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'profilepic': profilepic,
      
    };
  }
  factory userDataModel.fromJson(Map<String, dynamic> map) {
    return userDataModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
      profilepic: map['profilepic'],
    );
  }
}
