class DataModel {
  String? user;
  String? job;
  String? createdAt;
  String? post;
  String? profileImg;
  int? commeCount;
  String? postImg;
  List<Comments>? comments;

  DataModel(
      {this.user,
      this.job,
      this.createdAt,
      this.post,
      this.profileImg,
      this.commeCount,
      this.postImg,
      this.comments});

  DataModel.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    job = json['job'];
    createdAt = json['created_at'];
    post = json['post'];
    profileImg = json['profileImg'];
    commeCount = json['commeCount'];
    postImg = json['postImg']  ?? "";
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(new Comments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['job'] = this.job;
    data['created_at'] = this.createdAt;
    data['post'] = this.post;
    data['profileImg'] = this.profileImg;
    data['commeCount'] = this.commeCount;
    data['postImg'] = this.postImg;
    if (this.comments != null) {
      data['comments'] = this.comments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Comments {
  String? user;
  String? comment;
  String? createdAt;

  Comments({this.user, this.comment, this.createdAt});

  Comments.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    comment = json['comment'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['comment'] = this.comment;
    data['created_at'] = this.createdAt;
    return data;
  }
}
