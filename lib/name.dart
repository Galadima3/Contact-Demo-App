class Contact {
  final String name;

  const Contact(this.name);
}

class ContactBook {
  ContactBook._isSharedInstance();
  static final ContactBook _shared = ContactBook._isSharedInstance();
  factory ContactBook() => _shared;
  final List<Contact> _contacts = [];
  int get length => _contacts.length;
  void add({required Contact contact}) {
    _contacts.add(contact);
  }
}
