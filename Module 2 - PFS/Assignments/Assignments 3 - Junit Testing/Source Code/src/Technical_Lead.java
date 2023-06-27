package A2;

import java.util.ArrayList;

public class Technical_Lead extends Technical_Employee {
  public ArrayList<Software_Engineer> team;

  public Technical_Lead(String name) {
    super(name);
    this.baseSalary *= 1.3;
    headCount = 4;
    this.team = new ArrayList<Software_Engineer>();
  }

  public boolean hasHeadCount() {
    if (team.size() < headCount) {
      return true;
    } else {
      return false;
    }
  }

  public boolean addReport(Software_Engineer e) {
    if (hasHeadCount()) {
      team.add(e);
      e.setManager(this);
      return true;
    } else {
      return false;
    }
  }

  public boolean approveCheckIn(Software_Engineer e) {
    if (e.getManager().equals(this) && e.getCodeAccess()) {
      return true;
    } else {
      return false;
    }
  }

  public boolean requestBonus(Employee e, double bonus) {
    Business_Lead businessLead = (Business_Lead) getAccountantSupport().getManager();
    if (businessLead.approveBonus(e, bonus)) {
      return true;
    } else {
      return false;
    }
  }

  public String getTeamStatus() {
    if (team.size() == 0) {
      return this.employeeStatus() + " and no direct reports yet";
    } else {
      String teamStatus = "";
      for (int i = 0; i < team.size(); i++) {
        teamStatus += ("    " + team.get(i).employeeStatus() + "\n");
      }
      return this.employeeStatus() + " and is managing: \n" + teamStatus;
    }
  }

}
