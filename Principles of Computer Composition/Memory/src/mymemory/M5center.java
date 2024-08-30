package mymemory;

import javax.swing.*;
import java.awt.*;

public class M5center extends JPanel {
    M5center1 mc1 = new M5center1();
    M5center2 mc2 = new M5center2();

    public M5center() {
        this.setLayout(new GridLayout(2, 1, 5, 5));
        this.add(mc1);
        this.add(mc2);
    }
}
