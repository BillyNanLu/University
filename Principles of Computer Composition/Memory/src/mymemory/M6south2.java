package mymemory;

import javax.swing.*;
import java.awt.*;

public class M6south2 extends JPanel {
    static JButton cmdOk = new JButton("OK");
    static JButton cmdCancel = new JButton("Cancel");

     M8event1 m8 = new M8event1();

    public M6south2() {
        this.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
        this.add(cmdOk);
        this.add(cmdCancel);
         cmdOk.addActionListener(m8);
         cmdCancel.addActionListener(m8);
    }
}
