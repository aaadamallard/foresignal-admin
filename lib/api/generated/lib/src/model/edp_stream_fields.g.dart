// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_stream_fields.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpStreamFieldsObservedAtModeEnum
_$edpStreamFieldsObservedAtModeEnum_upstream =
    const EdpStreamFieldsObservedAtModeEnum._('upstream');
const EdpStreamFieldsObservedAtModeEnum
_$edpStreamFieldsObservedAtModeEnum_received =
    const EdpStreamFieldsObservedAtModeEnum._('received');
const EdpStreamFieldsObservedAtModeEnum
_$edpStreamFieldsObservedAtModeEnum_unknownDefaultOpenApi =
    const EdpStreamFieldsObservedAtModeEnum._('unknownDefaultOpenApi');

EdpStreamFieldsObservedAtModeEnum _$edpStreamFieldsObservedAtModeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'upstream':
      return _$edpStreamFieldsObservedAtModeEnum_upstream;
    case 'received':
      return _$edpStreamFieldsObservedAtModeEnum_received;
    case 'unknownDefaultOpenApi':
      return _$edpStreamFieldsObservedAtModeEnum_unknownDefaultOpenApi;
    default:
      return _$edpStreamFieldsObservedAtModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EdpStreamFieldsObservedAtModeEnum>
_$edpStreamFieldsObservedAtModeEnumValues =
    BuiltSet<EdpStreamFieldsObservedAtModeEnum>(
      const <EdpStreamFieldsObservedAtModeEnum>[
        _$edpStreamFieldsObservedAtModeEnum_upstream,
        _$edpStreamFieldsObservedAtModeEnum_received,
        _$edpStreamFieldsObservedAtModeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<EdpStreamFieldsObservedAtModeEnum>
_$edpStreamFieldsObservedAtModeEnumSerializer =
    _$EdpStreamFieldsObservedAtModeEnumSerializer();

class _$EdpStreamFieldsObservedAtModeEnumSerializer
    implements PrimitiveSerializer<EdpStreamFieldsObservedAtModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'upstream': 'upstream',
    'received': 'received',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'upstream': 'upstream',
    'received': 'received',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpStreamFieldsObservedAtModeEnum];
  @override
  final String wireName = 'EdpStreamFieldsObservedAtModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpStreamFieldsObservedAtModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpStreamFieldsObservedAtModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpStreamFieldsObservedAtModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpStreamFields extends EdpStreamFields {
  @override
  final String? title;
  @override
  final BuiltList<String>? significant;
  @override
  final BuiltList<String>? volatile;
  @override
  final EdpStreamFieldsObservedAtModeEnum? observedAtMode;

  factory _$EdpStreamFields([void Function(EdpStreamFieldsBuilder)? updates]) =>
      (EdpStreamFieldsBuilder()..update(updates))._build();

  _$EdpStreamFields._({
    this.title,
    this.significant,
    this.volatile,
    this.observedAtMode,
  }) : super._();
  @override
  EdpStreamFields rebuild(void Function(EdpStreamFieldsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpStreamFieldsBuilder toBuilder() => EdpStreamFieldsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpStreamFields &&
        title == other.title &&
        significant == other.significant &&
        volatile == other.volatile &&
        observedAtMode == other.observedAtMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, significant.hashCode);
    _$hash = $jc(_$hash, volatile.hashCode);
    _$hash = $jc(_$hash, observedAtMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpStreamFields')
          ..add('title', title)
          ..add('significant', significant)
          ..add('volatile', volatile)
          ..add('observedAtMode', observedAtMode))
        .toString();
  }
}

class EdpStreamFieldsBuilder
    implements Builder<EdpStreamFields, EdpStreamFieldsBuilder> {
  _$EdpStreamFields? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<String>? _significant;
  ListBuilder<String> get significant =>
      _$this._significant ??= ListBuilder<String>();
  set significant(ListBuilder<String>? significant) =>
      _$this._significant = significant;

  ListBuilder<String>? _volatile;
  ListBuilder<String> get volatile =>
      _$this._volatile ??= ListBuilder<String>();
  set volatile(ListBuilder<String>? volatile) => _$this._volatile = volatile;

  EdpStreamFieldsObservedAtModeEnum? _observedAtMode;
  EdpStreamFieldsObservedAtModeEnum? get observedAtMode =>
      _$this._observedAtMode;
  set observedAtMode(EdpStreamFieldsObservedAtModeEnum? observedAtMode) =>
      _$this._observedAtMode = observedAtMode;

  EdpStreamFieldsBuilder() {
    EdpStreamFields._defaults(this);
  }

  EdpStreamFieldsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _significant = $v.significant?.toBuilder();
      _volatile = $v.volatile?.toBuilder();
      _observedAtMode = $v.observedAtMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpStreamFields other) {
    _$v = other as _$EdpStreamFields;
  }

  @override
  void update(void Function(EdpStreamFieldsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpStreamFields build() => _build();

  _$EdpStreamFields _build() {
    _$EdpStreamFields _$result;
    try {
      _$result =
          _$v ??
          _$EdpStreamFields._(
            title: title,
            significant: _significant?.build(),
            volatile: _volatile?.build(),
            observedAtMode: observedAtMode,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'significant';
        _significant?.build();
        _$failedField = 'volatile';
        _volatile?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpStreamFields',
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
