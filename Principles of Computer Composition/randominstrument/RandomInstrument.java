package randominstrument;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

public class RandomInstrument extends JFrame implements ActionListener, Runnable {
    // 新建所有的面板类对象和组件对象
    JPanel p0 = new JPanel(new BorderLayout(5, 5));
    JPanel p1 = new JPanel(new FlowLayout(FlowLayout.CENTER, 5, 5));
    JPanel p2 = new JPanel(new GridLayout(2, 3, 5, 5));
    JPanel p3 = new JPanel(new FlowLayout(FlowLayout.CENTER, 5, 5));

    JLabel lblTitle = new JLabel("Random Instrument");
    JLabel lbl1 = new JLabel("100-200", JLabel.CENTER);
    JLabel lbl2 = new JLabel("200-300", JLabel.CENTER);
    JLabel lbl3 = new JLabel("500-600", JLabel.CENTER);

    JTextField txt1 = new JTextField(8);
    JTextField txt2 = new JTextField(8);
    JTextField txt3 = new JTextField(8);

    JButton btnOk = new JButton("Start");

    Thread t;


    // 构造方法中为组件添加监听器
    // 在每个面板上放置相应组件 最后将主面板放入JFrame的隐藏窗格中
    public RandomInstrument() {
        btnOk.addActionListener(this);

        txt1.setHorizontalAlignment(SwingConstants.CENTER);
        txt2.setHorizontalAlignment(SwingConstants.CENTER);
        txt3.setHorizontalAlignment(SwingConstants.CENTER);

        txt1.setEnabled(false);
        txt2.setEnabled(false);
        txt3.setEnabled(false);

        p0.add("North", p1);
        p0.add("Center", p2);
        p0.add("South", p3);

        p1.add(lblTitle);

        p2.add(txt1);
        p2.add(txt2);
        p2.add(txt3);
        p2.add(lbl1);
        p2.add(lbl2);
        p2.add(lbl3);

        p3.add(btnOk);

        setContentPane(p0);

    }


    // 实现接口Runnable的抽象发方法run() 并在其中写线程算法
    public void  run() {
        int x = 0, y = 0, z = 0;
        Random rand = new Random();
        while (true) {
            try {
                Thread.sleep(100);
                x = rand.nextInt(101) + 100;
                y = rand.nextInt(101) + 200;
                z = rand.nextInt(101) + 500;

                txt1.setText("" + x);
                txt2.setText("" + y);
                txt3.setText("" + z);
            } catch (InterruptedException e) {
                JOptionPane.showMessageDialog(null, e);
            }
        }
    }


    // 在事件方法中书写异常处理 并判断异常及调用相应的算法
    public void actionPerformed(ActionEvent ae) {
        try {
            if (ae.getSource() == btnOk) {
                judge();
                suanFa1();
            }
        } catch (MyException myException) {
            JOptionPane.showMessageDialog(null, myException.outMessage(), "My Errors", JOptionPane.ERROR_MESSAGE);
            suanFa2();
        } catch (Exception exception) {
            JOptionPane.showMessageDialog(null, exception.toString(), "System Other Errors", JOptionPane.ERROR_MESSAGE);
            suanFa2();
        }
    }


    // 书写相应的个算法方法
    public void suanFa1() {
        if (t == null) {
            t = new Thread(this);
            t.start();
            btnOk.setText("Close");
        } else  if (t != null) {
            t.stop();
            t = null;
            btnOk.setText("Start");
        }
    }


    // 重新初始化
    public void suanFa2() {
        txt1.setText("");
        txt2.setText("");
        txt3.setText("");
        txt1.requestFocus();
    }


    // 书写判断异常的方法
    public void judge() throws MyException {
        if (lbl1.getText().equals("") || lbl2.getText().equals("") || lbl3.getText().equals("")) {
            throw new MyException("There must have numbers in labels!");
        }
    }


    // 书写自定义异常类
    class MyException extends Exception {
        private String mess;

        public MyException(String m) {
            mess = m;
        }

        public String outMessage() {
            return mess;
        }
    }

    
    // 书写主方法 显示整个窗体界面
    public static void main(String[] args) {
        RandomInstrument randomInstrument = new RandomInstrument();
        randomInstrument.setTitle("Instrument");
        randomInstrument.setBounds(100, 200, 300, 200);
        randomInstrument.setDefaultCloseOperation(3);
        randomInstrument.setVisible(true);
    }

}
