package com.zit.config.datasource;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceBuilder;

@Configuration
@MapperScan(basePackages = "com.zit.cac.dao", 
sqlSessionTemplateRef = "dbCacSqlSessionTemplate")
public class DataSourceCacConfig {
	@Bean
    @ConfigurationProperties(prefix = "spring.datasource.cac")
    @Primary
    public DataSource dbCacDataSource() {
        return DruidDataSourceBuilder.create().build();
    }
 
    @Bean
    @Primary
    public SqlSessionFactory dbCacSqlSessionFactory(@Qualifier("dbCacDataSource") DataSource dataSource) throws Exception {
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        bean.setDataSource(dataSource);
        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        bean.setMapperLocations(resolver.
        		getResources("classpath*:/mybatis/mapper/cac/*.xml"));
        bean.setTypeAliasesPackage("com.zit.cac.entity");
        return bean.getObject();
    }
 
    @Bean
    @Primary
    public DataSourceTransactionManager dbCacTransactionManager(@Qualifier("dbCacDataSource") DataSource dataSource) {
        return new DataSourceTransactionManager(dataSource);
    }
 
    @Bean
    @Primary
    public SqlSessionTemplate dbCacSqlSessionTemplate(@Qualifier("dbCacSqlSessionFactory") SqlSessionFactory sqlSessionFactory) throws Exception {
        return new SqlSessionTemplate(sqlSessionFactory);
    }
}
