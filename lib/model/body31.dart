part of swagger.api;

class Body31 {
  /* Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get an organization public key](https://developer.github.com/v3/actions/secrets/#get-an-organization-public-key) endpoint. */
  String encryptedValue = null;
/* ID of the key you used to encrypt the secret. */
  String keyId = null;
/* Configures the access that repositories have to the organization secret. Can be one of:   \\- `all` - All repositories in an organization can access the secret.   \\- `private` - Private repositories in an organization can access the secret.   \\- `selected` - Only specific repositories can access the secret. */
  String visibility = null;
  //enum visibilityEnum {  all,  private,  selected,  };
/* An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the `visibility` is set to `selected`. You can manage the list of selected repositories using the [List selected repositories for an organization secret](https://developer.github.com/v3/actions/secrets/#list-selected-repositories-for-an-organization-secret), [Set selected repositories for an organization secret](https://developer.github.com/v3/actions/secrets/#set-selected-repositories-for-an-organization-secret), and [Remove selected repository from an organization secret](https://developer.github.com/v3/actions/secrets/#remove-selected-repository-from-an-organization-secret) endpoints. */
  List<String> selectedRepositoryIds = [];

  Body31();

  @override
  String toString() {
    return 'Body31[encryptedValue=$encryptedValue, keyId=$keyId, visibility=$visibility, selectedRepositoryIds=$selectedRepositoryIds, ]';
  }

  Body31.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    encryptedValue = json['encrypted_value'];
    keyId = json['key_id'];
    visibility = json['visibility'];
    selectedRepositoryIds = (json['selected_repository_ids'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'encrypted_value': encryptedValue,
      'key_id': keyId,
      'visibility': visibility,
      'selected_repository_ids': selectedRepositoryIds
     };
  }

  static List<Body31> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body31>() : json.map((value) => new Body31.fromJson(value)).toList();
  }

  static Map<String, Body31> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body31>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body31.fromJson(value));
    }
    return map;
  }
}
