import 'dart:convert';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

getUserId() async {
  var strRepr = await fetchUserData();

  var Repr  = json.decode(strRepr);

  return Repr["id"];
}
