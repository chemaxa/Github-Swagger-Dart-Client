part of swagger.api;

class EnabledRepositories {
  /// The underlying value of this enum member.
  String value;

  EnabledRepositories._internal(this.value);

  /// The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: &#x60;all&#x60;, &#x60;none&#x60;, or &#x60;selected&#x60;.
  static EnabledRepositories all_ = EnabledRepositories._internal("all");
  /// The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: &#x60;all&#x60;, &#x60;none&#x60;, or &#x60;selected&#x60;.
  static EnabledRepositories none_ = EnabledRepositories._internal("none");
  /// The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: &#x60;all&#x60;, &#x60;none&#x60;, or &#x60;selected&#x60;.
  static EnabledRepositories selected_ = EnabledRepositories._internal("selected");

  EnabledRepositories.fromJson(dynamic data) {
    switch (data) {
          case "all": value = data; break;
          case "none": value = data; break;
          case "selected": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(EnabledRepositories data) {
    return data.value;
  }
}