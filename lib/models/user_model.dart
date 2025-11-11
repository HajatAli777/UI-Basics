class userDataModel {
  final String uid;
  final String name;
  final String email;


  userDataModel(
    {required this.uid,required this.name,required this.email,});

 
  Map<String, dynamic> touserdata() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      
    };
  }
  factory userDataModel.fromMap(Map<String, dynamic> map) {
    return userDataModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
    );
  }
}
