Future<String> fetchUser() => Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );
    
getUser() async {
  try {
    print(await fetchUser());
  } catch (err) {
    print('error caught: $err');
  }
}