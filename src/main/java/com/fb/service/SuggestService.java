package com.fb.service;

import com.fb.entity.Suggest;

import java.util.List;

public interface SuggestService{

    Suggest selectSuggestByObj(Suggest obj);

    Suggest selectSuggestById(Integer id);

    int insertSuggest(Suggest value);

    int insertNonEmptySuggest(Suggest value);

    int deleteSuggestById(Integer id);

    int updateSuggestById(Suggest enti);

    int updateNonEmptySuggestById(Suggest enti);

}