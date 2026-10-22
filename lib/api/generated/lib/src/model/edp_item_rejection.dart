//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_item_rejection_schema_errors_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_item_rejection.g.dart';

/// Why one item was rejected
///
/// Properties:
/// * [index]
/// * [stream]
/// * [id]
/// * [reason]
/// * [schemaErrors]
@BuiltValue()
abstract class EdpItemRejection
    implements Built<EdpItemRejection, EdpItemRejectionBuilder> {
  @BuiltValueField(wireName: r'index')
  int get index;

  @BuiltValueField(wireName: r'stream')
  String? get stream;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'schemaErrors')
  BuiltList<EdpItemRejectionSchemaErrorsInner>? get schemaErrors;

  EdpItemRejection._();

  factory EdpItemRejection([void updates(EdpItemRejectionBuilder b)]) =
      _$EdpItemRejection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpItemRejectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpItemRejection> get serializer =>
      _$EdpItemRejectionSerializer();
}

class _$EdpItemRejectionSerializer
    implements PrimitiveSerializer<EdpItemRejection> {
  @override
  final Iterable<Type> types = const [EdpItemRejection, _$EdpItemRejection];

  @override
  final String wireName = r'EdpItemRejection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpItemRejection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(int),
    );
    if (object.stream != null) {
      yield r'stream';
      yield serializers.serialize(
        object.stream,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    if (object.schemaErrors != null) {
      yield r'schemaErrors';
      yield serializers.serialize(
        object.schemaErrors,
        specifiedType: const FullType(BuiltList, [
          FullType(EdpItemRejectionSchemaErrorsInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpItemRejection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EdpItemRejectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.index = valueDes;
          break;
        case r'stream':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.stream = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reason = valueDes;
          break;
        case r'schemaErrors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EdpItemRejectionSchemaErrorsInner),
                    ]),
                  )
                  as BuiltList<EdpItemRejectionSchemaErrorsInner>?;
          if (valueDes == null) continue;
          result.schemaErrors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpItemRejection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpItemRejectionBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
