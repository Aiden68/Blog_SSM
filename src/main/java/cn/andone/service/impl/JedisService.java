package cn.andone.service.impl;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.util.Pool;

import java.util.List;


/**
 * Created by JLL on 2017/3/28.
 */
@Service
public class JedisService implements InitializingBean {
    private static final Logger logger = LoggerFactory.getLogger(JedisService.class);
    private JedisPool pool;

    public static void print(int index, Object obj) {
        System.out.println(String.format("%d, %s", index, obj.toString()));
    }

    public static void main(String[] argv) {
		/*Jedis jedis = new Jedis("redis://localhost:6379/9");
        String set = jedis.set("hello", "world");
        System.out.println(set);*/
    	JedisService jedisService = new JedisService();
    	jedisService.pool = new JedisPool("redis://localhost:6379/10");
    	Jedis jedis = jedisService.pool.getResource();
    	System.out.println(jedis.brpop(0, "EVENT_QUEUE"));
    	if(jedisService.pool != null){
    		jedisService.pool.close();
    	}
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        pool = new JedisPool("redis://localhost:6379/10");
    }

    public long sadd(String key, String value) {
        Jedis jedis = null;
        try {
            jedis = pool.getResource();
            return jedis.sadd(key, value);
        } catch (Exception e) {
        	System.out.println("出错了");
            logger.error("出错了" + e.getMessage());
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }
        return 0;
    }

    public long srem(String key, String value) {
        Jedis jedis = null;
        try {
            jedis = pool.getResource();
            return jedis.srem(key, value);
        } catch (Exception e) {
        	System.out.println("出错了");
            logger.error("出错了" + e.getMessage());
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }
        return 0;
    }

    public long scard(String key) {
        Jedis jedis = null;
        try {
            jedis = pool.getResource();
            return jedis.scard(key);
        } catch (Exception e) {
        	System.out.println("出错了");
            logger.error("出错了" + e.getMessage());
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }
        return 0;
    }

    public boolean sismember(String key, String value) {
        Jedis jedis = null;
        try {
            jedis = pool.getResource();
            return jedis.sismember(key, value);
        } catch (Exception e) {
        	System.out.println("出错了");
            logger.error("出错了" + e.getMessage());
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }
        return false;
    }

    public List<String> brpop(int timeout, String key) {
        Jedis jedis = null;
        System.out.println("brpop被调用了");
        try {
            jedis = pool.getResource();
            System.out.println("拿redis的key" + jedis.lrange(key, 0, 1));
            return jedis.brpop(timeout, key);
        } catch (Exception e) {
        	System.out.println("出错了吗");
            logger.error("出错了" + e.getMessage());
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }
        return null;
    }

    public long lpush(String key, String value) {
        Jedis jedis = null;
        try {
            jedis = pool.getResource();
            System.out.println("出入key");
            return jedis.lpush(key, value);
        } catch (Exception e) {
        	System.out.println("出错了");
            logger.error("出错了" + e.getMessage());
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }
        return 0;
    }
    
    public long llen(String key) {
        Jedis jedis = null;
        try {
            jedis = pool.getResource();
            return jedis.llen(key);
        } catch (Exception e) {
        	System.out.println("出错了");
            logger.error("出错了" + e.getMessage());
        } finally {
            if (jedis != null) {
                jedis.close();
            }
        }
        return 0;
    }
}
