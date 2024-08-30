package mymemory;

import javax.swing.*;
import java.awt.*;

public class M5center211 extends JPanel {
    static String[] str = {"硬盘", "U盘"};
    static JRadioButton[] rd = new JRadioButton[2];
    ButtonGroup bg = new ButtonGroup();

     M8event1 m8e = new M8event1();

    public M5center211() {
        this.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
        for (int i = 0; i < str.length; i++) {
            rd[i] = new JRadioButton(str[i]);
            bg.add(rd[i]);
            this.add(rd[i]);
             rd[i].addActionListener(m8e);
        }
    }
}
