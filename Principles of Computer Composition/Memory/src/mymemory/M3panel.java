package mymemory;

import javax.swing.*;
import java.awt.*;

public class M3panel extends JPanel {
    M4north mn = new M4north();
    M5center mc = new M5center();
    M6south ms = new M6south();

    public M3panel() {
        this.setLayout(new BorderLayout(5, 5));
        this.add("North", mn);
        this.add("Center", mc);
        this.add("South", ms);
    }
}
