part of swagger.api;

class ReposownerrepocheckrunsOutputImages {
  /* The alternative text for the image. */
  String alt = null;
/* The full URL of the image. */
  String imageUrl = null;
/* A short image description. */
  String caption = null;

  ReposownerrepocheckrunsOutputImages();

  @override
  String toString() {
    return 'ReposownerrepocheckrunsOutputImages[alt=$alt, imageUrl=$imageUrl, caption=$caption, ]';
  }

  ReposownerrepocheckrunsOutputImages.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    alt = json['alt'];
    imageUrl = json['image_url'];
    caption = json['caption'];
  }

  Map<String, dynamic> toJson() {
    return {
      'alt': alt,
      'image_url': imageUrl,
      'caption': caption
     };
  }

  static List<ReposownerrepocheckrunsOutputImages> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepocheckrunsOutputImages>() : json.map((value) => new ReposownerrepocheckrunsOutputImages.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepocheckrunsOutputImages> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepocheckrunsOutputImages>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepocheckrunsOutputImages.fromJson(value));
    }
    return map;
  }
}
