part of swagger.api;

class Page {
  /* The API address for accessing this Page resource. */
  String url = null;
/* The status of the most recent build of the Page. */
  String status = null;
  //enum statusEnum {  built,  building,  errored,  };
/* The Pages site's custom domain */
  String cname = null;
/* Whether the Page has a custom 404 page. */
  bool custom404 = false;
/* The web address the Page can be accessed from. */
  String htmlUrl = null;

  PagesSourceHash source = null;

  Page();

  @override
  String toString() {
    return 'Page[url=$url, status=$status, cname=$cname, custom404=$custom404, htmlUrl=$htmlUrl, source=$source, ]';
  }

  Page.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    status = json['status'];
    cname = json['cname'];
    custom404 = json['custom_404'];
    htmlUrl = json['html_url'];
    source = new PagesSourceHash.fromJson(json['source']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'status': status,
      'cname': cname,
      'custom_404': custom404,
      'html_url': htmlUrl,
      'source': source
     };
  }

  static List<Page> listFromJson(List<dynamic> json) {
    return json == null ? new List<Page>() : json.map((value) => new Page.fromJson(value)).toList();
  }

  static Map<String, Page> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Page>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Page.fromJson(value));
    }
    return map;
  }
}
