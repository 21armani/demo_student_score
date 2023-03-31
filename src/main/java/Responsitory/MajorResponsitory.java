/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Responsitory;

import Entity.Major;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author dungnthe153260
 */
public interface MajorResponsitory extends JpaRepository<Major, Integer>{
    public List<Major> findAll();
}
