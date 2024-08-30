package orderformat;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class OrderFormat  extends JFrame implements ActionListener {
    int numberofinstruction;
    int worldlength;

    // 标签，放置标题
    JLabel lblTitle=new JLabel("Order Format");

    // 标签数组
    JLabel [] lbl=new JLabel[4];
    String [] lblStr={"Number of Instruction: ", "Addressing Mode: ", "World Length: ","Single World Length Single Address: "};

    // 文本框数组
    JTextField []  txt=new JTextField[4];

    // 制作按钮数组
    JButton [] btn=new JButton[2];
    String [] btnStr={"Calculate", "Cancel"};

    // 制作面板数组
    JPanel [] jPanels = new JPanel[4];
    Color [] colors = {Color.red,Color.pink,Color.green,Color.blue};
    LayoutManager [] layoutManagers = {
            new BorderLayout(5,5), // 东西南北中布局
            new FlowLayout(FlowLayout.CENTER,5,5), // 自左向右，自上而下
            new GridLayout(4,2,5,5), // 4行2列的表格
            new FlowLayout(FlowLayout.CENTER,5,5) // 自左向右，自上而下
    };
    String [] posStr={"North","Center","South"}; // 三个子面板的方位数组

    // 书写构造方法，为所有标签、文本框、按钮初始化
    public OrderFormat() {
        // 为4个面板实初始化
        for(int i=0;i<jPanels.length;i++){
            jPanels[i]=new JPanel(layoutManagers[i]);
            jPanels[i].setBackground(colors[i]);
        }

        // 北面板上放置标题
        jPanels[1].add(lblTitle);

        // 在中面板上放置4个标签及4个文本框
        for(int i=0;i<lbl.length;i++){
            lbl[i]=new JLabel(lblStr[i],JLabel.CENTER);//在4个标签上分别放置4个标题
            txt[i] = new JTextField(20);  // 初始化4个文本框
            if(i == 1 || i == 3)
                txt[i].setEditable(false);
        }
        jPanels[2].add(lbl[0]);
        jPanels[2].add(txt[0]);
        jPanels[2].add(lbl[1]);
        jPanels[2].add(txt[1]);
        jPanels[2].add(lbl[2]);
        jPanels[2].add(txt[2]);
        jPanels[2].add(lbl[3]);
        jPanels[2].add(txt[3]);


        // 在南面板上放置2个按钮
        for(int i=0;i<btn.length;i++){
            btn[i]=new JButton(btnStr[i]);
            btn[i].addActionListener(this);  // 为2个按钮添加动作监听器
            jPanels[3].add(btn[i]);//在南面板依次放入按钮
        }

        // 在主面板上放置3个子面板
        for(int i=0;i<jPanels.length-1;i++){
            jPanels[0].add(posStr[i], jPanels[i+1]); // 在主面板上依次放入子面板
        }

        // 在窗体的网格上放置主面板
        this.setContentPane(jPanels[0]);

    }

    // 新建整个程序的入口，调用超类方法显示整个窗口内容。
    public static void main(String [] args){
        OrderFormat orderFormat =new OrderFormat();
        orderFormat.setTitle("Order Format"); // 窗口标题
        orderFormat.setBounds(400,400,450,250); // 窗口大小
        orderFormat.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // 窗口关闭
        orderFormat.setVisible(true); // 窗口可见

    }


    @Override
    public void actionPerformed(ActionEvent actionEvente) {
        if (actionEvente.getSource() == btn[0]) {
            numberofinstruction = Integer.parseInt(txt[0].getText());
            txt[1].setText("2");
            worldlength = Integer.parseInt(txt[2].getText());

        } else {
            for (int i = 0; i < txt.length; i++) {
                txt[i].setText("");   // 清空1个文本框
            }
            txt[0].requestFocus();   // 将光标移回第一个文本框
        }

    }

}
