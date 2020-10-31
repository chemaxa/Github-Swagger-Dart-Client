import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for GitignoreApi
void main() {
  var instance = new GitignoreApi();

  group('tests for GitignoreApi', () {
    // Get all gitignore templates
    //
    // List all templates available to pass as an option when [creating a repository](https://developer.github.com/v3/repos/#create-a-repository-for-the-authenticated-user).
    //
    //Future<List<String>> gitignoreGetAllTemplates() async
    test('test gitignoreGetAllTemplates', () async {
      // TODO
    });

    // Get a gitignore template
    //
    // The API also allows fetching the source of a single template. Use the raw [media type](https://developer.github.com/v3/media/) to get the raw contents.
    //
    //Future<GitignoreTemplate> gitignoreGetTemplate(String name) async
    test('test gitignoreGetTemplate', () async {
      // TODO
    });

  });
}
