package com.ace.service;

import java.util.List;
import com.ace.domain.Exc;

public interface ExcService {
    List<Exc> findAll();
    Exc findById(int id);
    void saveOrUpdate(Exc exc);
    void delete(int id);
}
