package com.fb.service.impl;

import com.fb.service.DetailsService;
import com.fb.dao.DetailsDao;
import com.fb.entity.Details;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DetailsServiceImpl implements DetailsService {
    @Autowired
    private DetailsDao detailsDao;
    @Override
    public Details selectDetailsByObj(Details obj){
        return detailsDao.selectDetailsByObj(obj);
    }
    @Override
    public Details selectDetailsById(Integer id){
        return detailsDao.selectDetailsById(id);
    }
    @Override
    public int insertDetails(Details value){
        return detailsDao.insertDetails(value);
    }
    @Override
    public int insertNonEmptyDetails(Details value){
        return detailsDao.insertNonEmptyDetails(value);
    }
    @Override
    public int deleteDetailsById(Integer id){
        return detailsDao.deleteDetailsById(id);
    }
    @Override
    public int updateDetailsById(Details enti){
        return detailsDao.updateDetailsById(enti);
    }
    @Override
    public int updateNonEmptyDetailsById(Details enti){
        return detailsDao.updateNonEmptyDetailsById(enti);
    }


    public DetailsDao getDetailsDao() {
        return this.detailsDao;
    }

    public void setDetailsDao(DetailsDao detailsDao) {
        this.detailsDao = detailsDao;
    }

}