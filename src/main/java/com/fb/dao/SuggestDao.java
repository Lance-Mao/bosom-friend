package com.fb.dao;

import com.fb.entity.Suggest;

public interface SuggestDao{

    Suggest selectSuggestByObj(Suggest obj);

    Suggest selectSuggestById(Integer id);

    int insertSuggest(Suggest value);

    int insertNonEmptySuggest(Suggest value);
    int deleteSuggestById(Integer id);

    int updateSuggestById(Suggest enti);

    int updateNonEmptySuggestById(Suggest enti);

}