package mymemory;

import javax.swing.*;
import java.awt.*;

public class M5center22 extends JPanel {
    static JLabel lblPic = new JLabel("", null, JLabel.CENTER);

    public M5center22() {
        this.setLayout(new BorderLayout(5, 5));
        this.add("Center", lblPic);
    }
}
