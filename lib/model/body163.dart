part of swagger.api;

class Body163 {
  /* The new name of the user. */
  String name = null;
/* The publicly visible email address of the user. */
  String email = null;
/* The new blog URL of the user. */
  String blog = null;
/* The new Twitter username of the user. */
  String twitterUsername = null;
/* The new company of the user. */
  String company = null;
/* The new location of the user. */
  String location = null;
/* The new hiring availability of the user. */
  bool hireable = null;
/* The new short biography of the user. */
  String bio = null;

  Body163();

  @override
  String toString() {
    return 'Body163[name=$name, email=$email, blog=$blog, twitterUsername=$twitterUsername, company=$company, location=$location, hireable=$hireable, bio=$bio, ]';
  }

  Body163.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    email = json['email'];
    blog = json['blog'];
    twitterUsername = json['twitter_username'];
    company = json['company'];
    location = json['location'];
    hireable = json['hireable'];
    bio = json['bio'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'blog': blog,
      'twitter_username': twitterUsername,
      'company': company,
      'location': location,
      'hireable': hireable,
      'bio': bio
     };
  }

  static List<Body163> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body163>() : json.map((value) => new Body163.fromJson(value)).toList();
  }

  static Map<String, Body163> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body163>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body163.fromJson(value));
    }
    return map;
  }
}
