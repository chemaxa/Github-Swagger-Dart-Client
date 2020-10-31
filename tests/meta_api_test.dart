import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for MetaApi
void main() {
  var instance = new MetaApi();

  group('tests for MetaApi', () {
    // Get GitHub meta information
    //
    // This endpoint provides a list of GitHub's IP addresses. For more information, see \"[About GitHub's IP addresses](https://help.github.com/articles/about-github-s-ip-addresses/).\"
    //
    //Future<ApiOverview> metaGet() async
    test('test metaGet', () async {
      // TODO
    });

    // Get Octocat
    //
    // Get the octocat as ASCII art
    //
    //Future<String> metaGetOctocat({ String s }) async
    test('test metaGetOctocat', () async {
      // TODO
    });

    // Get the Zen of GitHub
    //
    // Get a random sentence from the Zen of GitHub
    //
    //Future<String> metaGetZen() async
    test('test metaGetZen', () async {
      // TODO
    });

    // GitHub API Root
    //
    // Get Hypermedia links to resources accessible in GitHub's REST API
    //
    //Future<InlineResponse200> metaRoot() async
    test('test metaRoot', () async {
      // TODO
    });

  });
}
