# ourl
web api for ourl.me url shortner site
# main
```dart
import 'ourl.dart';

void main() async {
  final ourl = Ourl();
  try {
    final url = await ourl.shortUrl("tvs.tv");
    print(url);
    
  } catch (e) {
    print('❌ Ошибка: $e');
  }
}
```

# Launch (your script)
```
dart run main.dart
dart pub get 
```
