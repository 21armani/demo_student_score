
import Entity.Student;
import Responsitory.StudentRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class StudentController {

    @Autowired
    private StudentRepository studentRepository;
    
    @GetMapping("/students")
    public ModelAndView getStudents() {
        ModelAndView modelAndView = new ModelAndView("students");
        List<Student> students = studentRepository.findAll();
        modelAndView.addObject("students", students);
        return modelAndView;
    }
}