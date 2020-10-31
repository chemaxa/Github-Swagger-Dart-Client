part of swagger.api;

class FilecommitCommitAuthor {
  
  String date = null;

  String name = null;

  String email = null;

  FilecommitCommitAuthor();

  @override
  String toString() {
    return 'FilecommitCommitAuthor[date=$date, name=$name, email=$email, ]';
  }

  FilecommitCommitAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date = json['date'];
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'name': name,
      'email': email
     };
  }

  static List<FilecommitCommitAuthor> listFromJson(List<dynamic> json) {
    return json == null ? new List<FilecommitCommitAuthor>() : json.map((value) => new FilecommitCommitAuthor.fromJson(value)).toList();
  }

  static Map<String, FilecommitCommitAuthor> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FilecommitCommitAuthor>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FilecommitCommitAuthor.fromJson(value));
    }
    return map;
  }
}
