package mymemory;

import javax.swing.*;
import java.awt.*;

public class M5center1 extends JPanel {
    String[] str = {"Name: ", "Address: ", "Phone: ", "E-mail: "};
    JLabel[] lbl = new JLabel[4];
    static JTextField[] txt = new JTextField[4];

    public M5center1() {
        this.setLayout(new GridLayout(4, 2, 5, 5));

        for (int i = 0; i < str.length; i++) {
            lbl[i] = new JLabel(str[i], JLabel.CENTER);
            this.add(lbl[i]);
            txt[i] = new JTextField(10);
            this.add(txt[i]);
        }
    }
}
