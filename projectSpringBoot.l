/*创建 gradle + springBoot + mybatis + mysql 项目*/

1. 创建项目目录
	mkdir abc
2. gradle初始化目录
	cd abc
	gradle init
3. 修改gradle配置文件
	ls abc
	vim build.gradle
4. 添加如下代码:
	buildscript{
		repositories{
			jcenter()
		}
		dependencies{
			classpath("org.springframework.boot:spring-boot-gradle-plugin:1.5.2.RELEASE")
		}
	}
	repositories{
		jcenter()
	}

	apply plugin: 'java'
	apply plugin: 'org.springframework.boot'

	sourceCompatibility = 1.8
	targetCompatibility = 1.8

	dependencies{
		compile("org.springframework.boot:spring-boot-starter-web")
		testCompile("org.springframework.boot:spring-boot-starter-test")
		compile("org.mybatis.spring.boot:mybatis-spring-boot-starter:1.3.0")
		runtime("mysql:mysql-connector-java")
	}
5. 项目根目录下,即build.gradle同级目录下,创建springBoot属性配置文件
	cd abc
	vim application.properties
	添加内容:
	mybatis.type-aliases-package=java实体类的包名(如:abc.def)
	spring.datasource.driverClassName=com.mysql.jdbc.Driver
	spring.datasource.url=jdbc:mysql://127.0.0.1:3306/Rst?useUnicode=true&useSSL=false
	spring.datasource.username=root
	spring.datasource.password=root
6. 项目根目录(build.gradle同级目录),创建web项目目录结构:[root]/src/main/java/
	cd abc
	mkdir -p src/main/java/
	mkdir -p src/main/webapp/
	mkdir -p src/main/resources/
	mkdir -p src/test/java/

7. 获取wrapper(若根目录已有gradlew,跳过此步)
	gradle wrapper
8. 构建项目
	./gradlew build
9. 运行项目
	./gradlew bootRun
