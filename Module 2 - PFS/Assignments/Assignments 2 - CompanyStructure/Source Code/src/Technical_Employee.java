package A2;

public class Technical_Employee extends Employee {
  public int checkIns;

  public Technical_Employee(String name) {
    super(name, 75000.00);
    checkIns = 0;
  }

  @Override
  public String employeeStatus() {
    return super.toString() + " has " + checkIns + " successful check ins";
  }

  public void setCheckin() {
    checkIns++;
  }

}
