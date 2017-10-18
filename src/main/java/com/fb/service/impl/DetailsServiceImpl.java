package com.fb.service.impl;

import com.fb.service.DetailsService;
import com.fb.common.Assist;
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
    public long getDetailsRowCount(Assist assist){
        return detailsDao.getDetailsRowCount(assist);
    }
    @Override
    public List<Details> selectDetails(Assist assist){
        return detailsDao.selectDetails(assist);
    }
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
    public int deleteDetails(Assist assist){
        return detailsDao.deleteDetails(assist);
    }
    @Override
    public int updateDetailsById(Details enti){
        return detailsDao.updateDetailsById(enti);
    }
    @Override
    public int updateDetails(Details value, Assist assist){
        return detailsDao.updateDetails(value,assist);
    }
    @Override
    public int updateNonEmptyDetailsById(Details enti){
        return detailsDao.updateNonEmptyDetailsById(enti);
    }
    @Override
    public int updateNonEmptyDetails(Details value, Assist assist){
        return detailsDao.updateNonEmptyDetails(value,assist);
    }

    public DetailsDao getDetailsDao() {
        return this.detailsDao;
    }

    public void setDetailsDao(DetailsDao detailsDao) {
        this.detailsDao = detailsDao;
    }

}