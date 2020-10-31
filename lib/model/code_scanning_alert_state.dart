part of swagger.api;

class CodeScanningAlertState {
  /// The underlying value of this enum member.
  String value;

  CodeScanningAlertState._internal(this.value);

  /// State of a code scanning alert.
  static CodeScanningAlertState open_ = CodeScanningAlertState._internal("open");
  /// State of a code scanning alert.
  static CodeScanningAlertState dismissed_ = CodeScanningAlertState._internal("dismissed");
  /// State of a code scanning alert.
  static CodeScanningAlertState fixed_ = CodeScanningAlertState._internal("fixed");

  CodeScanningAlertState.fromJson(dynamic data) {
    switch (data) {
          case "open": value = data; break;
          case "dismissed": value = data; break;
          case "fixed": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CodeScanningAlertState data) {
    return data.value;
  }
}