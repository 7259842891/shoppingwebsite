
package com.niit.configuration;

import java.util.Properties;


import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.models.Authorities;
import com.niit.models.BillingAddress;
import com.niit.models.CartItem;
import com.niit.models.Categery;
import com.niit.models.Customer;
import com.niit.models.CustomerOrder;
import com.niit.models.Product;
import com.niit.models.ShippingAddress;
import com.niit.models.Supplier;
import com.niit.models.User;
@Configuration
@ComponentScan("com.niit")
@EnableTransactionManagement
public class DBConfiguration {
	
	
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
	    DriverManagerDataSource dataSource = new DriverManagerDataSource();
	    dataSource.setDriverClassName("org.h2.Driver");
	    dataSource.setUrl("jdbc:h2:tcp://localhost/~/test2");
	    dataSource.setUsername("sa");
	    dataSource.setPassword("");
	 
	    return dataSource;
	}
	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
	 
	    LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	 sessionBuilder.addProperties(gethibernateProperties());
	    sessionBuilder.addAnnotatedClasses(Categery.class);
	    sessionBuilder.addAnnotatedClasses(Product.class);
	    sessionBuilder.addAnnotatedClasses(Supplier.class);
	    sessionBuilder.addAnnotatedClasses(Customer.class);
	    sessionBuilder.addAnnotatedClasses(Authorities.class);
	    sessionBuilder.addAnnotatedClasses(BillingAddress.class);
	    sessionBuilder.addAnnotatedClasses(ShippingAddress.class);
	    sessionBuilder.addAnnotatedClasses(User.class);
	    sessionBuilder.addAnnotatedClasses(CartItem.class);
	    sessionBuilder.addAnnotatedClasses(CustomerOrder.class);
	    
	    return sessionBuilder.buildSessionFactory();
	}
	private Properties gethibernateProperties() {
		Properties properties= new Properties();
			{
				properties.put("hibernate.show_sql","true");
				properties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
				properties.put("hibernate.hbm2ddl.auto","update");
				return properties;
		
		}
		}
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
	        SessionFactory sessionFactory) {
	    HibernateTransactionManager transactionManager = new HibernateTransactionManager(
	            sessionFactory);
	 
	    return transactionManager;
	}
}
	
