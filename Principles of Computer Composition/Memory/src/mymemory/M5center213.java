package mymemory;

import javax.swing.*;
import java.awt.*;

public class M5center213 extends JPanel {
    static int price[] = {12, 8, 13, 9, 12, 11, 12, 10};
    JLabel lblPrice = new JLabel("Price: ", JLabel.CENTER);
    static JTextField JTprice = new JTextField("" + price[0] + "yuan", 10);

    public M5center213() {
        this.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
        this.add(lblPrice);
        this.add(JTprice);
    }
}
