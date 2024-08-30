package mymemory;

import javax.swing.*;
import java.awt.*;

public class M4north extends JPanel {
    JLabel lblPic = new JLabel("", new ImageIcon("top.jpg"), JLabel.CENTER);
    static JLabel lblTime = new JLabel("2023年11月19日15:31:11");
     M8event3 m8 = new M8event3();

    public M4north() {
        this.setLayout(new GridLayout(1, 2, 5, 5));
        this.add(lblPic);
        this.add(lblTime);
    }
}
