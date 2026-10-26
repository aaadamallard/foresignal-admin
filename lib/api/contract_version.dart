/// The `info.version` of the vendored contract (`openapi/VERSION`) this build
/// was generated from. A test keeps the two in step.
const String vendoredApiVersion = '2.0.0';

/// How a backend's API version relates to [vendoredApiVersion].
enum VersionMatch {
  /// The same version.
  exact,

  /// Same major version, different minor or patch: compatible, but some
  /// fields or operations may differ.
  compatible,

  /// A different major version, or a version that could not be read.
  incompatible,
}

/// Compares the backend's [backendApiVersion] (`SystemInfo.apiVersion`) with
/// the version this app was built against.
VersionMatch compareApiVersion(String? backendApiVersion, {String built = vendoredApiVersion}) {
  if (backendApiVersion == null || backendApiVersion.trim().isEmpty) {
    return VersionMatch.incompatible;
  }
  final backend = backendApiVersion.trim();
  if (backend == built) {
    return VersionMatch.exact;
  }
  final backendMajor = backend.split('.').first;
  final builtMajor = built.split('.').first;
  if (int.tryParse(backendMajor) == null) {
    return VersionMatch.incompatible;
  }
  return backendMajor == builtMajor ? VersionMatch.compatible : VersionMatch.incompatible;
}
