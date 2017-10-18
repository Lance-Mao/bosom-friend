package com.fb.service.impl;


import com.fb.entity.Suggest;
import com.fb.service.SuggestService;
import com.fb.common.Assist;
import com.fb.dao.SuggestDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SuggestServiceImpl implements SuggestService {
    @Autowired
    private SuggestDao suggestDao;
    @Override
    public long getSuggestRowCount(Assist assist){
        return suggestDao.getSuggestRowCount(assist);
    }
    @Override
    public List<Suggest> selectSuggest(Assist assist){
        return suggestDao.selectSuggest(assist);
    }
    @Override
    public Suggest selectSuggestByObj(Suggest obj){
        return suggestDao.selectSuggestByObj(obj);
    }
    @Override
    public Suggest selectSuggestById(Integer id){
        return suggestDao.selectSuggestById(id);
    }
    @Override
    public int insertSuggest(Suggest value){
        return suggestDao.insertSuggest(value);
    }
    @Override
    public int insertNonEmptySuggest(Suggest value){
        return suggestDao.insertNonEmptySuggest(value);
    }
    @Override
    public int deleteSuggestById(Integer id){
        return suggestDao.deleteSuggestById(id);
    }
    @Override
    public int deleteSuggest(Assist assist){
        return suggestDao.deleteSuggest(assist);
    }
    @Override
    public int updateSuggestById(Suggest enti){
        return suggestDao.updateSuggestById(enti);
    }
    @Override
    public int updateSuggest(Suggest value, Assist assist){
        return suggestDao.updateSuggest(value,assist);
    }
    @Override
    public int updateNonEmptySuggestById(Suggest enti){
        return suggestDao.updateNonEmptySuggestById(enti);
    }
    @Override
    public int updateNonEmptySuggest(Suggest value, Assist assist){
        return suggestDao.updateNonEmptySuggest(value,assist);
    }

    public SuggestDao getSuggestDao() {
        return this.suggestDao;
    }

    public void setSuggestDao(SuggestDao suggestDao) {
        this.suggestDao = suggestDao;
    }

}