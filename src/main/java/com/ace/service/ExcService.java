package com.ace.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ace.dao.ExcMapper;
import com.ace.domain.Exc;

@Service
public class ExcService {
    private final ExcMapper excMapper;

    @Autowired
    public ExcService(ExcMapper excMapper) {
        this.excMapper = excMapper;
    }

    public List<Exc> getAllExcs() {
        return excMapper.getAllExcs();
    }
}
