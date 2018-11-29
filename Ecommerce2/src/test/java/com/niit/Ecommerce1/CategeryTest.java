package com.niit.Ecommerce1;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CategeryDao;
import com.niit.models.Categery;


public class CategeryTest {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext config=new AnnotationConfigApplicationContext();
		config.scan("com.niit.*");
		config.refresh();
		Categery categery=(Categery)config.getBean("categery");
		CategeryDao categeryDao=(CategeryDao)config.getBean("categeryDao");
				categery.setId(1);
				categery.setName("abc");
				
				categeryDao.addCategery(categery);

	}

}
