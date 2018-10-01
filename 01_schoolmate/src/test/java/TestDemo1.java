import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.fmq.pojo.TAdmin;
import com.fmq.dao.TAdminMapper;

public class TestDemo1 {
	@Test
	public void testInsert(){
		ApplicationContext ctx= new ClassPathXmlApplicationContext("applicationContext.xml");
		TAdminMapper adminMapper=ctx.getBean(TAdminMapper.class);
		TAdmin admin = new TAdmin();
		admin.setAdminname("admin2");
		admin.setAdminpsw("admin2");
		adminMapper.insert(admin);
		
	}

}
