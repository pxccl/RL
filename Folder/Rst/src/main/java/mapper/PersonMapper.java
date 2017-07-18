package mapper;

import bean.Person;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface PersonMapper {

    @Select("SELECT * FROM person")
    @Results({
            @Result(property = "name", column = "name")
    })
    List<Person> getAll();

    @Select("SELECT * FROM person WHERE id = #{id}")
    @Results({
            @Result(property = "name", column = "name")
    })
    Person getOne(Long id);

    @Insert("INSERT INTO person(name) VALUES(#{name})")
    void insert(Person person);

    @Update("UPDATE person SET name=#{name} WHERE id =#{id}")
    void update(Person person);

    @Delete("DELETE FROM users WHERE id =#{id}")
    void delete(Long id);

}