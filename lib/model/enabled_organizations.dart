part of swagger.api;

class EnabledOrganizations {
  /// The underlying value of this enum member.
  String value;

  EnabledOrganizations._internal(this.value);

  /// The policy that controls the organizations in the enterprise that are allowed to run GitHub Actions. Can be one of: &#x60;all&#x60;, &#x60;none&#x60;, or &#x60;selected&#x60;.
  static EnabledOrganizations all_ = EnabledOrganizations._internal("all");
  /// The policy that controls the organizations in the enterprise that are allowed to run GitHub Actions. Can be one of: &#x60;all&#x60;, &#x60;none&#x60;, or &#x60;selected&#x60;.
  static EnabledOrganizations none_ = EnabledOrganizations._internal("none");
  /// The policy that controls the organizations in the enterprise that are allowed to run GitHub Actions. Can be one of: &#x60;all&#x60;, &#x60;none&#x60;, or &#x60;selected&#x60;.
  static EnabledOrganizations selected_ = EnabledOrganizations._internal("selected");

  EnabledOrganizations.fromJson(dynamic data) {
    switch (data) {
          case "all": value = data; break;
          case "none": value = data; break;
          case "selected": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(EnabledOrganizations data) {
    return data.value;
  }
}