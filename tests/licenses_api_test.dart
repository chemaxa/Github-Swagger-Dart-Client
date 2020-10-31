import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for LicensesApi
void main() {
  var instance = new LicensesApi();

  group('tests for LicensesApi', () {
    // Get a license
    //
    //Future<License> licensesGet(String license) async
    test('test licensesGet', () async {
      // TODO
    });

    // Get all commonly used licenses
    //
    //Future<List<LicenseSimple>> licensesGetAllCommonlyUsed({ bool featured, int perPage }) async
    test('test licensesGetAllCommonlyUsed', () async {
      // TODO
    });

    // Get the license for a repository
    //
    // This method returns the contents of the repository's license file, if one is detected.  Similar to [Get repository content](https://developer.github.com/v3/repos/contents/#get-repository-content), this method also supports [custom media types](https://developer.github.com/v3/repos/contents/#custom-media-types) for retrieving the raw license content or rendered license HTML.
    //
    //Future<LicenseContent> licensesGetForRepo(String owner, String repo) async
    test('test licensesGetForRepo', () async {
      // TODO
    });

  });
}
