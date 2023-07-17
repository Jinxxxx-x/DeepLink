// ignore_for_file: type=lint
// GENERATED FILE DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment_UserMe {
  Fragment_UserMe({
    required this.id,
    this.fullName,
    required this.username,
    this.email,
    this.avatar,
    this.$__typename = 'UserMe',
  });

  factory Fragment_UserMe.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$fullName = json['fullName'];
    final l$username = json['username'];
    final l$email = json['email'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment_UserMe(
      id: (l$id as String),
      fullName: (l$fullName as String?),
      username: (l$username as String),
      email: (l$email as String?),
      avatar: (l$avatar as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? fullName;

  final String username;

  final String? email;

  final String? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$fullName = fullName;
    final l$username = username;
    final l$email = email;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$fullName,
      l$username,
      l$email,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_UserMe) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_UserMe on Fragment_UserMe {
  CopyWith_Fragment_UserMe<Fragment_UserMe> get copyWith =>
      CopyWith_Fragment_UserMe(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_UserMe<TRes> {
  factory CopyWith_Fragment_UserMe(
    Fragment_UserMe instance,
    TRes Function(Fragment_UserMe) then,
  ) = _CopyWithImpl_Fragment_UserMe;

  factory CopyWith_Fragment_UserMe.stub(TRes res) =
      _CopyWithStubImpl_Fragment_UserMe;

  TRes call({
    String? id,
    String? fullName,
    String? username,
    String? email,
    String? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_UserMe<TRes>
    implements CopyWith_Fragment_UserMe<TRes> {
  _CopyWithImpl_Fragment_UserMe(
    this._instance,
    this._then,
  );

  final Fragment_UserMe _instance;

  final TRes Function(Fragment_UserMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? fullName = _undefined,
    Object? username = _undefined,
    Object? email = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_UserMe(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        email: email == _undefined ? _instance.email : (email as String?),
        avatar: avatar == _undefined ? _instance.avatar : (avatar as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_UserMe<TRes>
    implements CopyWith_Fragment_UserMe<TRes> {
  _CopyWithStubImpl_Fragment_UserMe(this._res);

  TRes _res;

  call({
    String? id,
    String? fullName,
    String? username,
    String? email,
    String? avatar,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionUserMe = FragmentDefinitionNode(
  name: NameNode(value: 'UserMe'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UserMe'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'fullName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'username'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'avatar'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentUserMe = DocumentNode(definitions: [
  fragmentDefinitionUserMe,
]);

extension ClientExtension_Fragment_UserMe on graphql.GraphQLClient {
  void writeFragment_UserMe({
    required Fragment_UserMe data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UserMe',
            document: documentNodeFragmentUserMe,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment_UserMe? readFragment_UserMe({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserMe',
          document: documentNodeFragmentUserMe,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment_UserMe.fromJson(result);
  }
}

class Fragment_Report {
  Fragment_Report({
    required this.id,
    required this.title,
    this.message,
    this.image,
    this.$__typename = 'Report',
  });

  factory Fragment_Report.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$message = json['message'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment_Report(
      id: (l$id as String),
      title: (l$title as String),
      message: (l$message as String?),
      image: l$image == null
          ? null
          : Fragment_Report_image.fromJson((l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String? message;

  final Fragment_Report_image? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$message = message;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$message,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_Report) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_Report on Fragment_Report {
  CopyWith_Fragment_Report<Fragment_Report> get copyWith =>
      CopyWith_Fragment_Report(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_Report<TRes> {
  factory CopyWith_Fragment_Report(
    Fragment_Report instance,
    TRes Function(Fragment_Report) then,
  ) = _CopyWithImpl_Fragment_Report;

  factory CopyWith_Fragment_Report.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Report;

  TRes call({
    String? id,
    String? title,
    String? message,
    Fragment_Report_image? image,
    String? $__typename,
  });
  CopyWith_Fragment_Report_image<TRes> get image;
}

class _CopyWithImpl_Fragment_Report<TRes>
    implements CopyWith_Fragment_Report<TRes> {
  _CopyWithImpl_Fragment_Report(
    this._instance,
    this._then,
  );

  final Fragment_Report _instance;

  final TRes Function(Fragment_Report) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? message = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_Report(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        message:
            message == _undefined ? _instance.message : (message as String?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment_Report_image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Fragment_Report_image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith_Fragment_Report_image.stub(_then(_instance))
        : CopyWith_Fragment_Report_image(local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl_Fragment_Report<TRes>
    implements CopyWith_Fragment_Report<TRes> {
  _CopyWithStubImpl_Fragment_Report(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? message,
    Fragment_Report_image? image,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Fragment_Report_image<TRes> get image =>
      CopyWith_Fragment_Report_image.stub(_res);
}

const fragmentDefinitionReport = FragmentDefinitionNode(
  name: NameNode(value: 'Report'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Report'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'message'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'image'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'paths'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'url'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'size'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentReport = DocumentNode(definitions: [
  fragmentDefinitionReport,
]);

extension ClientExtension_Fragment_Report on graphql.GraphQLClient {
  void writeFragment_Report({
    required Fragment_Report data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Report',
            document: documentNodeFragmentReport,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment_Report? readFragment_Report({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Report',
          document: documentNodeFragmentReport,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment_Report.fromJson(result);
  }
}

class Fragment_Report_image {
  Fragment_Report_image({
    required this.id,
    required this.paths,
    this.$__typename = 'Asset',
  });

  factory Fragment_Report_image.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$paths = json['paths'];
    final l$$__typename = json['__typename'];
    return Fragment_Report_image(
      id: (l$id as String),
      paths: (l$paths as List<dynamic>)
          .map((e) =>
              Fragment_Report_image_paths.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Fragment_Report_image_paths> paths;

  final String $__typename;

  get url => null;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$paths = paths;
    _resultData['paths'] = l$paths.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$paths = paths;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$paths.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_Report_image) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$paths = paths;
    final lOther$paths = other.paths;
    if (l$paths.length != lOther$paths.length) {
      return false;
    }
    for (int i = 0; i < l$paths.length; i++) {
      final l$paths$entry = l$paths[i];
      final lOther$paths$entry = lOther$paths[i];
      if (l$paths$entry != lOther$paths$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_Report_image on Fragment_Report_image {
  CopyWith_Fragment_Report_image<Fragment_Report_image> get copyWith =>
      CopyWith_Fragment_Report_image(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_Report_image<TRes> {
  factory CopyWith_Fragment_Report_image(
    Fragment_Report_image instance,
    TRes Function(Fragment_Report_image) then,
  ) = _CopyWithImpl_Fragment_Report_image;

  factory CopyWith_Fragment_Report_image.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Report_image;

  TRes call({
    String? id,
    List<Fragment_Report_image_paths>? paths,
    String? $__typename,
  });
  TRes paths(
      Iterable<Fragment_Report_image_paths> Function(
              Iterable<
                  CopyWith_Fragment_Report_image_paths<
                      Fragment_Report_image_paths>>)
          _fn);
}

class _CopyWithImpl_Fragment_Report_image<TRes>
    implements CopyWith_Fragment_Report_image<TRes> {
  _CopyWithImpl_Fragment_Report_image(
    this._instance,
    this._then,
  );

  final Fragment_Report_image _instance;

  final TRes Function(Fragment_Report_image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? paths = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_Report_image(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        paths: paths == _undefined || paths == null
            ? _instance.paths
            : (paths as List<Fragment_Report_image_paths>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes paths(
          Iterable<Fragment_Report_image_paths> Function(
                  Iterable<
                      CopyWith_Fragment_Report_image_paths<
                          Fragment_Report_image_paths>>)
              _fn) =>
      call(
          paths: _fn(
              _instance.paths.map((e) => CopyWith_Fragment_Report_image_paths(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Fragment_Report_image<TRes>
    implements CopyWith_Fragment_Report_image<TRes> {
  _CopyWithStubImpl_Fragment_Report_image(this._res);

  TRes _res;

  call({
    String? id,
    List<Fragment_Report_image_paths>? paths,
    String? $__typename,
  }) =>
      _res;
  paths(_fn) => _res;
}

class Fragment_Report_image_paths {
  Fragment_Report_image_paths({
    this.url,
    required this.size,
    this.$__typename = 'AssetPath',
  });

  factory Fragment_Report_image_paths.fromJson(Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$size = json['size'];
    final l$$__typename = json['__typename'];
    return Fragment_Report_image_paths(
      url: (l$url as String?),
      size: (l$size as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? url;

  final int size;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$size = size;
    _resultData['size'] = l$size;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$size = size;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$size,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment_Report_image_paths) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$size = size;
    final lOther$size = other.size;
    if (l$size != lOther$size) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_Report_image_paths
    on Fragment_Report_image_paths {
  CopyWith_Fragment_Report_image_paths<Fragment_Report_image_paths>
      get copyWith => CopyWith_Fragment_Report_image_paths(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_Report_image_paths<TRes> {
  factory CopyWith_Fragment_Report_image_paths(
    Fragment_Report_image_paths instance,
    TRes Function(Fragment_Report_image_paths) then,
  ) = _CopyWithImpl_Fragment_Report_image_paths;

  factory CopyWith_Fragment_Report_image_paths.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Report_image_paths;

  TRes call({
    String? url,
    int? size,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_Report_image_paths<TRes>
    implements CopyWith_Fragment_Report_image_paths<TRes> {
  _CopyWithImpl_Fragment_Report_image_paths(
    this._instance,
    this._then,
  );

  final Fragment_Report_image_paths _instance;

  final TRes Function(Fragment_Report_image_paths) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? size = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_Report_image_paths(
        url: url == _undefined ? _instance.url : (url as String?),
        size:
            size == _undefined || size == null ? _instance.size : (size as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Fragment_Report_image_paths<TRes>
    implements CopyWith_Fragment_Report_image_paths<TRes> {
  _CopyWithStubImpl_Fragment_Report_image_paths(this._res);

  TRes _res;

  call({
    String? url,
    int? size,
    String? $__typename,
  }) =>
      _res;
}

class Query_getMe {
  Query_getMe({
    required this.userMe,
    this.$__typename = 'Query',
  });

  factory Query_getMe.fromJson(Map<String, dynamic> json) {
    final l$userMe = json['userMe'];
    final l$$__typename = json['__typename'];
    return Query_getMe(
      userMe: Fragment_UserMe.fromJson((l$userMe as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_UserMe userMe;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userMe = userMe;
    _resultData['userMe'] = l$userMe.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userMe = userMe;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userMe,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_getMe) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userMe = userMe;
    final lOther$userMe = other.userMe;
    if (l$userMe != lOther$userMe) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_getMe on Query_getMe {
  CopyWith_Query_getMe<Query_getMe> get copyWith => CopyWith_Query_getMe(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_getMe<TRes> {
  factory CopyWith_Query_getMe(
    Query_getMe instance,
    TRes Function(Query_getMe) then,
  ) = _CopyWithImpl_Query_getMe;

  factory CopyWith_Query_getMe.stub(TRes res) = _CopyWithStubImpl_Query_getMe;

  TRes call({
    Fragment_UserMe? userMe,
    String? $__typename,
  });
  CopyWith_Fragment_UserMe<TRes> get userMe;
}

class _CopyWithImpl_Query_getMe<TRes> implements CopyWith_Query_getMe<TRes> {
  _CopyWithImpl_Query_getMe(
    this._instance,
    this._then,
  );

  final Query_getMe _instance;

  final TRes Function(Query_getMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userMe = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_getMe(
        userMe: userMe == _undefined || userMe == null
            ? _instance.userMe
            : (userMe as Fragment_UserMe),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Fragment_UserMe<TRes> get userMe {
    final local$userMe = _instance.userMe;
    return CopyWith_Fragment_UserMe(local$userMe, (e) => call(userMe: e));
  }
}

class _CopyWithStubImpl_Query_getMe<TRes>
    implements CopyWith_Query_getMe<TRes> {
  _CopyWithStubImpl_Query_getMe(this._res);

  TRes _res;

  call({
    Fragment_UserMe? userMe,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Fragment_UserMe<TRes> get userMe =>
      CopyWith_Fragment_UserMe.stub(_res);
}

const documentNodeQuerygetMe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getMe'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'userMe'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserMe'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionUserMe,
]);
Query_getMe _parserFn_Query_getMe(Map<String, dynamic> data) =>
    Query_getMe.fromJson(data);
typedef OnQueryComplete_Query_getMe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query_getMe?,
);

class Options_Query_getMe extends graphql.QueryOptions<Query_getMe> {
  Options_Query_getMe({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_getMe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete_Query_getMe? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn_Query_getMe(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetMe,
          parserFn: _parserFn_Query_getMe,
        );

  final OnQueryComplete_Query_getMe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions_Query_getMe extends graphql.WatchQueryOptions<Query_getMe> {
  WatchOptions_Query_getMe({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_getMe? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetMe,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_getMe,
        );
}

class FetchMoreOptions_Query_getMe extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_getMe({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerygetMe,
        );
}

extension ClientExtension_Query_getMe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_getMe>> query_getMe(
          [Options_Query_getMe? options]) async =>
      await this.query(options ?? Options_Query_getMe());
  graphql.ObservableQuery<Query_getMe> watchQuery_getMe(
          [WatchOptions_Query_getMe? options]) =>
      this.watchQuery(options ?? WatchOptions_Query_getMe());
  void writeQuery_getMe({
    required Query_getMe data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQuerygetMe)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_getMe? readQuery_getMe({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerygetMe)),
      optimistic: optimistic,
    );
    return result == null ? null : Query_getMe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query_getMe> useQuery_getMe(
        [Options_Query_getMe? options]) =>
    graphql_flutter.useQuery(options ?? Options_Query_getMe());
graphql.ObservableQuery<Query_getMe> useWatchQuery_getMe(
        [WatchOptions_Query_getMe? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions_Query_getMe());

class Query_getMe_Widget extends graphql_flutter.Query<Query_getMe> {
  Query_getMe_Widget({
    widgets.Key? key,
    Options_Query_getMe? options,
    required graphql_flutter.QueryBuilder<Query_getMe> builder,
  }) : super(
          key: key,
          options: options ?? Options_Query_getMe(),
          builder: builder,
        );
}

class Query_listFeed {
  Query_listFeed({
    required this.reportsFeed,
    this.$__typename = 'Query',
  });

  factory Query_listFeed.fromJson(Map<String, dynamic> json) {
    final l$reportsFeed = json['reportsFeed'];
    final l$$__typename = json['__typename'];
    return Query_listFeed(
      reportsFeed: Query_listFeed_reportsFeed.fromJson(
          (l$reportsFeed as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_listFeed_reportsFeed reportsFeed;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$reportsFeed = reportsFeed;
    _resultData['reportsFeed'] = l$reportsFeed.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$reportsFeed = reportsFeed;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$reportsFeed,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_listFeed) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$reportsFeed = reportsFeed;
    final lOther$reportsFeed = other.reportsFeed;
    if (l$reportsFeed != lOther$reportsFeed) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_listFeed on Query_listFeed {
  CopyWith_Query_listFeed<Query_listFeed> get copyWith =>
      CopyWith_Query_listFeed(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_listFeed<TRes> {
  factory CopyWith_Query_listFeed(
    Query_listFeed instance,
    TRes Function(Query_listFeed) then,
  ) = _CopyWithImpl_Query_listFeed;

  factory CopyWith_Query_listFeed.stub(TRes res) =
      _CopyWithStubImpl_Query_listFeed;

  TRes call({
    Query_listFeed_reportsFeed? reportsFeed,
    String? $__typename,
  });
  CopyWith_Query_listFeed_reportsFeed<TRes> get reportsFeed;
}

class _CopyWithImpl_Query_listFeed<TRes>
    implements CopyWith_Query_listFeed<TRes> {
  _CopyWithImpl_Query_listFeed(
    this._instance,
    this._then,
  );

  final Query_listFeed _instance;

  final TRes Function(Query_listFeed) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reportsFeed = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_listFeed(
        reportsFeed: reportsFeed == _undefined || reportsFeed == null
            ? _instance.reportsFeed
            : (reportsFeed as Query_listFeed_reportsFeed),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_listFeed_reportsFeed<TRes> get reportsFeed {
    final local$reportsFeed = _instance.reportsFeed;
    return CopyWith_Query_listFeed_reportsFeed(
        local$reportsFeed, (e) => call(reportsFeed: e));
  }
}

class _CopyWithStubImpl_Query_listFeed<TRes>
    implements CopyWith_Query_listFeed<TRes> {
  _CopyWithStubImpl_Query_listFeed(this._res);

  TRes _res;

  call({
    Query_listFeed_reportsFeed? reportsFeed,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_listFeed_reportsFeed<TRes> get reportsFeed =>
      CopyWith_Query_listFeed_reportsFeed.stub(_res);
}

const documentNodeQuerylistFeed = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'listFeed'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'reportsFeed'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Report'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionReport,
]);
Query_listFeed _parserFn_Query_listFeed(Map<String, dynamic> data) =>
    Query_listFeed.fromJson(data);
typedef OnQueryComplete_Query_listFeed = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query_listFeed?,
);

class Options_Query_listFeed extends graphql.QueryOptions<Query_listFeed> {
  Options_Query_listFeed({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_listFeed? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete_Query_listFeed? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn_Query_listFeed(data),
                  ),
          onError: onError,
          document: documentNodeQuerylistFeed,
          parserFn: _parserFn_Query_listFeed,
        );

  final OnQueryComplete_Query_listFeed? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions_Query_listFeed
    extends graphql.WatchQueryOptions<Query_listFeed> {
  WatchOptions_Query_listFeed({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_listFeed? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerylistFeed,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_listFeed,
        );
}

class FetchMoreOptions_Query_listFeed extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_listFeed({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerylistFeed,
        );
}

extension ClientExtension_Query_listFeed on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_listFeed>> query_listFeed(
          [Options_Query_listFeed? options]) async =>
      await this.query(options ?? Options_Query_listFeed());
  graphql.ObservableQuery<Query_listFeed> watchQuery_listFeed(
          [WatchOptions_Query_listFeed? options]) =>
      this.watchQuery(options ?? WatchOptions_Query_listFeed());
  void writeQuery_listFeed({
    required Query_listFeed data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQuerylistFeed)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_listFeed? readQuery_listFeed({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerylistFeed)),
      optimistic: optimistic,
    );
    return result == null ? null : Query_listFeed.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query_listFeed> useQuery_listFeed(
        [Options_Query_listFeed? options]) =>
    graphql_flutter.useQuery(options ?? Options_Query_listFeed());
graphql.ObservableQuery<Query_listFeed> useWatchQuery_listFeed(
        [WatchOptions_Query_listFeed? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions_Query_listFeed());

class Query_listFeed_Widget extends graphql_flutter.Query<Query_listFeed> {
  Query_listFeed_Widget({
    widgets.Key? key,
    Options_Query_listFeed? options,
    required graphql_flutter.QueryBuilder<Query_listFeed> builder,
  }) : super(
          key: key,
          options: options ?? Options_Query_listFeed(),
          builder: builder,
        );
}

class Query_listFeed_reportsFeed {
  Query_listFeed_reportsFeed({
    required this.edges,
    this.$__typename = 'ReportConnection',
  });

  factory Query_listFeed_reportsFeed.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query_listFeed_reportsFeed(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query_listFeed_reportsFeed_edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query_listFeed_reportsFeed_edges> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_listFeed_reportsFeed) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_listFeed_reportsFeed
    on Query_listFeed_reportsFeed {
  CopyWith_Query_listFeed_reportsFeed<Query_listFeed_reportsFeed>
      get copyWith => CopyWith_Query_listFeed_reportsFeed(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_listFeed_reportsFeed<TRes> {
  factory CopyWith_Query_listFeed_reportsFeed(
    Query_listFeed_reportsFeed instance,
    TRes Function(Query_listFeed_reportsFeed) then,
  ) = _CopyWithImpl_Query_listFeed_reportsFeed;

  factory CopyWith_Query_listFeed_reportsFeed.stub(TRes res) =
      _CopyWithStubImpl_Query_listFeed_reportsFeed;

  TRes call({
    List<Query_listFeed_reportsFeed_edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query_listFeed_reportsFeed_edges> Function(
              Iterable<
                  CopyWith_Query_listFeed_reportsFeed_edges<
                      Query_listFeed_reportsFeed_edges>>)
          _fn);
}

class _CopyWithImpl_Query_listFeed_reportsFeed<TRes>
    implements CopyWith_Query_listFeed_reportsFeed<TRes> {
  _CopyWithImpl_Query_listFeed_reportsFeed(
    this._instance,
    this._then,
  );

  final Query_listFeed_reportsFeed _instance;

  final TRes Function(Query_listFeed_reportsFeed) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_listFeed_reportsFeed(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query_listFeed_reportsFeed_edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query_listFeed_reportsFeed_edges> Function(
                  Iterable<
                      CopyWith_Query_listFeed_reportsFeed_edges<
                          Query_listFeed_reportsFeed_edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith_Query_listFeed_reportsFeed_edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Query_listFeed_reportsFeed<TRes>
    implements CopyWith_Query_listFeed_reportsFeed<TRes> {
  _CopyWithStubImpl_Query_listFeed_reportsFeed(this._res);

  TRes _res;

  call({
    List<Query_listFeed_reportsFeed_edges>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query_listFeed_reportsFeed_edges {
  Query_listFeed_reportsFeed_edges({
    required this.node,
    this.$__typename = 'ReportEdge',
  });

  factory Query_listFeed_reportsFeed_edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query_listFeed_reportsFeed_edges(
      node: Fragment_Report.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Report node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_listFeed_reportsFeed_edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_listFeed_reportsFeed_edges
    on Query_listFeed_reportsFeed_edges {
  CopyWith_Query_listFeed_reportsFeed_edges<Query_listFeed_reportsFeed_edges>
      get copyWith => CopyWith_Query_listFeed_reportsFeed_edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_listFeed_reportsFeed_edges<TRes> {
  factory CopyWith_Query_listFeed_reportsFeed_edges(
    Query_listFeed_reportsFeed_edges instance,
    TRes Function(Query_listFeed_reportsFeed_edges) then,
  ) = _CopyWithImpl_Query_listFeed_reportsFeed_edges;

  factory CopyWith_Query_listFeed_reportsFeed_edges.stub(TRes res) =
      _CopyWithStubImpl_Query_listFeed_reportsFeed_edges;

  TRes call({
    Fragment_Report? node,
    String? $__typename,
  });
  CopyWith_Fragment_Report<TRes> get node;
}

class _CopyWithImpl_Query_listFeed_reportsFeed_edges<TRes>
    implements CopyWith_Query_listFeed_reportsFeed_edges<TRes> {
  _CopyWithImpl_Query_listFeed_reportsFeed_edges(
    this._instance,
    this._then,
  );

  final Query_listFeed_reportsFeed_edges _instance;

  final TRes Function(Query_listFeed_reportsFeed_edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_listFeed_reportsFeed_edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment_Report),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Fragment_Report<TRes> get node {
    final local$node = _instance.node;
    return CopyWith_Fragment_Report(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl_Query_listFeed_reportsFeed_edges<TRes>
    implements CopyWith_Query_listFeed_reportsFeed_edges<TRes> {
  _CopyWithStubImpl_Query_listFeed_reportsFeed_edges(this._res);

  TRes _res;

  call({
    Fragment_Report? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Fragment_Report<TRes> get node =>
      CopyWith_Fragment_Report.stub(_res);
}

class Variables_Mutation_updateMe {
  factory Variables_Mutation_updateMe(
          {required Input_UserUpdateContent userUpdateMeContent}) =>
      Variables_Mutation_updateMe._({
        r'userUpdateMeContent': userUpdateMeContent,
      });

  Variables_Mutation_updateMe._(this._$data);

  factory Variables_Mutation_updateMe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userUpdateMeContent = data['userUpdateMeContent'];
    result$data['userUpdateMeContent'] = Input_UserUpdateContent.fromJson(
        (l$userUpdateMeContent as Map<String, dynamic>));
    return Variables_Mutation_updateMe._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_UserUpdateContent get userUpdateMeContent =>
      (_$data['userUpdateMeContent'] as Input_UserUpdateContent);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userUpdateMeContent = userUpdateMeContent;
    result$data['userUpdateMeContent'] = l$userUpdateMeContent.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_updateMe<Variables_Mutation_updateMe>
      get copyWith => CopyWith_Variables_Mutation_updateMe(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Mutation_updateMe) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userUpdateMeContent = userUpdateMeContent;
    final lOther$userUpdateMeContent = other.userUpdateMeContent;
    if (l$userUpdateMeContent != lOther$userUpdateMeContent) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userUpdateMeContent = userUpdateMeContent;
    return Object.hashAll([l$userUpdateMeContent]);
  }
}

abstract class CopyWith_Variables_Mutation_updateMe<TRes> {
  factory CopyWith_Variables_Mutation_updateMe(
    Variables_Mutation_updateMe instance,
    TRes Function(Variables_Mutation_updateMe) then,
  ) = _CopyWithImpl_Variables_Mutation_updateMe;

  factory CopyWith_Variables_Mutation_updateMe.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateMe;

  TRes call({Input_UserUpdateContent? userUpdateMeContent});
}

class _CopyWithImpl_Variables_Mutation_updateMe<TRes>
    implements CopyWith_Variables_Mutation_updateMe<TRes> {
  _CopyWithImpl_Variables_Mutation_updateMe(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateMe _instance;

  final TRes Function(Variables_Mutation_updateMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userUpdateMeContent = _undefined}) =>
      _then(Variables_Mutation_updateMe._({
        ..._instance._$data,
        if (userUpdateMeContent != _undefined && userUpdateMeContent != null)
          'userUpdateMeContent':
              (userUpdateMeContent as Input_UserUpdateContent),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_updateMe<TRes>
    implements CopyWith_Variables_Mutation_updateMe<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateMe(this._res);

  TRes _res;

  call({Input_UserUpdateContent? userUpdateMeContent}) => _res;
}

class Mutation_updateMe {
  Mutation_updateMe({
    required this.userUpdateMe,
    this.$__typename = 'Mutation',
  });

  factory Mutation_updateMe.fromJson(Map<String, dynamic> json) {
    final l$userUpdateMe = json['userUpdateMe'];
    final l$$__typename = json['__typename'];
    return Mutation_updateMe(
      userUpdateMe:
          Fragment_UserMe.fromJson((l$userUpdateMe as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_UserMe userUpdateMe;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userUpdateMe = userUpdateMe;
    _resultData['userUpdateMe'] = l$userUpdateMe.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userUpdateMe = userUpdateMe;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userUpdateMe,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation_updateMe) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userUpdateMe = userUpdateMe;
    final lOther$userUpdateMe = other.userUpdateMe;
    if (l$userUpdateMe != lOther$userUpdateMe) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_updateMe on Mutation_updateMe {
  CopyWith_Mutation_updateMe<Mutation_updateMe> get copyWith =>
      CopyWith_Mutation_updateMe(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updateMe<TRes> {
  factory CopyWith_Mutation_updateMe(
    Mutation_updateMe instance,
    TRes Function(Mutation_updateMe) then,
  ) = _CopyWithImpl_Mutation_updateMe;

  factory CopyWith_Mutation_updateMe.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateMe;

  TRes call({
    Fragment_UserMe? userUpdateMe,
    String? $__typename,
  });
  CopyWith_Fragment_UserMe<TRes> get userUpdateMe;
}

class _CopyWithImpl_Mutation_updateMe<TRes>
    implements CopyWith_Mutation_updateMe<TRes> {
  _CopyWithImpl_Mutation_updateMe(
    this._instance,
    this._then,
  );

  final Mutation_updateMe _instance;

  final TRes Function(Mutation_updateMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userUpdateMe = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updateMe(
        userUpdateMe: userUpdateMe == _undefined || userUpdateMe == null
            ? _instance.userUpdateMe
            : (userUpdateMe as Fragment_UserMe),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Fragment_UserMe<TRes> get userUpdateMe {
    final local$userUpdateMe = _instance.userUpdateMe;
    return CopyWith_Fragment_UserMe(
        local$userUpdateMe, (e) => call(userUpdateMe: e));
  }
}

class _CopyWithStubImpl_Mutation_updateMe<TRes>
    implements CopyWith_Mutation_updateMe<TRes> {
  _CopyWithStubImpl_Mutation_updateMe(this._res);

  TRes _res;

  call({
    Fragment_UserMe? userUpdateMe,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Fragment_UserMe<TRes> get userUpdateMe =>
      CopyWith_Fragment_UserMe.stub(_res);
}

const documentNodeMutationupdateMe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateMe'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userUpdateMeContent')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserUpdateContent'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'userUpdateMe'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'content'),
            value: VariableNode(name: NameNode(value: 'userUpdateMeContent')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserMe'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionUserMe,
]);
Mutation_updateMe _parserFn_Mutation_updateMe(Map<String, dynamic> data) =>
    Mutation_updateMe.fromJson(data);
typedef OnMutationCompleted_Mutation_updateMe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation_updateMe?,
);

class Options_Mutation_updateMe
    extends graphql.MutationOptions<Mutation_updateMe> {
  Options_Mutation_updateMe({
    String? operationName,
    required Variables_Mutation_updateMe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation_updateMe? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted_Mutation_updateMe? onCompleted,
    graphql.OnMutationUpdate<Mutation_updateMe>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn_Mutation_updateMe(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateMe,
          parserFn: _parserFn_Mutation_updateMe,
        );

  final OnMutationCompleted_Mutation_updateMe? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions_Mutation_updateMe
    extends graphql.WatchQueryOptions<Mutation_updateMe> {
  WatchOptions_Mutation_updateMe({
    String? operationName,
    required Variables_Mutation_updateMe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation_updateMe? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationupdateMe,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Mutation_updateMe,
        );
}

extension ClientExtension_Mutation_updateMe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation_updateMe>> mutate_updateMe(
          Options_Mutation_updateMe options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation_updateMe> watchMutation_updateMe(
          WatchOptions_Mutation_updateMe options) =>
      this.watchMutation(options);
}

class Mutation_updateMe_HookResult {
  Mutation_updateMe_HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation_Mutation_updateMe runMutation;

  final graphql.QueryResult<Mutation_updateMe> result;
}

Mutation_updateMe_HookResult useMutation_updateMe(
    [WidgetOptions_Mutation_updateMe? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions_Mutation_updateMe());
  return Mutation_updateMe_HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation_updateMe> useWatchMutation_updateMe(
        WatchOptions_Mutation_updateMe options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions_Mutation_updateMe
    extends graphql.MutationOptions<Mutation_updateMe> {
  WidgetOptions_Mutation_updateMe({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation_updateMe? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted_Mutation_updateMe? onCompleted,
    graphql.OnMutationUpdate<Mutation_updateMe>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn_Mutation_updateMe(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateMe,
          parserFn: _parserFn_Mutation_updateMe,
        );

  final OnMutationCompleted_Mutation_updateMe? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation_Mutation_updateMe
    = graphql.MultiSourceResult<Mutation_updateMe> Function(
  Variables_Mutation_updateMe, {
  Object? optimisticResult,
  Mutation_updateMe? typedOptimisticResult,
});
typedef Builder_Mutation_updateMe = widgets.Widget Function(
  RunMutation_Mutation_updateMe,
  graphql.QueryResult<Mutation_updateMe>?,
);

class Mutation_updateMe_Widget
    extends graphql_flutter.Mutation<Mutation_updateMe> {
  Mutation_updateMe_Widget({
    widgets.Key? key,
    WidgetOptions_Mutation_updateMe? options,
    required Builder_Mutation_updateMe builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions_Mutation_updateMe(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}
