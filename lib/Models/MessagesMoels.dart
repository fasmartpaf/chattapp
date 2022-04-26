class MessageModels{
  String?uid;
  String?sender;
  String?text;
  bool?seen;
  MessageModels ({this.uid,this.text,this.seen,this.sender});
  MessageModels.frommap(Map<String,dynamic>map){
    uid=map['uid'];
    text=map['text'];
    sender=map['sender'];
    seen=map['seen'];
  }
  Map<String,dynamic> Tomap(){
    return{
      'uid':uid,
      'text':text,
      'sendere':sender,
      'seen':seen,
  };
}
}
