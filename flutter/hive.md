# Hive in Flutter

#### Packages

After importing packages in pubspec.yaml:

```dart
# in dependicies add
dependencies:
 	# adding hive
  hive: ^2.2.3
  hive_flutter: ^1.1.0

# in dev_dependencies add
dev_dependencies:
  hive_generator: ^2.0.0
  build_runner: ^2.3.3
```

#### Building types and adapters

Types look like this:

```dart
// Required for making adapter
part 'contact.g.dart';

// Hive type id
@HiveType(typeId: 0)
class Contact {
	// Create fields using ids aswell
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final int age;
  @HiveField(3)
  final Relationship relationship;
  @HiveField(4)
  final String phoneNumber;

// Regular finish with initalizer and copywith
  Contact(this.id, this.name, this.age, this.phoneNumber, this.relationship);

  Contact copyWith(
      {String? name,
      int? age,
      Relationship? relationship,
      String? phoneNumber}) {
    return Contact(
      this.id,
      name ?? this.name,
      age ?? this.age,
      phoneNumber ?? this.phoneNumber,
      relationship ?? this.relationship,
    );
  }
}
```

After building the type, the adapter can be generated running this line:

```
flutter packages pub run build_runner build
```

Lastly register adapter and initialize hive in main app function:

```dart
import 'package:hive_flutter/hive_flutter.dart';
import 'package:your_app_name/your_model.dart'; // Import your model

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(YourModelAdapter()); // Register the generated adapter
  runApp(MyApp());
}
```