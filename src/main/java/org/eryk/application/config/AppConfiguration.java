package org.eryk.application.config;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.util.Properties;
import java.util.logging.Logger;


@Configuration
@ComponentScan("org.eryk.application")
@EnableWebMvc
@PropertySource({"classpath:persistence-mysql.properties"})
public class AppConfiguration implements WebMvcConfigurer {

    @Autowired
    private Environment environment;

    private Logger logger = Logger.getLogger(getClass().getName());

    //ViewResolver bean wraps requested views names
    @Bean
    public ViewResolver viewResolver(){

        InternalResourceViewResolver viewResolver =
                new InternalResourceViewResolver();

        viewResolver.setPrefix("/WEB-INF/view/");
        viewResolver.setSuffix(".jsp");

        return viewResolver;
    }

    //Handling resources directory
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        registry
                .addResourceHandler("/resources/**")
                .addResourceLocations("/resources/");
    }

    //Hibernate configuration
    //1.DataSource
    @Bean
    public DataSource dataSource(){

        //connection pool
        ComboPooledDataSource dataSource = new ComboPooledDataSource();

        //jdbc driver
        try{
            dataSource.setDriverClass(environment.getProperty("jdbc.driver"));
        }
        catch (PropertyVetoException exc){
            throw new RuntimeException(exc);
        }
            //reading data check
            logger.info("jdbc url= " + environment.getProperty("jdbc.url"));
            logger.info("jdbc user= " + environment.getProperty("jdbc.user"));

        //set database connection properties from file
        dataSource.setJdbcUrl(environment.getProperty("jdbc.url"));
        dataSource.setUser(environment.getProperty("jdbc.user"));
        dataSource.setPassword(environment.getProperty("jdbc.password"));

        //set connection pool.
        //in properties file they are strings, so conversion to int is used
        dataSource.setInitialPoolSize(getIntProperty("connection.pool.initialPoolSize"));
        dataSource.setMinPoolSize(getIntProperty("connection.pool.minPoolSize"));
        dataSource.setMaxPoolSize(getIntProperty("connection.pool.maxPoolSize"));
        dataSource.setMaxIdleTime(getIntProperty("connection.pool.maxIdleTime"));
        return dataSource;
    }

    private int getIntProperty(String propertyName) {

        String propertyValue = environment.getProperty(propertyName);

        return Integer.parseInt(propertyValue);
    }

    //2.SessionFactory
    @Bean
    public LocalSessionFactoryBean sessionFactory(){

        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();

        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan(environment.getProperty("hibernate.packagesToScan"));
        sessionFactory.setHibernateProperties(getHibernateProperties());

        return sessionFactory;
    }

        private Properties getHibernateProperties() {

            Properties properties = new Properties();

            properties.setProperty("hibernate.dialect", environment.getProperty("hibernate.dialect"));
            properties.setProperty("hibernate.show_sql", environment.getProperty("hibernate.show_sql"));

            return properties;
        }

     //3.Transaction Manager
    @Bean
    @Autowired
    public HibernateTransactionManager transactionManager (SessionFactory sessionFactory){

        HibernateTransactionManager txManager = new HibernateTransactionManager();
        txManager.setSessionFactory(sessionFactory);

        return txManager;
    }
}
