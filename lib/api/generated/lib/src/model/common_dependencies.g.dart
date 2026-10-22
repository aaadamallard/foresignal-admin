// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_dependencies.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommonDependencies extends CommonDependencies {
  @override
  final BuiltList<String> refs;
  @override
  final DateTime? asOf;
  @override
  final DateTime? generatedAt;
  @override
  final BuiltList<CommonDependenciesDependenciesInner> dependencies;

  factory _$CommonDependencies([
    void Function(CommonDependenciesBuilder)? updates,
  ]) => (CommonDependenciesBuilder()..update(updates))._build();

  _$CommonDependencies._({
    required this.refs,
    this.asOf,
    this.generatedAt,
    required this.dependencies,
  }) : super._();
  @override
  CommonDependencies rebuild(
    void Function(CommonDependenciesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CommonDependenciesBuilder toBuilder() =>
      CommonDependenciesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonDependencies &&
        refs == other.refs &&
        asOf == other.asOf &&
        generatedAt == other.generatedAt &&
        dependencies == other.dependencies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refs.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jc(_$hash, dependencies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommonDependencies')
          ..add('refs', refs)
          ..add('asOf', asOf)
          ..add('generatedAt', generatedAt)
          ..add('dependencies', dependencies))
        .toString();
  }
}

class CommonDependenciesBuilder
    implements Builder<CommonDependencies, CommonDependenciesBuilder> {
  _$CommonDependencies? _$v;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  ListBuilder<CommonDependenciesDependenciesInner>? _dependencies;
  ListBuilder<CommonDependenciesDependenciesInner> get dependencies =>
      _$this._dependencies ??=
          ListBuilder<CommonDependenciesDependenciesInner>();
  set dependencies(
    ListBuilder<CommonDependenciesDependenciesInner>? dependencies,
  ) => _$this._dependencies = dependencies;

  CommonDependenciesBuilder() {
    CommonDependencies._defaults(this);
  }

  CommonDependenciesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refs = $v.refs.toBuilder();
      _asOf = $v.asOf;
      _generatedAt = $v.generatedAt;
      _dependencies = $v.dependencies.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonDependencies other) {
    _$v = other as _$CommonDependencies;
  }

  @override
  void update(void Function(CommonDependenciesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommonDependencies build() => _build();

  _$CommonDependencies _build() {
    _$CommonDependencies _$result;
    try {
      _$result =
          _$v ??
          _$CommonDependencies._(
            refs: refs.build(),
            asOf: asOf,
            generatedAt: generatedAt,
            dependencies: dependencies.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        refs.build();

        _$failedField = 'dependencies';
        dependencies.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CommonDependencies',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
