# swagger.model.Body74

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commitSha** | [**CodeScanningAnalysisCommitSha**](CodeScanningAnalysisCommitSha.md) |  | [default to null]
**ref** | [**CodeScanningAnalysisRef**](CodeScanningAnalysisRef.md) |  | [default to null]
**sarif** | [**CodeScanningAnalysisSarifFile**](CodeScanningAnalysisSarifFile.md) |  | [default to null]
**checkoutUri** | **String** | The base directory used in the analysis, as it appears in the SARIF file. This property is used to convert file paths from absolute to relative, so that alerts can be mapped to their correct location in the repository. | [optional] [default to null]
**startedAt** | [**DateTime**](DateTime.md) | The time that the analysis run began. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] [default to null]
**toolName** | [**CodeScanningAnalysisToolName**](CodeScanningAnalysisToolName.md) |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

