package cn.andone.asyncqueue;

/**
 * Created by JLL 
 */
public enum EventType {
    LIKE(0),
    COMMENT(1),
    LOGIN(2),
    MAIL(3),
	VIEW(4);

    private int value;
    EventType(int value) { this.value = value; }
    public int getValue() { return value; }
}
