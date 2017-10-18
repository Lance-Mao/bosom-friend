package com.fb.service;

import com.fb.common.Assist;
import com.fb.entity.Suggest;

import java.util.List;

public interface SuggestService{
	/**
	 * 获得Suggest数据的总行数,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    long getSuggestRowCount(Assist assist);
	/**
	 * 获得Suggest数据集合,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    List<Suggest> selectSuggest(Assist assist);
	/**
	 * 获得一个Suggest对象,以参数Suggest对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Suggest selectSuggestByObj(Suggest obj);
	/**
	 * 通过Suggest的id获得Suggest对象
	 * @param id
	 * @return
	 */
    Suggest selectSuggestById(Integer id);
	/**
	 * 插入Suggest到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertSuggest(Suggest value);
	/**
	 * 插入Suggest中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptySuggest(Suggest value);
	/**
	 * 通过Suggest的id删除Suggest
	 * @param id
	 * @return
	 */
    int deleteSuggestById(Integer id);
	/**
	 * 通过辅助工具Assist的条件删除Suggest
	 * @param assist
	 * @return
	 */
    int deleteSuggest(Assist assist);
	/**
	 * 通过Suggest的id更新Suggest中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateSuggestById(Suggest enti);
 	/**
	 * 通过辅助工具Assist的条件更新Suggest中的数据,包括null值
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateSuggest(Suggest value, Assist assist);
	/**
	 * 通过Suggest的id更新Suggest中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptySuggestById(Suggest enti);
 	/**
	 * 通过辅助工具Assist的条件更新Suggest中属性不为null的数据
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateNonEmptySuggest(Suggest value, Assist assist);
}