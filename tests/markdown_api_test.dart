import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for MarkdownApi
void main() {
  var instance = new MarkdownApi();

  group('tests for MarkdownApi', () {
    // Render a Markdown document
    //
    //Future markdownRender({ Body21 body }) async
    test('test markdownRender', () async {
      // TODO
    });

    // Render a Markdown document in raw mode
    //
    // You must send Markdown as plain text (using a `Content-Type` header of `text/plain` or `text/x-markdown`) to this endpoint, rather than using JSON format. In raw mode, [GitHub Flavored Markdown](https://github.github.com/gfm/) is not supported and Markdown will be rendered in plain format like a README.md file. Markdown content must be 400 KB or less.
    //
    //Future<String> markdownRenderRaw({ String body }) async
    test('test markdownRenderRaw', () async {
      // TODO
    });

  });
}
