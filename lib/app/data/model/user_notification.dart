// To parse this JSON data, do
//
//     final userNotification = userNotificationFromJson(jsonString);

import 'dart:convert';

UserNotification userNotificationFromJson(String str) => UserNotification.fromJson(json.decode(str));

String userNotificationToJson(UserNotification data) => json.encode(data.toJson());

class UserNotification {
  UserNotification({
    required this.content,
    this.pageable,
    this.totalElements,
    this.totalPages,
    this.last,
    this.size,
    this.number,
    this.sort,
    this.first,
    this.numberOfElements,
    this.empty,
  });

  List<Content> content;
  Pageable? pageable;
  int? totalElements;
  int? totalPages;
  bool? last;
  int? size;
  int? number;
  Sort? sort;
  bool? first;
  int? numberOfElements;
  bool? empty;

  factory UserNotification.fromJson(Map<String, dynamic> json) => UserNotification(
    content: List<Content>.from(json["content"].map((x) => Content.fromJson(x))),
    pageable: Pageable.fromJson(json["pageable"]),
    totalElements: json["totalElements"],
    totalPages: json["totalPages"],
    last: json["last"],
    size: json["size"],
    number: json["number"],
    sort: Sort.fromJson(json["sort"]),
    first: json["first"],
    numberOfElements: json["numberOfElements"],
    empty: json["empty"],
  );

  Map<String, dynamic> toJson() => {
    "content": List<dynamic>.from(content.map((x) => x.toJson())),
    "pageable": pageable!.toJson(),
    "totalElements": totalElements,
    "totalPages": totalPages,
    "last": last,
    "size": size,
    "number": number,
    "sort": sort!.toJson(),
    "first": first,
    "numberOfElements": numberOfElements,
    "empty": empty,
  };
}

class Content {
  Content({
    required this.id,
    required this.toolnotificationId,
    required this.userId,
  });

  int id;
  int toolnotificationId;
  int userId;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    id: json["id"],
    toolnotificationId: json["toolnotificationId"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "toolnotificationId": toolnotificationId,
    "userId": userId,
  };
}

class Pageable {
  Pageable({
    this.sort,
    this.offset,
    this.pageNumber,
    this.pageSize,
    this.unpaged,
    this.paged,
  });

  Sort? sort;
  int? offset;
  int? pageNumber;
  int? pageSize;
  bool? unpaged;
  bool? paged;

  factory Pageable.fromJson(Map<String, dynamic> json) => Pageable(
    sort: Sort.fromJson(json["sort"]),
    offset: json["offset"],
    pageNumber: json["pageNumber"],
    pageSize: json["pageSize"],
    unpaged: json["unpaged"],
    paged: json["paged"],
  );

  Map<String, dynamic> toJson() => {
    "sort": sort!.toJson(),
    "offset": offset,
    "pageNumber": pageNumber,
    "pageSize": pageSize,
    "unpaged": unpaged,
    "paged": paged,
  };
}

class Sort {
  Sort({
    this.unsorted,
    this.sorted,
    this.empty,
  });

  bool? unsorted;
  bool? sorted;
  bool? empty;

  factory Sort.fromJson(Map<String, dynamic> json) => Sort(
    unsorted: json["unsorted"],
    sorted: json["sorted"],
    empty: json["empty"],
  );

  Map<String, dynamic> toJson() => {
    "unsorted": unsorted,
    "sorted": sorted,
    "empty": empty,
  };
}
