package cn.andone.asyncqueue;

import java.util.List;

/**
 * Created by JLL
 */
public interface EventHandler {
    void doHandle(EventModel model);

    List<EventType> getSupportEventTypes();
}
