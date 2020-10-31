part of swagger.api;

class CodescanningalertinstancesInner {
  
  CodeScanningAlertRef ref = null;

  CodeScanningAnalysisAnalysisKey analysisKey = null;

  CodeScanningAlertEnvironment environment = null;

  String matrixVars = null;

  CodeScanningAlertState state = null;

  CodescanningalertinstancesInner();

  @override
  String toString() {
    return 'CodescanningalertinstancesInner[ref=$ref, analysisKey=$analysisKey, environment=$environment, matrixVars=$matrixVars, state=$state, ]';
  }

  CodescanningalertinstancesInner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ref = new CodeScanningAlertRef.fromJson(json['ref']);
    analysisKey = new CodeScanningAnalysisAnalysisKey.fromJson(json['analysis_key']);
    environment = new CodeScanningAlertEnvironment.fromJson(json['environment']);
    matrixVars = json['matrix_vars'];
    state = new CodeScanningAlertState.fromJson(json['state']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ref': ref,
      'analysis_key': analysisKey,
      'environment': environment,
      'matrix_vars': matrixVars,
      'state': state
     };
  }

  static List<CodescanningalertinstancesInner> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodescanningalertinstancesInner>() : json.map((value) => new CodescanningalertinstancesInner.fromJson(value)).toList();
  }

  static Map<String, CodescanningalertinstancesInner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodescanningalertinstancesInner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodescanningalertinstancesInner.fromJson(value));
    }
    return map;
  }
}
