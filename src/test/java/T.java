import com.lovo.disaster.db.GetSession;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class T {

    @Test
    public void ttt(){

        SqlSession session = GetSession.creatSession();

        System.out.println(session);
    }
}
