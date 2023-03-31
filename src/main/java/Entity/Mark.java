package Entity;
import javax.persistence.*;

@Entity
@Table(name = "mark")
public class Mark {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "student_id")
    private int studentId;

    @Column(name = "subject_id")
    private int subjectId;

    @Column(name = "score")
    private Double score;

    // Constructors
    public Mark() {}

    public Mark(int studentId, int subjectId, Double score) {
        this.studentId = studentId;
        this.subjectId = subjectId;
        this.score = score;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

}