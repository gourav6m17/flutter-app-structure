// To parse this JSON data, do
//
//     final homePageModel = homePageModelFromJson(jsonString);

import 'dart:convert';

HomePageModel homePageModelFromJson(String str) =>
    HomePageModel.fromJson(json.decode(str));

String homePageModelToJson(HomePageModel data) => json.encode(data.toJson());

class HomePageModel {
  HomePageModel({
    this.worldrecord,
    this.announcements,
    this.dailynaamcharcha,
    this.upcomingsatsang,
    this.number,
    this.totalwelfarework,
    this.recentnews,
  });

  List<Worldrecord>? worldrecord;
  List<Announcement>? announcements;
  Dailynaamcharcha? dailynaamcharcha;
  DateTime? upcomingsatsang;
  String? number;
  String? totalwelfarework;
  List<Recentnew>? recentnews;

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
        worldrecord: List<Worldrecord>.from(
            json["worldrecord"].map((x) => Worldrecord.fromJson(x))),
        announcements: List<Announcement>.from(
            json["announcements"].map((x) => Announcement.fromJson(x))),
        dailynaamcharcha: Dailynaamcharcha.fromJson(json["dailynaamcharcha"]),
        upcomingsatsang: DateTime.parse(json["upcomingsatsang"]),
        number: json["number"],
        totalwelfarework: json["totalwelfarework"],
        recentnews: List<Recentnew>.from(
            json["recentnews"].map((x) => Recentnew.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "worldrecord": List<dynamic>.from(worldrecord!.map((x) => x.toJson())),
        "announcements":
            List<dynamic>.from(announcements!.map((x) => x.toJson())),
        "dailynaamcharcha": dailynaamcharcha!.toJson(),
        "upcomingsatsang":
            "${upcomingsatsang!.year.toString().padLeft(4, '0')}-${upcomingsatsang!.month.toString().padLeft(2, '0')}-${upcomingsatsang!.day.toString().padLeft(2, '0')}",
        "number": number,
        "totalwelfarework": totalwelfarework,
        "recentnews": List<dynamic>.from(recentnews!.map((x) => x.toJson())),
      };
}

class Announcement {
  Announcement({
    this.announcementId,
    this.announcementDetail,
    this.announcementDate,
    this.announcementExpiry,
    this.announcementIsactive,
    this.announcementLang,
  });

  int? announcementId;
  String? announcementDetail;
  DateTime? announcementDate;
  DateTime? announcementExpiry;
  int? announcementIsactive;
  int? announcementLang;

  factory Announcement.fromJson(Map<String, dynamic> json) => Announcement(
        announcementId: json["announcement_id"],
        announcementDetail: json["announcement_detail"],
        announcementDate: DateTime.parse(json["announcement_date"]),
        announcementExpiry: DateTime.parse(json["announcement_expiry"]),
        announcementIsactive: json["announcement_isactive"],
        announcementLang: json["announcement_lang"],
      );

  Map<String, dynamic> toJson() => {
        "announcement_id": announcementId,
        "announcement_detail": announcementDetail,
        "announcement_date": announcementDate!.toIso8601String(),
        "announcement_expiry": announcementExpiry!.toIso8601String(),
        "announcement_isactive": announcementIsactive,
        "announcement_lang": announcementLang,
      };
}

class Dailynaamcharcha {
  Dailynaamcharcha({
    this.mondaytosaturday,
    this.sunday,
  });

  String? mondaytosaturday;
  String? sunday;

  factory Dailynaamcharcha.fromJson(Map<String, dynamic> json) =>
      Dailynaamcharcha(
        mondaytosaturday: json["mondaytosaturday"],
        sunday: json["sunday"],
      );

  Map<String, dynamic> toJson() => {
        "mondaytosaturday": mondaytosaturday,
        "sunday": sunday,
      };
}

class Recentnew {
  Recentnew({
    this.id,
    this.langId,
    this.title,
    this.titleSlug,
    this.titleHash,
    this.keywords,
    this.summary,
    this.content,
    this.categoryId,
    this.imageBig,
    this.imageDefault,
    this.imageSlider,
    this.imageMid,
    this.imageSmall,
    this.imageMime,
    this.optionalUrl,
    this.pageviews,
    this.needAuth,
    this.isSlider,
    this.sliderOrder,
    this.isFeatured,
    this.featuredOrder,
    this.isRecommended,
    this.isBreaking,
    this.isScheduled,
    this.visibility,
    this.showRightColumn,
    this.postType,
    this.videoPath,
    this.imageUrl,
    this.videoUrl,
    this.videoEmbedCode,
    this.userId,
    this.status,
    this.feedId,
    this.postUrl,
    this.showPostUrl,
    this.imageDescription,
    this.showItemNumbers,
    this.createdAt,
    this.updatedAt,
    this.dssPostId,
  });

  int? id;
  int? langId;
  String? title;
  String? titleSlug;
  dynamic titleHash;
  String? keywords;
  String? summary;
  String? content;
  int? categoryId;
  String? imageBig;
  String? imageDefault;
  String? imageSlider;
  String? imageMid;
  String? imageSmall;
  String? imageMime;
  String? optionalUrl;
  int? pageviews;
  int? needAuth;
  int? isSlider;
  int? sliderOrder;
  int? isFeatured;
  int? featuredOrder;
  int? isRecommended;
  int? isBreaking;
  int? isScheduled;
  int? visibility;
  int? showRightColumn;
  String? postType;
  dynamic videoPath;
  String? imageUrl;
  dynamic videoUrl;
  dynamic videoEmbedCode;
  int? userId;
  int? status;
  dynamic feedId;
  String? postUrl;
  int? showPostUrl;
  String? imageDescription;
  int? showItemNumbers;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? dssPostId;

  factory Recentnew.fromJson(Map<String, dynamic> json) => Recentnew(
        id: json["id"],
        langId: json["lang_id"],
        title: json["title"],
        titleSlug: json["title_slug"],
        titleHash: json["title_hash"],
        keywords: json["keywords"],
        summary: json["summary"],
        content: json["content"],
        categoryId: json["category_id"],
        imageBig: json["image_big"],
        imageDefault: json["image_default"],
        imageSlider: json["image_slider"],
        imageMid: json["image_mid"],
        imageSmall: json["image_small"],
        imageMime: json["image_mime"],
        optionalUrl: json["optional_url"],
        pageviews: json["pageviews"],
        needAuth: json["need_auth"],
        isSlider: json["is_slider"],
        sliderOrder: json["slider_order"],
        isFeatured: json["is_featured"],
        featuredOrder: json["featured_order"],
        isRecommended: json["is_recommended"],
        isBreaking: json["is_breaking"],
        isScheduled: json["is_scheduled"],
        visibility: json["visibility"],
        showRightColumn: json["show_right_column"],
        postType: json["post_type"],
        videoPath: json["video_path"],
        imageUrl: json["image_url"],
        videoUrl: json["video_url"],
        videoEmbedCode: json["video_embed_code"],
        userId: json["user_id"],
        status: json["status"],
        feedId: json["feed_id"],
        postUrl: json["post_url"],
        showPostUrl: json["show_post_url"],
        imageDescription: json["image_description"],
        showItemNumbers: json["show_item_numbers"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        dssPostId: json["dss_post_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "lang_id": langId,
        "title": title,
        "title_slug": titleSlug,
        "title_hash": titleHash,
        "keywords": keywords,
        "summary": summary,
        "content": content,
        "category_id": categoryId,
        "image_big": imageBig,
        "image_default": imageDefault,
        "image_slider": imageSlider,
        "image_mid": imageMid,
        "image_small": imageSmall,
        "image_mime": imageMime,
        "optional_url": optionalUrl,
        "pageviews": pageviews,
        "need_auth": needAuth,
        "is_slider": isSlider,
        "slider_order": sliderOrder,
        "is_featured": isFeatured,
        "featured_order": featuredOrder,
        "is_recommended": isRecommended,
        "is_breaking": isBreaking,
        "is_scheduled": isScheduled,
        "visibility": visibility,
        "show_right_column": showRightColumn,
        "post_type": postType,
        "video_path": videoPath,
        "image_url": imageUrl,
        "video_url": videoUrl,
        "video_embed_code": videoEmbedCode,
        "user_id": userId,
        "status": status,
        "feed_id": feedId,
        "post_url": postUrl,
        "show_post_url": showPostUrl,
        "image_description": imageDescription,
        "show_item_numbers": showItemNumbers,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "dss_post_id": dssPostId,
      };
}

class Worldrecord {
  Worldrecord({
    this.title,
    this.total,
    this.image,
  });

  String? title;
  int? total;
  String? image;

  factory Worldrecord.fromJson(Map<String, dynamic> json) => Worldrecord(
        title: json["title"],
        total: json["total"],
        image: json["image"]
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "total": total,
        "image":image
      };
}
