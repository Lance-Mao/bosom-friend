package com.fb.dao;


import com.fb.entity.Details;
import com.fb.common.Assist;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DetailsDao{
	/**
	 * 获得Details数据的总行数,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    long getDetailsRowCount(Assist assist);
	/**
	 * 获得Details数据集合,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    List<Details> selectDetails(Assist assist);
	/**
	 * 获得一个Details对象,以参数Details对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Details selectDetailsByObj(Details obj);
	/**
	 * 通过Details的id获得Details对象
	 * @param id
	 * @return
	 */
    Details selectDetailsById(Integer id);
	/**
	 * 插入Details到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertDetails(Details value);
	/**
	 * 插入Details中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyDetails(Details value);
	/**
	 * 通过Details的id删除Details
	 * @param id
	 * @return
	 */
    int deleteDetailsById(Integer id);
	/**
	 * 通过辅助工具Assist的条件删除Details
	 * @param assist
	 * @return
	 */
    int deleteDetails(Assist assist);
	/**
	 * 通过Details的id更新Details中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateDetailsById(Details enti);
 	/**
	 * 通过辅助工具Assist的条件更新Details中的数据,包括null值
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateDetails(@Param("enti") Details value, @Param("assist") Assist assist);
	/**
	 * 通过Details的id更新Details中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyDetailsById(Details enti);
 	/**
	 * 通过辅助工具Assist的条件更新Details中属性不为null的数据
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateNonEmptyDetails(@Param("enti") Details value, @Param("assist") Assist assist);
}