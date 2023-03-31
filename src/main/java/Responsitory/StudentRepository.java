/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Responsitory;

import Entity.Student;
import jakarta.transaction.Transactional;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author dungnthe153260
 */
@Repository
@Transactional
public interface StudentRepository extends JpaRepository<Student, Integer> {
    //list all

    public List<Student> findAll();
    //ord name

    public List<Student> findAllByOrderByNameAsc();
    //find by name

    public List<Student> findByNameContaining(String name);
    //danh sach theo diem trong mon hoc

    @Query("select s from Student s join s.marks m join m.subject sub where sub.id = :subjectId order by m.mark desc")
    public List<Student> findBySubjectOrderByMarkDesc(@Param("subjectId") int subjectId);
    //danh sach theo mon hoc

    @Query("select s from Student s join s.marks m join m.subject sub where sub.id = :subjectId")
    public List<Student> findBySubject(@Param("subjectId") int subjectId);
    //danh sach theo ten trong mon hoc 

    @Query("select s from Student s join s.marks m join m.subject sub where sub.id = :subjectId order by s.name desc")
    public List<Student> findBySubjectOrderByName(@Param("subjectId") int subjectId);
    // Các method CRUD khác

}
