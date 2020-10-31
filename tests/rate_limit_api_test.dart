import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for RateLimitApi
void main() {
  var instance = new RateLimitApi();

  group('tests for RateLimitApi', () {
    // Get rate limit status for the authenticated user
    //
    // **Note:** Accessing this endpoint does not count against your REST API rate limit.  **Note:** The `rate` object is deprecated. If you're writing new API client code or updating existing code, you should use the `core` object instead of the `rate` object. The `core` object contains the same information that is present in the `rate` object.
    //
    //Future<RateLimitOverview> rateLimitGet() async
    test('test rateLimitGet', () async {
      // TODO
    });

  });
}
