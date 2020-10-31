part of swagger.api;

class Actor {
  
  int id = null;

  String login = null;

  String displayLogin = null;

  String gravatarId = null;

  String url = null;

  String avatarUrl = null;

  Actor();

  @override
  String toString() {
    return 'Actor[id=$id, login=$login, displayLogin=$displayLogin, gravatarId=$gravatarId, url=$url, avatarUrl=$avatarUrl, ]';
  }

  Actor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    login = json['login'];
    displayLogin = json['display_login'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    avatarUrl = json['avatar_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'login': login,
      'display_login': displayLogin,
      'gravatar_id': gravatarId,
      'url': url,
      'avatar_url': avatarUrl
     };
  }

  static List<Actor> listFromJson(List<dynamic> json) {
    return json == null ? new List<Actor>() : json.map((value) => new Actor.fromJson(value)).toList();
  }

  static Map<String, Actor> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Actor>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Actor.fromJson(value));
    }
    return map;
  }
}
