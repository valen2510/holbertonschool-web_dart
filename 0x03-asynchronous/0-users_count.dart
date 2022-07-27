Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

usersCount() async {
  print(await fetchUsersCount());
}