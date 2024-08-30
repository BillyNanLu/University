package mymemory;

import javax.swing.*;
import java.awt.*;

public class M5center21 extends JPanel {
    M5center211 c211 = new M5center211();
    M5center212 c212 = new M5center212();
    M5center213 c213 = new M5center213();

    public M5center21() {
        this.setLayout(new BorderLayout(5, 5));
        this.add("North", c211);
        this.add("Center", c212);
        this.add("South", c213);
    }
}
