package cn.andone.asyncqueue;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;

import cn.andone.service.impl.JedisService;
import cn.andone.util.RedisKeyUtil;



/**
 * Created by JLL
 */
@Service
public class EventProducer {
    @Autowired
    JedisService jedisService;

    public boolean fireEvent(EventModel eventModel) {
        try {
            String json = JSONObject.toJSONString(eventModel);
            String key = RedisKeyUtil.getEventQueueKey();
            jedisService.lpush(key, json);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
