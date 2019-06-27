import com.lovo.disaster.db.GetSession;
import com.lovo.disaster.pwd.bean.DiseaseBean;
import com.lovo.disaster.pwd.dao.IDiseaseDao;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class T {

    @Test
    public void ttt(){

        SqlSession session = GetSession.creatSession();
//      DiseaseBean b= session.getMapper(IDiseaseDao.class).findById(1);

        System.out.println(session);
        session.close();
    }
}
