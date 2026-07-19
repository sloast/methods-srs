// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'model.dart';

class MethodCardMapper extends ClassMapperBase<MethodCard> {
  MethodCardMapper._();

  static MethodCardMapper? _instance;
  static MethodCardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MethodCardMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MethodCard';

  static int _$id(MethodCard v) => v.id;
  static const Field<MethodCard, int> _f$id = Field('id', _$id);
  static fsrs.Card _$card(MethodCard v) => v.card;
  static const Field<MethodCard, fsrs.Card> _f$card = Field('card', _$card);
  static int _$deck(MethodCard v) => v.deck;
  static const Field<MethodCard, int> _f$deck = Field('deck', _$deck);
  static CardType _$type(MethodCard v) => v.type;
  static const Field<MethodCard, CardType> _f$type = Field('type', _$type);
  static int _$placeBell(MethodCard v) => v.placeBell;
  static const Field<MethodCard, int> _f$placeBell = Field(
    'placeBell',
    _$placeBell,
  );
  static bool _$paused(MethodCard v) => v.paused;
  static const Field<MethodCard, bool> _f$paused = Field('paused', _$paused);
  static bool _$learned(MethodCard v) => v.learned;
  static const Field<MethodCard, bool> _f$learned = Field('learned', _$learned);

  @override
  final MappableFields<MethodCard> fields = const {
    #id: _f$id,
    #card: _f$card,
    #deck: _f$deck,
    #type: _f$type,
    #placeBell: _f$placeBell,
    #paused: _f$paused,
    #learned: _f$learned,
  };

  static MethodCard _instantiate(DecodingData data) {
    return MethodCard(
      id: data.dec(_f$id),
      card: data.dec(_f$card),
      deck: data.dec(_f$deck),
      type: data.dec(_f$type),
      placeBell: data.dec(_f$placeBell),
      paused: data.dec(_f$paused),
      learned: data.dec(_f$learned),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MethodCard fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MethodCard>(map);
  }

  static MethodCard fromJson(String json) {
    return ensureInitialized().decodeJson<MethodCard>(json);
  }
}

mixin MethodCardMappable {
  String toJson() {
    return MethodCardMapper.ensureInitialized().encodeJson<MethodCard>(
      this as MethodCard,
    );
  }

  Map<String, dynamic> toMap() {
    return MethodCardMapper.ensureInitialized().encodeMap<MethodCard>(
      this as MethodCard,
    );
  }

  MethodCardCopyWith<MethodCard, MethodCard, MethodCard> get copyWith =>
      _MethodCardCopyWithImpl<MethodCard, MethodCard>(
        this as MethodCard,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MethodCardMapper.ensureInitialized().stringifyValue(
      this as MethodCard,
    );
  }

  @override
  bool operator ==(Object other) {
    return MethodCardMapper.ensureInitialized().equalsValue(
      this as MethodCard,
      other,
    );
  }

  @override
  int get hashCode {
    return MethodCardMapper.ensureInitialized().hashValue(this as MethodCard);
  }
}

extension MethodCardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MethodCard, $Out> {
  MethodCardCopyWith<$R, MethodCard, $Out> get $asMethodCard =>
      $base.as((v, t, t2) => _MethodCardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MethodCardCopyWith<$R, $In extends MethodCard, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    fsrs.Card? card,
    int? deck,
    CardType? type,
    int? placeBell,
    bool? paused,
    bool? learned,
  });
  MethodCardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MethodCardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MethodCard, $Out>
    implements MethodCardCopyWith<$R, MethodCard, $Out> {
  _MethodCardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MethodCard> $mapper =
      MethodCardMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    fsrs.Card? card,
    int? deck,
    CardType? type,
    int? placeBell,
    bool? paused,
    bool? learned,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (card != null) #card: card,
      if (deck != null) #deck: deck,
      if (type != null) #type: type,
      if (placeBell != null) #placeBell: placeBell,
      if (paused != null) #paused: paused,
      if (learned != null) #learned: learned,
    }),
  );
  @override
  MethodCard $make(CopyWithData data) => MethodCard(
    id: data.get(#id, or: $value.id),
    card: data.get(#card, or: $value.card),
    deck: data.get(#deck, or: $value.deck),
    type: data.get(#type, or: $value.type),
    placeBell: data.get(#placeBell, or: $value.placeBell),
    paused: data.get(#paused, or: $value.paused),
    learned: data.get(#learned, or: $value.learned),
  );

  @override
  MethodCardCopyWith<$R2, MethodCard, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MethodCardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MethodDeckMapper extends ClassMapperBase<MethodDeck> {
  MethodDeckMapper._();

  static MethodDeckMapper? _instance;
  static MethodDeckMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MethodDeckMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MethodDeck';

  static int _$id(MethodDeck v) => v.id;
  static const Field<MethodDeck, int> _f$id = Field('id', _$id);
  static String _$name(MethodDeck v) => v.name;
  static const Field<MethodDeck, String> _f$name = Field('name', _$name);
  static int _$method(MethodDeck v) => v.method;
  static const Field<MethodDeck, int> _f$method = Field('method', _$method);
  static bool _$isCustomMethod(MethodDeck v) => v.isCustomMethod;
  static const Field<MethodDeck, bool> _f$isCustomMethod = Field(
    'isCustomMethod',
    _$isCustomMethod,
  );

  @override
  final MappableFields<MethodDeck> fields = const {
    #id: _f$id,
    #name: _f$name,
    #method: _f$method,
    #isCustomMethod: _f$isCustomMethod,
  };

  static MethodDeck _instantiate(DecodingData data) {
    return MethodDeck(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      method: data.dec(_f$method),
      isCustomMethod: data.dec(_f$isCustomMethod),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MethodDeck fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MethodDeck>(map);
  }

  static MethodDeck fromJson(String json) {
    return ensureInitialized().decodeJson<MethodDeck>(json);
  }
}

mixin MethodDeckMappable {
  String toJson() {
    return MethodDeckMapper.ensureInitialized().encodeJson<MethodDeck>(
      this as MethodDeck,
    );
  }

  Map<String, dynamic> toMap() {
    return MethodDeckMapper.ensureInitialized().encodeMap<MethodDeck>(
      this as MethodDeck,
    );
  }

  MethodDeckCopyWith<MethodDeck, MethodDeck, MethodDeck> get copyWith =>
      _MethodDeckCopyWithImpl<MethodDeck, MethodDeck>(
        this as MethodDeck,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MethodDeckMapper.ensureInitialized().stringifyValue(
      this as MethodDeck,
    );
  }

  @override
  bool operator ==(Object other) {
    return MethodDeckMapper.ensureInitialized().equalsValue(
      this as MethodDeck,
      other,
    );
  }

  @override
  int get hashCode {
    return MethodDeckMapper.ensureInitialized().hashValue(this as MethodDeck);
  }
}

extension MethodDeckValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MethodDeck, $Out> {
  MethodDeckCopyWith<$R, MethodDeck, $Out> get $asMethodDeck =>
      $base.as((v, t, t2) => _MethodDeckCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MethodDeckCopyWith<$R, $In extends MethodDeck, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name, int? method, bool? isCustomMethod});
  MethodDeckCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MethodDeckCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MethodDeck, $Out>
    implements MethodDeckCopyWith<$R, MethodDeck, $Out> {
  _MethodDeckCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MethodDeck> $mapper =
      MethodDeckMapper.ensureInitialized();
  @override
  $R call({int? id, String? name, int? method, bool? isCustomMethod}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (method != null) #method: method,
      if (isCustomMethod != null) #isCustomMethod: isCustomMethod,
    }),
  );
  @override
  MethodDeck $make(CopyWithData data) => MethodDeck(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    method: data.get(#method, or: $value.method),
    isCustomMethod: data.get(#isCustomMethod, or: $value.isCustomMethod),
  );

  @override
  MethodDeckCopyWith<$R2, MethodDeck, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MethodDeckCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MethodMapper extends ClassMapperBase<Method> {
  MethodMapper._();

  static MethodMapper? _instance;
  static MethodMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MethodMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Method';

  static int _$id(Method v) => v.id;
  static const Field<Method, int> _f$id = Field('id', _$id);
  static String _$name(Method v) => v.name;
  static const Field<Method, String> _f$name = Field('name', _$name);
  static String _$placeNotation(Method v) => v.placeNotation;
  static const Field<Method, String> _f$placeNotation = Field(
    'placeNotation',
    _$placeNotation,
  );
  static int _$stage(Method v) => v.stage;
  static const Field<Method, int> _f$stage = Field('stage', _$stage);
  static bool _$isCustomMethod(Method v) => v.isCustomMethod;
  static const Field<Method, bool> _f$isCustomMethod = Field(
    'isCustomMethod',
    _$isCustomMethod,
  );

  @override
  final MappableFields<Method> fields = const {
    #id: _f$id,
    #name: _f$name,
    #placeNotation: _f$placeNotation,
    #stage: _f$stage,
    #isCustomMethod: _f$isCustomMethod,
  };

  static Method _instantiate(DecodingData data) {
    return Method(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      placeNotation: data.dec(_f$placeNotation),
      stage: data.dec(_f$stage),
      isCustomMethod: data.dec(_f$isCustomMethod),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Method fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Method>(map);
  }

  static Method fromJson(String json) {
    return ensureInitialized().decodeJson<Method>(json);
  }
}

mixin MethodMappable {
  String toJson() {
    return MethodMapper.ensureInitialized().encodeJson<Method>(this as Method);
  }

  Map<String, dynamic> toMap() {
    return MethodMapper.ensureInitialized().encodeMap<Method>(this as Method);
  }

  MethodCopyWith<Method, Method, Method> get copyWith =>
      _MethodCopyWithImpl<Method, Method>(this as Method, $identity, $identity);
  @override
  String toString() {
    return MethodMapper.ensureInitialized().stringifyValue(this as Method);
  }

  @override
  bool operator ==(Object other) {
    return MethodMapper.ensureInitialized().equalsValue(this as Method, other);
  }

  @override
  int get hashCode {
    return MethodMapper.ensureInitialized().hashValue(this as Method);
  }
}

extension MethodValueCopy<$R, $Out> on ObjectCopyWith<$R, Method, $Out> {
  MethodCopyWith<$R, Method, $Out> get $asMethod =>
      $base.as((v, t, t2) => _MethodCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MethodCopyWith<$R, $In extends Method, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? placeNotation,
    int? stage,
    bool? isCustomMethod,
  });
  MethodCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MethodCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Method, $Out>
    implements MethodCopyWith<$R, Method, $Out> {
  _MethodCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Method> $mapper = MethodMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    String? placeNotation,
    int? stage,
    bool? isCustomMethod,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (placeNotation != null) #placeNotation: placeNotation,
      if (stage != null) #stage: stage,
      if (isCustomMethod != null) #isCustomMethod: isCustomMethod,
    }),
  );
  @override
  Method $make(CopyWithData data) => Method(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    placeNotation: data.get(#placeNotation, or: $value.placeNotation),
    stage: data.get(#stage, or: $value.stage),
    isCustomMethod: data.get(#isCustomMethod, or: $value.isCustomMethod),
  );

  @override
  MethodCopyWith<$R2, Method, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MethodCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

