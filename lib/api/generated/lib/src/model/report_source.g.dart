// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportSourceTypeEnum _$reportSourceTypeEnum_selection =
    const ReportSourceTypeEnum._('selection');
const ReportSourceTypeEnum _$reportSourceTypeEnum_tag =
    const ReportSourceTypeEnum._('tag');
const ReportSourceTypeEnum _$reportSourceTypeEnum_investigation =
    const ReportSourceTypeEnum._('investigation');
const ReportSourceTypeEnum _$reportSourceTypeEnum_chronicle =
    const ReportSourceTypeEnum._('chronicle');
const ReportSourceTypeEnum _$reportSourceTypeEnum_situation =
    const ReportSourceTypeEnum._('situation');
const ReportSourceTypeEnum _$reportSourceTypeEnum_workspace =
    const ReportSourceTypeEnum._('workspace');
const ReportSourceTypeEnum _$reportSourceTypeEnum_unknownDefaultOpenApi =
    const ReportSourceTypeEnum._('unknownDefaultOpenApi');

ReportSourceTypeEnum _$reportSourceTypeEnumValueOf(String name) {
  switch (name) {
    case 'selection':
      return _$reportSourceTypeEnum_selection;
    case 'tag':
      return _$reportSourceTypeEnum_tag;
    case 'investigation':
      return _$reportSourceTypeEnum_investigation;
    case 'chronicle':
      return _$reportSourceTypeEnum_chronicle;
    case 'situation':
      return _$reportSourceTypeEnum_situation;
    case 'workspace':
      return _$reportSourceTypeEnum_workspace;
    case 'unknownDefaultOpenApi':
      return _$reportSourceTypeEnum_unknownDefaultOpenApi;
    default:
      return _$reportSourceTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ReportSourceTypeEnum> _$reportSourceTypeEnumValues =
    BuiltSet<ReportSourceTypeEnum>(const <ReportSourceTypeEnum>[
      _$reportSourceTypeEnum_selection,
      _$reportSourceTypeEnum_tag,
      _$reportSourceTypeEnum_investigation,
      _$reportSourceTypeEnum_chronicle,
      _$reportSourceTypeEnum_situation,
      _$reportSourceTypeEnum_workspace,
      _$reportSourceTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ReportSourceTypeEnum> _$reportSourceTypeEnumSerializer =
    _$ReportSourceTypeEnumSerializer();

class _$ReportSourceTypeEnumSerializer
    implements PrimitiveSerializer<ReportSourceTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'selection': 'selection',
    'tag': 'tag',
    'investigation': 'investigation',
    'chronicle': 'chronicle',
    'situation': 'situation',
    'workspace': 'workspace',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'selection': 'selection',
    'tag': 'tag',
    'investigation': 'investigation',
    'chronicle': 'chronicle',
    'situation': 'situation',
    'workspace': 'workspace',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportSourceTypeEnum];
  @override
  final String wireName = 'ReportSourceTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReportSourceTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReportSourceTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReportSourceTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReportSource extends ReportSource {
  @override
  final ReportSourceTypeEnum type;
  @override
  final String? ref;
  @override
  final BuiltList<String>? refs;

  factory _$ReportSource([void Function(ReportSourceBuilder)? updates]) =>
      (ReportSourceBuilder()..update(updates))._build();

  _$ReportSource._({required this.type, this.ref, this.refs}) : super._();
  @override
  ReportSource rebuild(void Function(ReportSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportSourceBuilder toBuilder() => ReportSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportSource &&
        type == other.type &&
        ref == other.ref &&
        refs == other.refs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, refs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportSource')
          ..add('type', type)
          ..add('ref', ref)
          ..add('refs', refs))
        .toString();
  }
}

class ReportSourceBuilder
    implements Builder<ReportSource, ReportSourceBuilder> {
  _$ReportSource? _$v;

  ReportSourceTypeEnum? _type;
  ReportSourceTypeEnum? get type => _$this._type;
  set type(ReportSourceTypeEnum? type) => _$this._type = type;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  ReportSourceBuilder() {
    ReportSource._defaults(this);
  }

  ReportSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _ref = $v.ref;
      _refs = $v.refs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportSource other) {
    _$v = other as _$ReportSource;
  }

  @override
  void update(void Function(ReportSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportSource build() => _build();

  _$ReportSource _build() {
    _$ReportSource _$result;
    try {
      _$result =
          _$v ??
          _$ReportSource._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ReportSource',
              'type',
            ),
            ref: ref,
            refs: _refs?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        _refs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportSource',
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
