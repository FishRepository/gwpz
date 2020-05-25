package org.europeguy.service;

import org.europeguy.entity.Career;
import java.util.List;

/**
 * 职业(Career)表服务接口
 *
 * @author makejava
 * @since 2019-08-09 17:07:21
 */
public interface CareerService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Career queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Career> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param career 实例对象
     * @return 实例对象
     */
    Career insert(Career career);

    /**
     * 修改数据
     *
     * @param career 实例对象
     * @return 实例对象
     */
    Career update(Career career);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}