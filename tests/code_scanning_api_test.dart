import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for CodeScanningApi
void main() {
  var instance = new CodeScanningApi();

  group('tests for CodeScanningApi', () {
    // Get a code scanning alert
    //
    // Gets a single code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  The security `alert_number` is found at the end of the security alert's URL. For example, the security alert ID for `https://github.com/Octo-org/octo-repo/security/code-scanning/88` is `88`.
    //
    //Future<CodeScanningAlertCodeScanningAlert> codeScanningGetAlert(String owner, String repo, int alertNumber) async
    test('test codeScanningGetAlert', () async {
      // TODO
    });

    // List code scanning alerts for a repository
    //
    // Lists all open code scanning alerts for the default branch (usually `master`) and protected branches in a repository. For private repos, you must use an access token with the `repo` scope. For public repos, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` read permission to use this endpoint.
    //
    //Future<List<CodeScanningAlertCodeScanningAlertItems>> codeScanningListAlertsForRepo(String owner, String repo, { CodeScanningAlertState state, CodeScanningAlertRef ref }) async
    test('test codeScanningListAlertsForRepo', () async {
      // TODO
    });

    // List recent code scanning analyses for a repository
    //
    // List the details of recent code scanning analyses for a repository. For private repos, you must use an access token with the `repo` scope. For public repos, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` read permission to use this endpoint.
    //
    //Future<List<CodeScanningAnalysisCodeScanningAnalysis>> codeScanningListRecentAnalyses(String owner, String repo, { CodeScanningAnalysisRef ref, CodeScanningAnalysisToolName toolName }) async
    test('test codeScanningListRecentAnalyses', () async {
      // TODO
    });

    // Update a code scanning alert
    //
    // Updates the status of a single code scanning alert. For private repos, you must use an access token with the `repo` scope. For public repos, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` write permission to use this endpoint.
    //
    //Future<CodeScanningAlertCodeScanningAlert> codeScanningUpdateAlert(String owner, String repo, CodeScanningAlertNumber alertNumber, { Body73 body }) async
    test('test codeScanningUpdateAlert', () async {
      // TODO
    });

    // Upload a SARIF file
    //
    // Upload a SARIF file containing the results of a code scanning analysis to make the results available in a repository. For private repos, you must use an access token with the `repo` scope. For public repos, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` write permission to use this endpoint.
    //
    //Future codeScanningUploadSarif(String owner, String repo, { Body74 body }) async
    test('test codeScanningUploadSarif', () async {
      // TODO
    });

  });
}
