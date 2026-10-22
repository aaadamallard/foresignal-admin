import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The backend the app talks to: its base URL, or `null` before the operator
/// has entered one on the Connect screen.
class BackendEndpoint extends Notifier<Uri?> {
  @override
  Uri? build() => null;

  /// Points the app at [baseUrl] (for example `http://192.168.1.20:8080`).
  void set(Uri? baseUrl) => state = baseUrl;
}

/// The current backend base URL.
final backendEndpointProvider = NotifierProvider<BackendEndpoint, Uri?>(BackendEndpoint.new);

/// Parses what an operator typed as a backend URL. Adds `http://` when no
/// scheme is given, drops a trailing slash, and rejects anything that is not
/// an absolute http(s) URL with a host. Throws [FormatException].
Uri parseBackendUrl(String input) {
  var text = input.trim();
  if (text.isEmpty) {
    throw const FormatException('Enter the backend URL.');
  }
  if (!text.contains('://')) {
    text = 'http://$text';
  }
  final uri = Uri.parse(text);
  if (uri.scheme != 'http' && uri.scheme != 'https') {
    throw FormatException('The URL must start with http:// or https://, not ${uri.scheme}://.');
  }
  if (uri.host.isEmpty) {
    throw const FormatException('The URL has no host.');
  }
  final path = uri.path.endsWith('/') ? uri.path.substring(0, uri.path.length - 1) : uri.path;
  return uri.replace(path: path, query: null, fragment: null);
}
