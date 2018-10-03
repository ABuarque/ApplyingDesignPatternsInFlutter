class SingletonClass {
  
  static final SingletonClass _INSTANCE = new SingletonClass._internal();
  
  factory SingletonClass() {
    return _INSTANCE;
  }
  
  SingletonClass._internal() {
    print("Hi from internal, this method will be called only one time"); 
  }
  
  String method() {
    return "OI";
  }
  
}

void main() {
  // craeting one instance
  var s1 = new SingletonClass();
  
  // creating other instance
  var s2 = new SingletonClass();
  
  // checking them....
  print(s1 == s2);
}
