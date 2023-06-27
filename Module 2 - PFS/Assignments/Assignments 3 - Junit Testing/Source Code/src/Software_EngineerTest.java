package A2;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.assertFalse;

class SoftwareEngineerTest {

    Software_Engineer SE = new Software_Engineer("Lahiru");
    Technical_Lead TL = new Technical_Lead("Chathu");
    Accountant ACT = new Accountant("Leo");
    Business_Lead BL = new Business_Lead("Ashley");

    @Test
    void testSetCodeAccessFalse() {
        SE.setCodeAccess(false);
        TL.addReport(SE);
        assertFalse(TL.approveCheckIn(SE));
    }

    @Test
    void testSetCodeAccessTrue() {
        SE.setCodeAccess(true);
        TL.addReport(SE);
        assertTrue(TL.approveCheckIn(SE));
    }

    @Test
    void testCanGetBonusFalse() {
        TL.addReport(SE);
        ACT.supportTeam(TL);
        BL.addReport(ACT, ACT.getTeamSupported());
        assertFalse(TL.requestBonus(SE, 20000000));
    }

    @Test
    void testCanGetBonusTrue() {
        TL.addReport(SE);
        ACT.supportTeam(TL);
        BL.addReport(ACT, ACT.getTeamSupported());
        assertTrue(TL.requestBonus(SE, 1000));
    }

}
