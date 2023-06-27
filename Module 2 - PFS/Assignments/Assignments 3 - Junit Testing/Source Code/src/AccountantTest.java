package A2;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.assertFalse;

public class AccountantTest {

    Accountant ACT = new Accountant("Leo");
    Technical_Lead TL = new Technical_Lead("Chathu");
    Software_Engineer SE = new Software_Engineer("Lahiru");

    @Test
    void testCanApproveBonusFalse() {
        TL.addReport(SE);
        ACT.supportTeam(TL);
        assertFalse(ACT.canApproveBonus(20000000));
    }

    @Test
    void testCanApproveBonusTrue() {
        TL.addReport(SE);
        ACT.supportTeam(TL);
        assertTrue(ACT.canApproveBonus(1000));
    }

}
