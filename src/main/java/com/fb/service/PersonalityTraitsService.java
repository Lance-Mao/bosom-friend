package com.fb.service;

import com.fb.entity.PersonalityTraits;
import com.fb.common.Assist;

import java.util.List;

public interface PersonalityTraitsService{
	/**
	 * 获得PersonalityTraits数据的总行数,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    long getPersonalityTraitsRowCount(Assist assist);
	/**
	 * 获得PersonalityTraits数据集合,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    List<PersonalityTraits> selectPersonalityTraits(Assist assist);
	/**
	 * 获得一个PersonalityTraits对象,以参数PersonalityTraits对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    PersonalityTraits selectPersonalityTraitsByObj(PersonalityTraits obj);
	/**
	 * 通过PersonalityTraits的id获得PersonalityTraits对象
	 * @param id
	 * @return
	 */
    PersonalityTraits selectPersonalityTraitsById(Integer id);
	/**
	 * 插入PersonalityTraits到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertPersonalityTraits(PersonalityTraits value);
	/**
	 * 插入PersonalityTraits中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyPersonalityTraits(PersonalityTraits value);
	/**
	 * 通过PersonalityTraits的id删除PersonalityTraits
	 * @param id
	 * @return
	 */
    int deletePersonalityTraitsById(Integer id);
	/**
	 * 通过辅助工具Assist的条件删除PersonalityTraits
	 * @param assist
	 * @return
	 */
    int deletePersonalityTraits(Assist assist);
	/**
	 * 通过PersonalityTraits的id更新PersonalityTraits中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updatePersonalityTraitsById(PersonalityTraits enti);
 	/**
	 * 通过辅助工具Assist的条件更新PersonalityTraits中的数据,包括null值
	 * @param value
	 * @param assist
	 * @return
	 */
    int updatePersonalityTraits(PersonalityTraits value, Assist assist);
	/**
	 * 通过PersonalityTraits的id更新PersonalityTraits中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyPersonalityTraitsById(PersonalityTraits enti);
 	/**
	 * 通过辅助工具Assist的条件更新PersonalityTraits中属性不为null的数据
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateNonEmptyPersonalityTraits(PersonalityTraits value, Assist assist);
}