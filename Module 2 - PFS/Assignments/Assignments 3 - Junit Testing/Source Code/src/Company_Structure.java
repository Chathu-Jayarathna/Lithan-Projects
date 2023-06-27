package A2;

public class Company_Structure {
  public static void main(String[] args) {
    Technical_Lead CTO = new Technical_Lead("Satya Nadella");
    Software_Engineer seA = new Software_Engineer("Kasey");
    Software_Engineer seB = new Software_Engineer("Breana");
    Software_Engineer seC = new Software_Engineer("Eric");
    CTO.addReport(seA);
    CTO.addReport(seB);
    CTO.addReport(seC);
    System.out.println(CTO.getTeamStatus());

    Technical_Lead VPofENG = new Technical_Lead("Bill Gates");
    Software_Engineer seD = new Software_Engineer("Winter");
    Software_Engineer seE = new Software_Engineer("Libby");
    Software_Engineer seF = new Software_Engineer("Gizan");
    Software_Engineer seG = new Software_Engineer("Zaynah");
    VPofENG.addReport(seD);
    VPofENG.addReport(seE);
    VPofENG.addReport(seF);
    VPofENG.addReport(seG);
    System.out.println(VPofENG.getTeamStatus());

    Business_Lead CFO = new Business_Lead("Amy Hood");
    Accountant actA = new Accountant("Niky");
    Accountant actB = new Accountant("Andrew");
    CFO.addReport(actA, CTO);
    CFO.addReport(actB, VPofENG);
    System.out.println(CFO.getTeamStatus());
  }
}
