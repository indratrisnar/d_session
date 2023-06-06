Easy way to access Shared Preference, or we can call like session.

## Features

1. [User](#bar)
2. [Token](#line)
   - [Image](#line-image)
   - [Example](#line-example)
   - Tutorial
     - [Line Chart From Data Collection](https://www.youtube.com/watch?v=mdMayNHY7so&list=PLMeCG4xYek-OdumjOowVcNmW_nVPPUVfa&index=7)
3. [Custom](#pie)
   - [Image](#pie-image)
   - [Example](#pie-example)

### User

[Tutorial]()

```dart
Map user = {
'id': 'aha276avsUHUa',
'email': 'flutter_d_lux@gmail.com',
'username': 'indre',
};
DSession.setUser(user);

DSession.getUser().then((value) {
    debugPrint(value.toString());
    if (value != null) {
        debugPrint(value['email']);
    }
});

DSession.removeUser();
```

### Token

[Tutorial]()

```dart
Map data = {
    'token': 'askuaysuabs',
    'expire': '2023-10-10 01:01:01',
};
DSession.setToken(data);

DSession.getToken().then((value) {
    debugPrint(value.toString());
});

DSession.removeToken();
```

### Custom

For custom, you must set the key. The keyword must be other than:\

- d_session_user
- d_session_token

[Tutorial]()

```dart
DSession.setCustom('isDark', true);

final data = await DSession.getCustom('isDark');
debugPrint(data.toString());
bool isDark = data??false;
if(isDark){
    debugPrint('Dark theme activated');
}

DSession.removeCustom('isDark');
```

## Additional information

...
