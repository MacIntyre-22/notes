# Change Notifiers and Hive

#### Basic Change Notifier

```dart
class TodoProvider extends ChangeNotifier {
	#Where to store and modify the info
  final List<Todo> todos = [];

  void addTodo(Todo todo) {
    todos.add(todo);
    notifyListeners();
  }

  void toggleTodoStatus(Todo todo) {
    final index = todos.indexOf(todo);
    todos[index] = todo.copyWith(completed: !todo.completed);
    notifyListeners();
  }
}
```

#### Basic Change Notifier with *Hive*

```dart
class ContactList extends ChangeNotifier {

	// name of the box(sql table) to store info
  String _contactsBoxName = "contacts";
	// box 
  Box<Contact>? _box;

	// needs initializer
  ContactList() {
		// open and assign the box
    Hive.openBox<Contact>(_contactsBoxName).then((value) {
      _box = value;
      notifyListeners();
    });
  }

	// use to display
	// return items in List or return empty list
  List<Contact> get contacts => _box?.values.toList() ?? [];

	// CRUD operations using hive
	// Remember to notifyListeners
  addContact(Contact contact) {
    _box?.put(contact.id, contact);
    notifyListeners();
  }

  removeContact(Contact contact) {
    _box?.delete(contact.id);
    notifyListeners();
  }

  modifyContact(Contact contact) {
    _box?.put(contact.id, contact);
    notifyListeners();
  }
}
```