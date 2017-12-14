package com.fb.service.impl;


import com.fb.dao.SuggestDao;
import com.fb.entity.Suggest;
import com.fb.service.SuggestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SuggestServiceImpl implements SuggestService {
    @Autowired
    private SuggestDao suggestDao;
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
    public int updateSuggestById(Suggest enti){
        return suggestDao.updateSuggestById(enti);
    }
    @Override
    public int updateNonEmptySuggestById(Suggest enti){
        return suggestDao.updateNonEmptySuggestById(enti);
    }

    public SuggestDao getSuggestDao() {
        return this.suggestDao;
    }

    public void setSuggestDao(SuggestDao suggestDao) {
        this.suggestDao = suggestDao;
    }
}