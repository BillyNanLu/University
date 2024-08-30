package mymemory;

import javax.swing.*;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

public class M8event2 implements ItemListener {
    public M8event2() {

    }

    public void itemStateChanged(ItemEvent e) {
        M7checkbox jc = (M7checkbox) e.getSource();
        M5center212.mess = jc.getText();
        M5center22.lblPic.setIcon(new ImageIcon(M5center212.mess + ".jpg"));
        int ss = M5center213.price[jc.tag];
        M5center213.JTprice.setText(String.valueOf(ss) + "元");
    }
}
