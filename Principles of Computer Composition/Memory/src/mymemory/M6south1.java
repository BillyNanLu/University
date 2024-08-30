package mymemory;

import javax.swing.*;
import java.awt.*;

public class M6south1 extends JPanel {
    static String gstr[] = {"10:00", "12:00", "14:00", "16:00", "18:00"};
    static JComboBox jTime = new JComboBox(gstr);
    JLabel lblTime = new JLabel("Delivery Time", JLabel.CENTER);

     M8event2 m82 = new M8event2();

    public M6south1() {
        this.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
        this.add(lblTime);
        this.add(jTime);

         // jTime.addItemListener(m82);
    }
}
