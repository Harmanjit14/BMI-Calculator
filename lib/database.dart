class UserData {
  int height, weight, age, gender;
  static int h, w, a;
  static double b;
  double bmi;
  UserData();
  UserData.getWeight(this.weight);
  UserData.getHeight(this.height);
  UserData.getGender(this.gender) {
    a = gender;
  }
  UserData.getBmi() {
    double x = calculate();
    b = bmi;
  }
  double calculate() {
    double h = height / 100;
    bmi = weight / (h * h);
    return bmi;
  }

  int retGender() {
    final int x = gender;
    return x;
  }
}
