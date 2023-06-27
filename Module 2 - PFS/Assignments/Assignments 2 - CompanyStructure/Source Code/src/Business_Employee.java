package A2;

public class Business_Employee extends Employee {

  public Business_Employee(String name) {
    super(name, 50000.00);
  }

  public double getBonusBudget() {
    return bonusBudget;
  }

  public void setBonusBudget(double bonusBudget) {
    this.bonusBudget = bonusBudget;
  }

  @Override
  public String employeeStatus() {
    String formatted = String.format("%.2f", bonusBudget);
    return super.toString() + " with a budget of " + formatted;
  }

}
