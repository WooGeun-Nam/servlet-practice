package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestBookDao;
import com.douzone.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {
		GuestBookVo vo = new GuestBookVo();
		
		vo.setName("둘리");
		vo.setPassword("dooly");
		vo.setMessage("난 둘리");
		testInsert(vo);
		//testDelete("dooly@gmail.com");
		testFindAll();
	}

	private static void testDelete(String email) {
		new GuestBookDao().deleteByPassword(1L, "dooly");
		
	}

	private static void testFindAll() {
		List<GuestBookVo> list = new GuestBookDao().findAll();
		for(GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}

	private static void testInsert(GuestBookVo vo) {
		new GuestBookDao().insert(vo);
	}
}
