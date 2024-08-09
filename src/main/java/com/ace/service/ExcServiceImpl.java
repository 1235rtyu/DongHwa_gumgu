package com.ace.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ace.dao.ExcDao;
import com.ace.domain.Exc;

@Service
public class ExcServiceImpl implements ExcService {

    @Autowired
    private ExcDao excDao;

    @Override
    public List<Exc> findAll() {
        return excDao.findAll();
    }

    @Override
    public Exc findById(int id) {
        return excDao.findById(id);
    }

    @Override
    public void saveOrUpdate(Exc exc) {
        if (exc.getId() == null) {
            excDao.insert(exc);
        } else {
            excDao.update(exc);
        }
    }

    @Override
    public void delete(int id) {
        excDao.delete(id);
    }
}
