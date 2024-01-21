class takenInfo {
  String? taken;

  takenInfo({this.taken});

  takenInfo.fromJson(Map<String, dynamic> json) {
    taken = json['taken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['taken'] = this.taken;
    return data;
  }
}
