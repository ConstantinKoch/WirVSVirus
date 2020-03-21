class Account {
  String username;
  String firstname;
  String lastname;
  String description;

  Account(this.username, this.firstname, this.lastname, this.description);

  String get getUsername => username;

  set setUsername(String username) => this.username = username;

  String get getFirstname => firstname;

  set setFirstname(String firstname) => this.firstname = firstname;

  String get getLastname => lastname;

  set setLastname(String lastname) => this.lastname = lastname;

  String get getDescription => description;

  set setDescription(String description) => this.description = description;
}

