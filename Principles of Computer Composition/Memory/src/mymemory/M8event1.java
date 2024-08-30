package mymemory;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class M8event1 implements ActionListener {
    M5center212 m5c212 = new M5center212();

    public M8event1() {

    }

    public void actionPerformed(ActionEvent e) {
        try {
            if (jiance()) {
                if (e.getSource() == M5center211.rd[0]) {
                    M5center212.cl.show(m5c212, "U盘");
                    m5c212.setVisible(true);
                    M5center213.JTprice.setText("");
                    M5center22.lblPic.setIcon(null);
                } else if (e.getSource() == M5center211.rd[1]) {
                    M5center212.cl.show(m5c212, "硬盘");
                    m5c212.setVisible(true);
                    M5center213.JTprice.setText("");
                    M5center22.lblPic.setIcon(null);
                } else if (e.getSource() == M6south2.cmdOk) {
                    String ms = M5center1.txt[0].getText() + "您预定的价值" +
                            M5center213.JTprice.getText() + "的一份" + M5center212.mess +
                            "将于今天" + M6south1.jTime.getSelectedItem().toString() +
                            "送到" + M5center1.txt[2].getText() + "\n" +
                            "并确认联系方式: \n电话: "
                            + M5center1.txt[2].getText() + "\n邮件: " + M5center1.txt[3].getText();
                    JOptionPane.showMessageDialog(null, ms);
                } else if (e.getSource() == M6south2.cmdCancel) {
                    chushi();
                }
            }
        } catch (M9exception mex) {
            JOptionPane.showMessageDialog(null, "异常消息", mex.outMessage(), JOptionPane.ERROR_MESSAGE);
        }
    }

    public boolean jiance() throws M9exception {
        if (M5center1.txt[0].getText().equals("")) {
            throw new M9exception("姓名不能为空！！！");
        } else if (M5center1.txt[1].getText().equals("")) {
            throw new M9exception("电话号码不能为空！！！");
        } else if (M5center1.txt[2].getText().equals("")) {
            throw new M9exception("地址不能为空！！！");
        } else if (M5center1.txt[3].getText().equals("")) {
            throw new M9exception("电子邮件不能为空！！！");
        } else {
            return true;
        }
    }

    public void chushi() {
        m5c212.setVisible(false);
        M5center1.txt[0].setText("");
        M5center1.txt[1].setText("");
        M5center1.txt[2].setText("");
        M5center1.txt[3].setText("");
        M5center213.JTprice.setText("");
        M5center22.lblPic.setIcon(null);
        M5center213.JTprice.setEditable(false);
    }
}
