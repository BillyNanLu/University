package mymemory;

import javax.swing.*;

public class M1pro {
    static M2win mw = new M2win();

    public static void main(String [] args) {
        mw.setTitle("移动存储设备热销中......");
        mw.setBounds(400, 300, 300, 500);
        mw.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        mw.setVisible(true);
    }
}
