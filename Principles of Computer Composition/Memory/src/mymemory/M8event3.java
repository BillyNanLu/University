package mymemory;

import javax.swing.*;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class M8event3 implements Runnable{
    Thread t;
    public M8event3() {
        if (t == null) {
            t = new Thread(this);
            t.start();
        }
    }

    public void run() {
        while (true) {
            String strTime, strDate;
            GregorianCalendar ge = new GregorianCalendar();     // 国际时间
            strTime = ge.get(Calendar.HOUR_OF_DAY) + ":" + ge.get(Calendar.MINUTE) + ":" + ge.get(Calendar.SECOND);
            strDate = ge.get(Calendar.YEAR) + "年" + (ge.get(Calendar.MONTH) + 1) + "月" + ge.get(Calendar.DATE) + "日";
            M4north.lblTime.setText(strDate + strTime);
            try {
                Thread.sleep(1000);
            } catch (InterruptedException iex) {
                JOptionPane.showMessageDialog(null, iex.getMessage());
            }
        }
    }
}
