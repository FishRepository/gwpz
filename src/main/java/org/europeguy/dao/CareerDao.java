package org.europeguy.dao;

import org.europeguy.entity.Career;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 职业(Career)表数据库访问层
 *
 * @author makejava
 * @since 2019-08-09 17:07:21
 */
public interface CareerDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Career queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Career> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param career 实例对象
     * @return 对象列表
     */
    List<Career> queryAll(Career career);

    /**
     * 新增数据
     *
     * @param career 实例对象
     * @return 影响行数
     */
    int insert(Career career);

    /**
     * 修改数据
     *
     * @param career 实例对象
     * @return 影响行数
     */
    int update(Career career);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}