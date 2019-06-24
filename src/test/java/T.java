import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.system.bean.SysRole;
import com.lovo.disaster.system.bean.SysUser;
import com.lovo.disaster.system.dao.IUserDao;
import com.lovo.disaster.system.service.IUserService;
import com.lovo.disaster.system.service.impl.UserServiceImpl;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class T {

    @Test
    public void ttt(){

        SqlSession session = GetSession.creatSession();

        System.out.println(session);
    }
    @Test
    public void t(){
        SqlSession session = GetSession.creatSession();
        IUserDao dao = session.getMapper(IUserDao.class);
        dao.delUserById(8);
        session.commit();
        session.close();
    }
}
