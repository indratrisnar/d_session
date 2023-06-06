Easy way to access Shared Preference, or we can call like session. For more customization, you can use [shared_preferences](https://pub.dev/packages/shared_preferences) package.

## Features

1. [User](#1-user)
2. [Token](#2-token)
3. [Custom](#3-custom)

### 1. User

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

### 2. Token

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

### 3. Custom

For custom, you must set the key. The keyword must be other than:

- d_session_user
- d_session_token

[Tutorial]()

```dart
DSession.setCustom('isDark', true);

final data = await DSession.getCustom('isDark');
debugPrint(data.toString());
bool isDark = data ?? false;
if(isDark){
    debugPrint('Dark theme activated');
}

DSession.removeCustom('isDark');
```

## Additional information

...
