package cn.andone.asyncqueue.handler;



import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.andone.asyncqueue.EventHandler;
import cn.andone.asyncqueue.EventModel;
import cn.andone.asyncqueue.EventType;
import cn.andone.pojo.Posts;
import cn.andone.service.PostService;

/**
 * Created by JLL
 */
@Component
public class ViewHandler implements EventHandler {
    
	@Autowired
	PostService postService;

    @Override
    public void doHandle(EventModel model) {
    	Posts post = postService.queryById(Integer.toString(model.getEntityId()));
    	Integer visitors = new Integer(0);
    	if(post != null){
    		visitors = post.getVisitor();
    		post.setVisitor(visitors + 1);
    		postService.updatePost(post);
    	} 	

    }

    @Override
    public List<EventType> getSupportEventTypes() {
        return Arrays.asList(EventType.VIEW);
    }
}
