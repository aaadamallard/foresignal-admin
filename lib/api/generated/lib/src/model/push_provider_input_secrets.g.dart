// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_provider_input_secrets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PushProviderInputSecrets extends PushProviderInputSecrets {
  @override
  final String? p8;
  @override
  final String? serviceAccountJson;

  factory _$PushProviderInputSecrets([
    void Function(PushProviderInputSecretsBuilder)? updates,
  ]) => (PushProviderInputSecretsBuilder()..update(updates))._build();

  _$PushProviderInputSecrets._({this.p8, this.serviceAccountJson}) : super._();
  @override
  PushProviderInputSecrets rebuild(
    void Function(PushProviderInputSecretsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PushProviderInputSecretsBuilder toBuilder() =>
      PushProviderInputSecretsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushProviderInputSecrets &&
        p8 == other.p8 &&
        serviceAccountJson == other.serviceAccountJson;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, p8.hashCode);
    _$hash = $jc(_$hash, serviceAccountJson.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushProviderInputSecrets')
          ..add('p8', p8)
          ..add('serviceAccountJson', serviceAccountJson))
        .toString();
  }
}

class PushProviderInputSecretsBuilder
    implements
        Builder<PushProviderInputSecrets, PushProviderInputSecretsBuilder> {
  _$PushProviderInputSecrets? _$v;

  String? _p8;
  String? get p8 => _$this._p8;
  set p8(String? p8) => _$this._p8 = p8;

  String? _serviceAccountJson;
  String? get serviceAccountJson => _$this._serviceAccountJson;
  set serviceAccountJson(String? serviceAccountJson) =>
      _$this._serviceAccountJson = serviceAccountJson;

  PushProviderInputSecretsBuilder() {
    PushProviderInputSecrets._defaults(this);
  }

  PushProviderInputSecretsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _p8 = $v.p8;
      _serviceAccountJson = $v.serviceAccountJson;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushProviderInputSecrets other) {
    _$v = other as _$PushProviderInputSecrets;
  }

  @override
  void update(void Function(PushProviderInputSecretsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushProviderInputSecrets build() => _build();

  _$PushProviderInputSecrets _build() {
    final _$result =
        _$v ??
        _$PushProviderInputSecrets._(
          p8: p8,
          serviceAccountJson: serviceAccountJson,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
