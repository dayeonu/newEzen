package com.springbook.ioc.injection;

import java.util.Properties;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollentionBeanClient {

	public static void main(String[] args) {
		
		AbstractApplicationContext factory= new GenericXmlApplicationContext("applicationContext.xml");
		
		CollectionBean bean= (CollectionBean)factory.getBean("CollectionBean");
		 
		Properties pro = bean.getAddressProperties();
		for(String key: pro.get()) {
			System.out.println(key);
		}
		factory.close();
	}
}
