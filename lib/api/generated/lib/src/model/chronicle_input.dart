//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_area.dart';
import 'package:foresignal_api/src/model/chronicle_layer_input.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_input.g.dart';

/// Create a chronicle; it starts in status `proposed` (no capture) until activated
///
/// Properties:
/// * [name]
/// * [description]
/// * [visibility]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [area]
/// * [retention] - `forever` (default) or an ISO-8601 duration kept after stop
/// * [sizeCapBytes] - Default `chronicle.defaultCapGb` (20 GB)
/// * [situationIds]
/// * [hypothesisSetIds]
/// * [investigationIds]
/// * [topicIds]
/// * [layers]
/// * [fromWorkspaceId] - ULID identifier
/// * [activate] - Activate immediately after creation
@BuiltValue()
abstract class ChronicleInput
    implements Built<ChronicleInput, ChronicleInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  @BuiltValueField(wireName: r'area')
  ChronicleArea? get area;

  /// `forever` (default) or an ISO-8601 duration kept after stop
  @BuiltValueField(wireName: r'retention')
  String? get retention;

  /// Default `chronicle.defaultCapGb` (20 GB)
  @BuiltValueField(wireName: r'sizeCapBytes')
  int? get sizeCapBytes;

  @BuiltValueField(wireName: r'situationIds')
  BuiltList<String>? get situationIds;

  @BuiltValueField(wireName: r'hypothesisSetIds')
  BuiltList<String>? get hypothesisSetIds;

  @BuiltValueField(wireName: r'investigationIds')
  BuiltList<String>? get investigationIds;

  @BuiltValueField(wireName: r'topicIds')
  BuiltList<String>? get topicIds;

  @BuiltValueField(wireName: r'layers')
  BuiltList<ChronicleLayerInput>? get layers;

  /// ULID identifier
  @BuiltValueField(wireName: r'fromWorkspaceId')
  String? get fromWorkspaceId;

  /// Activate immediately after creation
  @BuiltValueField(wireName: r'activate')
  bool? get activate;

  ChronicleInput._();

  factory ChronicleInput([void updates(ChronicleInputBuilder b)]) =
      _$ChronicleInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleInput> get serializer =>
      _$ChronicleInputSerializer();
}

class _$ChronicleInputSerializer
    implements PrimitiveSerializer<ChronicleInput> {
  @override
  final Iterable<Type> types = const [ChronicleInput, _$ChronicleInput];

  @override
  final String wireName = r'ChronicleInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(Visibility),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType(String),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(ChronicleArea),
      );
    }
    if (object.retention != null) {
      yield r'retention';
      yield serializers.serialize(
        object.retention,
        specifiedType: const FullType(String),
      );
    }
    if (object.sizeCapBytes != null) {
      yield r'sizeCapBytes';
      yield serializers.serialize(
        object.sizeCapBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.situationIds != null) {
      yield r'situationIds';
      yield serializers.serialize(
        object.situationIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.hypothesisSetIds != null) {
      yield r'hypothesisSetIds';
      yield serializers.serialize(
        object.hypothesisSetIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.investigationIds != null) {
      yield r'investigationIds';
      yield serializers.serialize(
        object.investigationIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.topicIds != null) {
      yield r'topicIds';
      yield serializers.serialize(
        object.topicIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.layers != null) {
      yield r'layers';
      yield serializers.serialize(
        object.layers,
        specifiedType:
            const FullType(BuiltList, [FullType(ChronicleLayerInput)]),
      );
    }
    if (object.fromWorkspaceId != null) {
      yield r'fromWorkspaceId';
      yield serializers.serialize(
        object.fromWorkspaceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.activate != null) {
      yield r'activate';
      yield serializers.serialize(
        object.activate,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChronicleInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Visibility),
          ) as Visibility?;
          if (valueDes == null) continue;
          result.visibility = valueDes;
          break;
        case r'tlp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tlp = valueDes;
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChronicleArea),
          ) as ChronicleArea?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'retention':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.retention = valueDes;
          break;
        case r'sizeCapBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sizeCapBytes = valueDes;
          break;
        case r'situationIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.situationIds.replace(valueDes);
          break;
        case r'hypothesisSetIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.hypothesisSetIds.replace(valueDes);
          break;
        case r'investigationIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.investigationIds.replace(valueDes);
          break;
        case r'topicIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.topicIds.replace(valueDes);
          break;
        case r'layers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ChronicleLayerInput)]),
          ) as BuiltList<ChronicleLayerInput>?;
          if (valueDes == null) continue;
          result.layers.replace(valueDes);
          break;
        case r'fromWorkspaceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fromWorkspaceId = valueDes;
          break;
        case r'activate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.activate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleInputBuilder();
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
