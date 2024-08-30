package mymemory;

public class M9exception extends Exception{
    private String mess;

    public M9exception(String m) {
        mess = m;
    }

    public String outMessage() {
        return mess;
    }
}
