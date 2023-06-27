package A2;

public class Software_Engineer extends Technical_Employee {
  private boolean codeAccess;

  public Software_Engineer(String name) {
    super(name);
    setCodeAccess(true);
  }

  public boolean getCodeAccess() {
    return codeAccess;
  }

  public void setCodeAccess(boolean access) {
    this.codeAccess = access;
  }

  public int getSuccessfulCheckIns() {
    return checkIns;
  }

  public boolean checkInCode() {
    Technical_Lead manager = (Technical_Lead) this.getManager();
    if (manager.approveCheckIn(this)) {
      this.checkIns++;
      return true;
    } else {
      codeAccess = false;
      return false;
    }
  }

}
