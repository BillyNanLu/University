package mymemory;

import javax.swing.*;
import java.awt.event.*;
import java.awt.*;

public class M5center212 extends JPanel {
    static CardLayout cl = new CardLayout();
    static String mess;
    M7checkbox chk[] = new M7checkbox[8];
    ButtonGroup bg = new ButtonGroup();
    String[] sname = {"Aigo", "HP", "Kingston", "sandisk",
            "Samsung", "Seagate", "Toshiba", "Western"};

     M8event2 m821 = new M8event2();

    JPanel p2121 = new JPanel(new GridLayout(2, 2));
    JPanel p2122 = new JPanel(new GridLayout(2, 2));

    public M5center212() {
        this.setLayout(cl);
        this.add(p2121, "U盘");
        this.add(p2122, "硬盘");

        for (int i = 0; i < chk.length; i++) {
            chk[i] = new M7checkbox(sname[i]);
            chk[i].tag = i;
            bg.add(chk[i]);
            chk[i].addItemListener(m821);
            if (i <= 3)
                p2121.add(chk[i]);
            else
                p2122.add(chk[i]);
        }
    }
}
