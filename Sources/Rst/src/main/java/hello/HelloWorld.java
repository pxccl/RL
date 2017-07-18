package hello;

import mapper.PersonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class HelloWorld {

    private PersonMapper personMapper;

    public HelloWorld(PersonMapper personMapper){
        this.personMapper = personMapper;
    }

    public String hello() {
        return "Hello My World! ".concat("# ").concat(this.personMapper.getOne(2l).toString());
    }

}