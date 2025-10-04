class Event {
  String imagePath;
  String EventName;
  String Description;
  String Localisation;
  String price;
  String ClubName;
  String Followers;
  String Date;
  String Time;
  bool isLiked;

  Event({
  required this.imagePath,
  required this.EventName,
  required this.Description,
  required this.Localisation,
  required this.price,
  required this.ClubName,
  required this.Followers,
  required this.Date,
  required this.Time,
   this.isLiked = false,
   });

   void eventLiked() {
    isLiked = !isLiked;
  }

}