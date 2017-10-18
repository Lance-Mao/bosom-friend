package com.fb.common;

import java.util.ArrayList;
import java.util.List;

/**
 * This is EUCM's helper class
 * 
 * @author Mirren
 */
public class Assist {
	// 去重
	private String distinct;
	// 自定义排序
	private String order;
	// 数据分页开始行
	private Integer startRow;
	// 每次取多少行数据
	private Integer rowSize;
	// 设置自定义返回列
	private String resultColumn;
	// 条件集
	private List<WhereRequire<?>> require = null;

	/**
	 * 条件类,require属性为列的条件,value为条件值
	 * 
	 * @author Mirren
	 */
	public class WhereRequire<T> {
		private String require;
		private T value;
		private String suffix;
		
		WhereRequire(String require, T value) {
			super();
			this.require = require;
			this.value = value;
		}

		WhereRequire(String require, T value, String suffix) {
			super();
			this.require = require;
			this.value = value;
			this.suffix = suffix;
		}


		public String getRequire() {
			return require;
		}

		public void setRequire(String require) {
			this.require = require;
		}

		public T getValue() {
			return value;
		}

		public void setValue(T value) {
			this.value = value;
		}

		public String getSuffix() {
			return suffix;
		}

		public void setSuffix(String suffix) {
			this.suffix = suffix;
		}
		

	}

	/**
	 * 添加查询条件,参数为Assist的内部类whereRequire,推荐使用Assist的静态条件方法添加条件;
	 * 
	 * @param require
	 *            示例:Assist.and_lt("id",10),...
	 */
	public void setRequires(WhereRequire<?>... require) {
		if (this.require == null) {
			this.require = new ArrayList<WhereRequire<?>>();
		}
		for (int i = 0; i < require.length; i++) {
			this.require.add(require[i]);
		}
	}

	/**
	 * 参数(列名)1 = 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> andEq(String column, T req) {
		return new Assist().new WhereRequire("and " + column + " = ", req);
	}

	/**
	 * 参数(列名)1 = 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> orEq(String column, T req) {
		return new Assist().new WhereRequire("or " + column + " = ", req);
	}

	/**
	 * 参数(列名)1 <>(不等于) 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> andNeq(String column, T req) {
		return new Assist().new WhereRequire("and " + column + " <> ", req);
	}

	/**
	 * 参数(列名)1 <>(不等于) 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> orNeq(String column, T req) {
		return new Assist().new WhereRequire("or " + column + " <> ", req);
	}

	/**
	 * 参数(列名)1 < 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> andLt(String column, T req) {
		return new Assist().new WhereRequire("and " + column + "< ", req);
	}

	/**
	 * 参数(列名)1 < 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> orLt(String column, T req) {
		return new Assist().new WhereRequire("or " + column + " < ", req);
	}

	/**
	 * 参数(列名)1 <= 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> andLte(String column, T req) {
		return new Assist().new WhereRequire("and " + column + " <= ", req);
	}

	/**
	 * 参数(列名)1 <= 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> orLte(String column, T req) {
		return new Assist().new WhereRequire("or " + column + " <= ", req);
	}

	/**
	 * 参数(列名)1 > 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> andGt(String column, T req) {
		return new Assist().new WhereRequire("and " + column + " > ", req);
	}

	/**
	 * 参数(列名)1 > 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> orGt(String column, T req) {
		return new Assist().new WhereRequire("or " + column + " > ", req);
	}

	/**
	 * 参数(列名)1 >= 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> andGte(String column, T req) {
		return new Assist().new WhereRequire("and " + column + " >= ", req);
	}

	/**
	 * 参数(列名)1 >= 参数(条件)2 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> orGte(String column, T req) {
		return new Assist().new WhereRequire("or " + column + " >= ", req);
	}

	/**
	 * 参数(列名)1 like '参数(条件)2' ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> andLike(String column, T req) {
		return new Assist().new WhereRequire("and " + column + " like ", req);
	}

	/**
	 * 参数(列名)1 like '参数(条件)2' ;如果表中存在相同列名,使用表名.列名,如果不存在相同列名可以直接列名
	 *
	 * @param column
	 * @param req
	 * @return
	 */
	public static <T> WhereRequire<T> orLike(String column, T req) {
		return new Assist().new WhereRequire("or " + column + " like ", req);
	}

	/**
	 * 自定义查询条件 :参数(自定义开头语句)1    参数(条件值)2     参数(自定义结尾语句)3 ;如果表中存在相同列名使用表名.列名,如果不存在相同列名可以直接列名<br>
	 * 示例子查询:<br>
	 * 参数1= 列名 in (select 返回列名 from 表名 where 列名 = <br>
	 * 参数2= 123456<br>
	 * 参数3= ) <br>
	 * 假设有一张user表,里面有id列结果为:<br>
	 * select * from user where id in (select id from user where id=123456)<br>
	 * <b>需要特别注意的是,当where中不止一个条件的时候需要加上and或者or,根据自己的情况而定</b>
	 * @param prefix
	 * @param value
	 * @param suffix
	 * @return
	 */
	public static <T> WhereRequire<T> customRequire(String prefix, T value,String suffix) {
		return new Assist().new WhereRequire(prefix, value,suffix);
	}

	/**
	 * 将(列名)参数1 按 参数2排序(true=ASC/false=DESC)
	 * ;如果表中存在相同列名,列名为XML配置文件中的列名:一般为:表名.列名/实体类名+列名
	 *
	 * @param column
	 * @param mode
	 */
	public void setOrder(String column, boolean mode) {
		if (mode) {
			this.order = "order By " + column + " asc";
		} else {
			this.order = "order By " + column + " desc";
		}
	}

	/**
	 * 获得是否去重
	 *
	 * @return
	 */
	public String getDistinct() {
		return distinct;
	}

	/**
	 * 设置是否去重
	 *
	 * @param distinct
	 */
	public void setDistinct(boolean distinct) {
		if (distinct) {
			this.distinct = "distinct";
		}
	}

	/**
	 * 获得排序
	 *
	 * @return
	 */
	public String getOrder() {
		return order;
	}

	/**
	 * 获得开始分页行
	 *
	 * @return
	 */
	public Integer getStartRow() {
		return startRow;
	}

	/**
	 * 设置从第几行开始取数据
	 *
	 * @param startRow
	 */
	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}

	/**
	 * 获得每次取多少行数据
	 *
	 * @return
	 */
	public Integer getRowSize() {
		return rowSize;
	}

	/**
	 * 设置每次取多少很数据
	 *
	 * @param rowSize
	 */
	public void setRowSize(Integer rowSize) {
		this.rowSize = rowSize;
	}

	/**
	 * 获得返回指定列
	 *
	 * @return
	 */
	public String getResultColumn() {
		return resultColumn;
	}

	/**
	 * 设置返回指定列多个列以,逗号隔开;需要特别注意的是返回列需要起别名,别名以mapper里面的resultMap的column为准;
	 * 一般是类名加上属性的顺序号,
	 *
	 * @return
	 */
	public void setResultColumn(String resultColumn) {
		this.resultColumn = resultColumn;
	}

	/**
	 * 获得条件集
	 *
	 * @return
	 */
	public List<WhereRequire<?>> getRequire() {
		return require;
	}

	public Assist() {
		super();
	}

	/**
	 * 该构造方法用于使用Assist的静态条件方法,动态添加条件
	 *
	 * @param require
	 *            示例:Assist.lt("A.ID",10)...
	 */
	public Assist(WhereRequire<?>... require) {
		super();
		if (this.require == null) {
			this.require = new ArrayList<WhereRequire<?>>();
		}
		for (int i = 0; i < require.length; i++) {
			this.require.add(require[i]);
		}
	}
}


