package com.ace.dao;

import java.util.List;
import com.ace.domain.Exc;

public interface ExcDao {
    List<Exc> findAll();
    Exc findById(int id);
    void insert(Exc exc);
    void update(Exc exc);
    void delete(int id);
}
