package mymemory;

import javax.swing.*;
import java.awt.*;

public class M5center2 extends JPanel {
    M5center21 c21 = new M5center21();
    M5center22 c22 = new M5center22();

    public M5center2() {
        this.setLayout(new BorderLayout(5, 5));
        this.add("Center", c21);
        this.add("East", c22);
    }
}
