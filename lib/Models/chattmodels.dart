class ChattModels{
  String ?uid;
  List ?paritcipants;
  ChattModels({this.uid,this.paritcipants});

  ChattModels.fromap(Map<String,dynamic>map){

    uid=map['uid'];
    paritcipants=map['paritcipants'];
  }
  Map<String,dynamic>Tomap(){
    return{
      'uid':uid,
      'paritcipants':paritcipants,
    };
  }

}