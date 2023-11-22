import "dart:io";

void main() {
  late List<Contact> contacts = [];
  late int menu;

  do {
    print("\n\nWelcome to contact management system");
    print("1. Show all contacts");
    print("2. Add new contact");
    print("3. Delete contact");
    print("4. Exit");
    print("Select Menu : ");
    var inMenu = stdin.readLineSync();
    menu = int.parse(inMenu ?? '');

    switch (menu) {
      case 1:
        print("Show all contacts");
        for (var contact in contacts) {
          print("Name : ${contact.name}, Phone : ${contact.phone}");
        }
        break;
      case 2:
        print("===== Add new contact =====");
        print("Enter name : ");
        var inName = stdin.readLineSync();
        print("Enter phone : ");
        var inPhone = stdin.readLineSync();

        var contact = Contact(inName ?? '', inPhone ?? '');
        contacts.add(contact);
        print("Contact added successfully");
        break;
      case 3:
        print("===== Delete contact =====");
        print("Enter name : ");
        var inName = stdin.readLineSync();
        for (var contact in contacts) {
          if (contact.name == inName) {
            contacts.remove(contact);
            print("Contact deleted successfully");
            break;
          }
        }
        break;
      case 4:
        print("Exit");
        break;
      default:
        print("Menu not available");
    }
  } while (menu != 4);
}

class Contact {
  late String _name;
  late String _phone;

  Contact(this._name, this._phone);

  String get name => this._name;
  String get phone => this._phone;
}
