part of swagger.api;

class CodeScanningAlertSetState {
  /// The underlying value of this enum member.
  String value;

  CodeScanningAlertSetState._internal(this.value);

  /// Sets the state of the code scanning alert. Can be one of &#x60;open&#x60; or &#x60;dismissed&#x60;. You must provide &#x60;dismissed_reason&#x60; when you set the state to &#x60;dismissed&#x60;.
  static CodeScanningAlertSetState open_ = CodeScanningAlertSetState._internal("open");
  /// Sets the state of the code scanning alert. Can be one of &#x60;open&#x60; or &#x60;dismissed&#x60;. You must provide &#x60;dismissed_reason&#x60; when you set the state to &#x60;dismissed&#x60;.
  static CodeScanningAlertSetState dismissed_ = CodeScanningAlertSetState._internal("dismissed");

  CodeScanningAlertSetState.fromJson(dynamic data) {
    switch (data) {
          case "open": value = data; break;
          case "dismissed": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CodeScanningAlertSetState data) {
    return data.value;
  }
}