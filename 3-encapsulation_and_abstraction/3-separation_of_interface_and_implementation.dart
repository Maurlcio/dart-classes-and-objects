class User{
  Map<String, dynamic> _data = {};

  void setName(String name){
    _data['name'] = name;
  }

  String getName(){
    if (_data['name'] != null){
      return _data['name'];
    } else {
      return "Name not set";
    }
  }
}

void main() {
  User user = User();
  print(user.getName()); // Before setting
  user.setName('Alice');
  print(user.getName());
}