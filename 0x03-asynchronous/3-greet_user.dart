import 'dart:convert';
import 'dart:async';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);
    
greetUser() async {
  try {
  return 'hello ${json.decode(await fetchUserData())['username']}';
  } catch (err) {
    print('error caught: $err');
  }
}

loginUser() async {
 try {
  if (await checkCredentials()) {
    return await greetUser();
  } else {
    return 'Wrong credentials';
  }
} catch (err) {
    print('error caught: $err');
  }
}