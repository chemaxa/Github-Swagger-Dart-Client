import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for InteractionsApi
void main() {
  var instance = new InteractionsApi();

  group('tests for InteractionsApi', () {
    // Get interaction restrictions for an organization
    //
    // Shows which group of GitHub users can interact with this organization and when the restriction expires. If there are no restrictions, you will see an empty response.
    //
    //Future<InteractionLimit> interactionsGetRestrictionsForOrg(String org) async
    test('test interactionsGetRestrictionsForOrg', () async {
      // TODO
    });

    // Get interaction restrictions for a repository
    //
    // Shows which group of GitHub users can interact with this repository and when the restriction expires. If there are no restrictions, you will see an empty response.
    //
    //Future<InteractionLimit> interactionsGetRestrictionsForRepo(String owner, String repo) async
    test('test interactionsGetRestrictionsForRepo', () async {
      // TODO
    });

    // Remove interaction restrictions for an organization
    //
    // Removes all interaction restrictions from public repositories in the given organization. You must be an organization owner to remove restrictions.
    //
    //Future interactionsRemoveRestrictionsForOrg(String org) async
    test('test interactionsRemoveRestrictionsForOrg', () async {
      // TODO
    });

    // Remove interaction restrictions for a repository
    //
    // Removes all interaction restrictions from the given repository. You must have owner or admin access to remove restrictions.
    //
    //Future interactionsRemoveRestrictionsForRepo(String owner, String repo) async
    test('test interactionsRemoveRestrictionsForRepo', () async {
      // TODO
    });

    // Set interaction restrictions for an organization
    //
    // Temporarily restricts interactions to certain GitHub users in any public repository in the given organization. You must be an organization owner to set these restrictions.
    //
    //Future<InteractionLimit> interactionsSetRestrictionsForOrg(String org, { Body36 body }) async
    test('test interactionsSetRestrictionsForOrg', () async {
      // TODO
    });

    // Set interaction restrictions for a repository
    //
    // Temporarily restricts interactions to certain GitHub users within the given repository. You must have owner or admin access to set restrictions.
    //
    //Future<InteractionLimit> interactionsSetRestrictionsForRepo(String owner, String repo, { Body98 body }) async
    test('test interactionsSetRestrictionsForRepo', () async {
      // TODO
    });

  });
}
