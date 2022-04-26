class UserModels{
  String? uid;
  String ?email;
  String? fullname;
  String? profilepic;
  UserModels({this.profilepic,this.fullname,this.email,this.uid});
  UserModels.frommap(Map<String,dynamic>map){
    uid=map['uid'];
    email=map['email'];
    fullname=map['fullname'];
    profilepic=map['profilepic'];
  }
  Map<String,dynamic>ToMap(){
    return {
      'uid':uid,
      'email':email,
      'fullname':fullname,
      'profilepic':profilepic,
    };
  }
}