package memberLoginJava;

import java.util.ArrayList;

public class MemberDAO {
	private MemberDAO() {
	}

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}

	private ArrayList<MemberVO> mlist;

	
	public void init() {
		mlist.add(new MemberVO("admin","admin","관리자","남성"));
		mlist.add(new MemberVO("qwer","1111","이만수","남성"));
		mlist.add(new MemberVO("abcd","2222","박영희","여성"));
		mlist.add(new MemberVO("hello","3333","이수민","여성"));
	}
	
	public int loginCheck (String id, String pw) {
		for(int i=0; i<mlist.size(); i++) {
			if(id.equals(mlist.get(i).getId()) && pw.equals(mlist.get(i).getPw())) {
				return i;
			}
		}
		return -1;
	}
	
	
	
}

