package mymemory;

import javax.swing.*;
import java.awt.*;

public class M6south extends JPanel {
    M6south1 m61 = new M6south1();
    M6south2 m62 = new M6south2();

    public M6south() {
        this.setLayout(new GridLayout(2, 1, 5, 5));
        this.add(m61);
        this.add(m62);
    }
}
