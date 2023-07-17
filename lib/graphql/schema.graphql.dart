// ignore_for_file: type=lint
// GENERATED FILE DO NOT MODIFY
class Input_AssetCreateContent {
  factory Input_AssetCreateContent({
    int? duration,
    required String mimeType,
    String? title,
  }) =>
      Input_AssetCreateContent._({
        if (duration != null) r'duration': duration,
        r'mimeType': mimeType,
        if (title != null) r'title': title,
      });

  Input_AssetCreateContent._(this._$data);

  factory Input_AssetCreateContent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('duration')) {
      final l$duration = data['duration'];
      result$data['duration'] = (l$duration as int?);
    }
    final l$mimeType = data['mimeType'];
    result$data['mimeType'] = (l$mimeType as String);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    return Input_AssetCreateContent._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get duration => (_$data['duration'] as int?);
  String get mimeType => (_$data['mimeType'] as String);
  String? get title => (_$data['title'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('duration')) {
      final l$duration = duration;
      result$data['duration'] = l$duration;
    }
    final l$mimeType = mimeType;
    result$data['mimeType'] = l$mimeType;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    return result$data;
  }

  CopyWith_Input_AssetCreateContent<Input_AssetCreateContent> get copyWith =>
      CopyWith_Input_AssetCreateContent(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input_AssetCreateContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (_$data.containsKey('duration') !=
        other._$data.containsKey('duration')) {
      return false;
    }
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$mimeType = mimeType;
    final lOther$mimeType = other.mimeType;
    if (l$mimeType != lOther$mimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$duration = duration;
    final l$mimeType = mimeType;
    final l$title = title;
    return Object.hashAll([
      _$data.containsKey('duration') ? l$duration : const {},
      l$mimeType,
      _$data.containsKey('title') ? l$title : const {},
    ]);
  }
}

abstract class CopyWith_Input_AssetCreateContent<TRes> {
  factory CopyWith_Input_AssetCreateContent(
    Input_AssetCreateContent instance,
    TRes Function(Input_AssetCreateContent) then,
  ) = _CopyWithImpl_Input_AssetCreateContent;

  factory CopyWith_Input_AssetCreateContent.stub(TRes res) =
      _CopyWithStubImpl_Input_AssetCreateContent;

  TRes call({
    int? duration,
    String? mimeType,
    String? title,
  });
}

class _CopyWithImpl_Input_AssetCreateContent<TRes>
    implements CopyWith_Input_AssetCreateContent<TRes> {
  _CopyWithImpl_Input_AssetCreateContent(
    this._instance,
    this._then,
  );

  final Input_AssetCreateContent _instance;

  final TRes Function(Input_AssetCreateContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? duration = _undefined,
    Object? mimeType = _undefined,
    Object? title = _undefined,
  }) =>
      _then(Input_AssetCreateContent._({
        ..._instance._$data,
        if (duration != _undefined) 'duration': (duration as int?),
        if (mimeType != _undefined && mimeType != null)
          'mimeType': (mimeType as String),
        if (title != _undefined) 'title': (title as String?),
      }));
}

class _CopyWithStubImpl_Input_AssetCreateContent<TRes>
    implements CopyWith_Input_AssetCreateContent<TRes> {
  _CopyWithStubImpl_Input_AssetCreateContent(this._res);

  TRes _res;

  call({
    int? duration,
    String? mimeType,
    String? title,
  }) =>
      _res;
}

class Input_ReportCreateContent {
  factory Input_ReportCreateContent({
    Enum_ReportCategory? category,
    DateTime? date,
    String? imageID,
    String? message,
    required String title,
    String? videoID,
  }) =>
      Input_ReportCreateContent._({
        if (category != null) r'category': category,
        if (date != null) r'date': date,
        if (imageID != null) r'imageID': imageID,
        if (message != null) r'message': message,
        r'title': title,
        if (videoID != null) r'videoID': videoID,
      });

  Input_ReportCreateContent._(this._$data);

  factory Input_ReportCreateContent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] = l$category == null
          ? null
          : fromJson_Enum_ReportCategory((l$category as String));
    }
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] =
          l$date == null ? null : DateTime.parse((l$date as String));
    }
    if (data.containsKey('imageID')) {
      final l$imageID = data['imageID'];
      result$data['imageID'] = (l$imageID as String?);
    }
    if (data.containsKey('message')) {
      final l$message = data['message'];
      result$data['message'] = (l$message as String?);
    }
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    if (data.containsKey('videoID')) {
      final l$videoID = data['videoID'];
      result$data['videoID'] = (l$videoID as String?);
    }
    return Input_ReportCreateContent._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_ReportCategory? get category =>
      (_$data['category'] as Enum_ReportCategory?);
  DateTime? get date => (_$data['date'] as DateTime?);
  String? get imageID => (_$data['imageID'] as String?);
  String? get message => (_$data['message'] as String?);
  String get title => (_$data['title'] as String);
  String? get videoID => (_$data['videoID'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] =
          l$category == null ? null : toJson_Enum_ReportCategory(l$category);
    }
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date?.toIso8601String();
    }
    if (_$data.containsKey('imageID')) {
      final l$imageID = imageID;
      result$data['imageID'] = l$imageID;
    }
    if (_$data.containsKey('message')) {
      final l$message = message;
      result$data['message'] = l$message;
    }
    final l$title = title;
    result$data['title'] = l$title;
    if (_$data.containsKey('videoID')) {
      final l$videoID = videoID;
      result$data['videoID'] = l$videoID;
    }
    return result$data;
  }

  CopyWith_Input_ReportCreateContent<Input_ReportCreateContent> get copyWith =>
      CopyWith_Input_ReportCreateContent(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input_ReportCreateContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    final l$imageID = imageID;
    final lOther$imageID = other.imageID;
    if (_$data.containsKey('imageID') != other._$data.containsKey('imageID')) {
      return false;
    }
    if (l$imageID != lOther$imageID) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (_$data.containsKey('message') != other._$data.containsKey('message')) {
      return false;
    }
    if (l$message != lOther$message) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$videoID = videoID;
    final lOther$videoID = other.videoID;
    if (_$data.containsKey('videoID') != other._$data.containsKey('videoID')) {
      return false;
    }
    if (l$videoID != lOther$videoID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$category = category;
    final l$date = date;
    final l$imageID = imageID;
    final l$message = message;
    final l$title = title;
    final l$videoID = videoID;
    return Object.hashAll([
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('date') ? l$date : const {},
      _$data.containsKey('imageID') ? l$imageID : const {},
      _$data.containsKey('message') ? l$message : const {},
      l$title,
      _$data.containsKey('videoID') ? l$videoID : const {},
    ]);
  }
}

abstract class CopyWith_Input_ReportCreateContent<TRes> {
  factory CopyWith_Input_ReportCreateContent(
    Input_ReportCreateContent instance,
    TRes Function(Input_ReportCreateContent) then,
  ) = _CopyWithImpl_Input_ReportCreateContent;

  factory CopyWith_Input_ReportCreateContent.stub(TRes res) =
      _CopyWithStubImpl_Input_ReportCreateContent;

  TRes call({
    Enum_ReportCategory? category,
    DateTime? date,
    String? imageID,
    String? message,
    String? title,
    String? videoID,
  });
}

class _CopyWithImpl_Input_ReportCreateContent<TRes>
    implements CopyWith_Input_ReportCreateContent<TRes> {
  _CopyWithImpl_Input_ReportCreateContent(
    this._instance,
    this._then,
  );

  final Input_ReportCreateContent _instance;

  final TRes Function(Input_ReportCreateContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? category = _undefined,
    Object? date = _undefined,
    Object? imageID = _undefined,
    Object? message = _undefined,
    Object? title = _undefined,
    Object? videoID = _undefined,
  }) =>
      _then(Input_ReportCreateContent._({
        ..._instance._$data,
        if (category != _undefined)
          'category': (category as Enum_ReportCategory?),
        if (date != _undefined) 'date': (date as DateTime?),
        if (imageID != _undefined) 'imageID': (imageID as String?),
        if (message != _undefined) 'message': (message as String?),
        if (title != _undefined && title != null) 'title': (title as String),
        if (videoID != _undefined) 'videoID': (videoID as String?),
      }));
}

class _CopyWithStubImpl_Input_ReportCreateContent<TRes>
    implements CopyWith_Input_ReportCreateContent<TRes> {
  _CopyWithStubImpl_Input_ReportCreateContent(this._res);

  TRes _res;

  call({
    Enum_ReportCategory? category,
    DateTime? date,
    String? imageID,
    String? message,
    String? title,
    String? videoID,
  }) =>
      _res;
}

class Input_UserUpdateContent {
  factory Input_UserUpdateContent({
    String? fullName,
    String? username,
  }) =>
      Input_UserUpdateContent._({
        if (fullName != null) r'fullName': fullName,
        if (username != null) r'username': username,
      });

  Input_UserUpdateContent._(this._$data);

  factory Input_UserUpdateContent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fullName')) {
      final l$fullName = data['fullName'];
      result$data['fullName'] = (l$fullName as String?);
    }
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    return Input_UserUpdateContent._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get fullName => (_$data['fullName'] as String?);
  String? get username => (_$data['username'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fullName')) {
      final l$fullName = fullName;
      result$data['fullName'] = l$fullName;
    }
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    return result$data;
  }

  CopyWith_Input_UserUpdateContent<Input_UserUpdateContent> get copyWith =>
      CopyWith_Input_UserUpdateContent(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input_UserUpdateContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (_$data.containsKey('fullName') !=
        other._$data.containsKey('fullName')) {
      return false;
    }
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fullName = fullName;
    final l$username = username;
    return Object.hashAll([
      _$data.containsKey('fullName') ? l$fullName : const {},
      _$data.containsKey('username') ? l$username : const {},
    ]);
  }
}

abstract class CopyWith_Input_UserUpdateContent<TRes> {
  factory CopyWith_Input_UserUpdateContent(
    Input_UserUpdateContent instance,
    TRes Function(Input_UserUpdateContent) then,
  ) = _CopyWithImpl_Input_UserUpdateContent;

  factory CopyWith_Input_UserUpdateContent.stub(TRes res) =
      _CopyWithStubImpl_Input_UserUpdateContent;

  TRes call({
    String? fullName,
    String? username,
  });
}

class _CopyWithImpl_Input_UserUpdateContent<TRes>
    implements CopyWith_Input_UserUpdateContent<TRes> {
  _CopyWithImpl_Input_UserUpdateContent(
    this._instance,
    this._then,
  );

  final Input_UserUpdateContent _instance;

  final TRes Function(Input_UserUpdateContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fullName = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Input_UserUpdateContent._({
        ..._instance._$data,
        if (fullName != _undefined) 'fullName': (fullName as String?),
        if (username != _undefined) 'username': (username as String?),
      }));
}

class _CopyWithStubImpl_Input_UserUpdateContent<TRes>
    implements CopyWith_Input_UserUpdateContent<TRes> {
  _CopyWithStubImpl_Input_UserUpdateContent(this._res);

  TRes _res;

  call({
    String? fullName,
    String? username,
  }) =>
      _res;
}

enum Enum_AssetPathType {
  IMAGE_HIGH,
  IMAGE_LOW,
  IMAGE_MEDIUM,
  ORIGINAL,
  PROXY,
  $unknown
}

String toJson_Enum_AssetPathType(Enum_AssetPathType e) {
  switch (e) {
    case Enum_AssetPathType.IMAGE_HIGH:
      return r'IMAGE_HIGH';
    case Enum_AssetPathType.IMAGE_LOW:
      return r'IMAGE_LOW';
    case Enum_AssetPathType.IMAGE_MEDIUM:
      return r'IMAGE_MEDIUM';
    case Enum_AssetPathType.ORIGINAL:
      return r'ORIGINAL';
    case Enum_AssetPathType.PROXY:
      return r'PROXY';
    case Enum_AssetPathType.$unknown:
      return r'$unknown';
  }
}

Enum_AssetPathType fromJson_Enum_AssetPathType(String value) {
  switch (value) {
    case r'IMAGE_HIGH':
      return Enum_AssetPathType.IMAGE_HIGH;
    case r'IMAGE_LOW':
      return Enum_AssetPathType.IMAGE_LOW;
    case r'IMAGE_MEDIUM':
      return Enum_AssetPathType.IMAGE_MEDIUM;
    case r'ORIGINAL':
      return Enum_AssetPathType.ORIGINAL;
    case r'PROXY':
      return Enum_AssetPathType.PROXY;
    default:
      return Enum_AssetPathType.$unknown;
  }
}

enum Enum_ReportCategory {
  BEST_GOAL,
  COMMERCE,
  CULTURE,
  EDUCATION,
  HEALTH,
  INFRASTRUCTURE,
  LOCAL_EVENTS,
  LOCAL_SPORT,
  MISSING,
  OTHER,
  POLITICS,
  PUBLIC_LIGHTING,
  PUBLIC_TRANSPORT,
  SAFETY,
  SCIENCE_TECH,
  TOURISM,
  $unknown
}

String toJson_Enum_ReportCategory(Enum_ReportCategory e) {
  switch (e) {
    case Enum_ReportCategory.BEST_GOAL:
      return r'BEST_GOAL';
    case Enum_ReportCategory.COMMERCE:
      return r'COMMERCE';
    case Enum_ReportCategory.CULTURE:
      return r'CULTURE';
    case Enum_ReportCategory.EDUCATION:
      return r'EDUCATION';
    case Enum_ReportCategory.HEALTH:
      return r'HEALTH';
    case Enum_ReportCategory.INFRASTRUCTURE:
      return r'INFRASTRUCTURE';
    case Enum_ReportCategory.LOCAL_EVENTS:
      return r'LOCAL_EVENTS';
    case Enum_ReportCategory.LOCAL_SPORT:
      return r'LOCAL_SPORT';
    case Enum_ReportCategory.MISSING:
      return r'MISSING';
    case Enum_ReportCategory.OTHER:
      return r'OTHER';
    case Enum_ReportCategory.POLITICS:
      return r'POLITICS';
    case Enum_ReportCategory.PUBLIC_LIGHTING:
      return r'PUBLIC_LIGHTING';
    case Enum_ReportCategory.PUBLIC_TRANSPORT:
      return r'PUBLIC_TRANSPORT';
    case Enum_ReportCategory.SAFETY:
      return r'SAFETY';
    case Enum_ReportCategory.SCIENCE_TECH:
      return r'SCIENCE_TECH';
    case Enum_ReportCategory.TOURISM:
      return r'TOURISM';
    case Enum_ReportCategory.$unknown:
      return r'$unknown';
  }
}

Enum_ReportCategory fromJson_Enum_ReportCategory(String value) {
  switch (value) {
    case r'BEST_GOAL':
      return Enum_ReportCategory.BEST_GOAL;
    case r'COMMERCE':
      return Enum_ReportCategory.COMMERCE;
    case r'CULTURE':
      return Enum_ReportCategory.CULTURE;
    case r'EDUCATION':
      return Enum_ReportCategory.EDUCATION;
    case r'HEALTH':
      return Enum_ReportCategory.HEALTH;
    case r'INFRASTRUCTURE':
      return Enum_ReportCategory.INFRASTRUCTURE;
    case r'LOCAL_EVENTS':
      return Enum_ReportCategory.LOCAL_EVENTS;
    case r'LOCAL_SPORT':
      return Enum_ReportCategory.LOCAL_SPORT;
    case r'MISSING':
      return Enum_ReportCategory.MISSING;
    case r'OTHER':
      return Enum_ReportCategory.OTHER;
    case r'POLITICS':
      return Enum_ReportCategory.POLITICS;
    case r'PUBLIC_LIGHTING':
      return Enum_ReportCategory.PUBLIC_LIGHTING;
    case r'PUBLIC_TRANSPORT':
      return Enum_ReportCategory.PUBLIC_TRANSPORT;
    case r'SAFETY':
      return Enum_ReportCategory.SAFETY;
    case r'SCIENCE_TECH':
      return Enum_ReportCategory.SCIENCE_TECH;
    case r'TOURISM':
      return Enum_ReportCategory.TOURISM;
    default:
      return Enum_ReportCategory.$unknown;
  }
}

enum Enum_ReportStatus { APPROVED, PENDING, REJECTED, $unknown }

String toJson_Enum_ReportStatus(Enum_ReportStatus e) {
  switch (e) {
    case Enum_ReportStatus.APPROVED:
      return r'APPROVED';
    case Enum_ReportStatus.PENDING:
      return r'PENDING';
    case Enum_ReportStatus.REJECTED:
      return r'REJECTED';
    case Enum_ReportStatus.$unknown:
      return r'$unknown';
  }
}

Enum_ReportStatus fromJson_Enum_ReportStatus(String value) {
  switch (value) {
    case r'APPROVED':
      return Enum_ReportStatus.APPROVED;
    case r'PENDING':
      return Enum_ReportStatus.PENDING;
    case r'REJECTED':
      return Enum_ReportStatus.REJECTED;
    default:
      return Enum_ReportStatus.$unknown;
  }
}

enum Enum___TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson_Enum___TypeKind(Enum___TypeKind e) {
  switch (e) {
    case Enum___TypeKind.SCALAR:
      return r'SCALAR';
    case Enum___TypeKind.OBJECT:
      return r'OBJECT';
    case Enum___TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum___TypeKind.UNION:
      return r'UNION';
    case Enum___TypeKind.ENUM:
      return r'ENUM';
    case Enum___TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum___TypeKind.LIST:
      return r'LIST';
    case Enum___TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum___TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum___TypeKind fromJson_Enum___TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum___TypeKind.SCALAR;
    case r'OBJECT':
      return Enum___TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum___TypeKind.INTERFACE;
    case r'UNION':
      return Enum___TypeKind.UNION;
    case r'ENUM':
      return Enum___TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum___TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum___TypeKind.LIST;
    case r'NON_NULL':
      return Enum___TypeKind.NON_NULL;
    default:
      return Enum___TypeKind.$unknown;
  }
}

enum Enum___DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson_Enum___DirectiveLocation(Enum___DirectiveLocation e) {
  switch (e) {
    case Enum___DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum___DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum___DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum___DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum___DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum___DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum___DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum___DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum___DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum___DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum___DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum___DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum___DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum___DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum___DirectiveLocation.UNION:
      return r'UNION';
    case Enum___DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum___DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum___DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum___DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum___DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum___DirectiveLocation fromJson_Enum___DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum___DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum___DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum___DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum___DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum___DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum___DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum___DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum___DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum___DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum___DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum___DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum___DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum___DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum___DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum___DirectiveLocation.UNION;
    case r'ENUM':
      return Enum___DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum___DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum___DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum___DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum___DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'Node': {
    'Asset',
    'Report',
    'User',
  }
};
