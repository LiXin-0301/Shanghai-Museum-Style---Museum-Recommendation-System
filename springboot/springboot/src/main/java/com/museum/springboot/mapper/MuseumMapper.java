package com.museum.springboot.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.museum.springboot.entity.Museum;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

//@Mapper
@Mapper
public interface MuseumMapper extends BaseMapper<Museum> {/*博物馆数据操作函数接口*/

    /*    博物馆全显示接口声明*/
    @Select("SELECT * from museum")
    List<Museum> findAll();

    /*    博物馆单条件搜索接口声明*/
    @Select("SELECT * FROM museum WHERE m_id = #{m_id} ")
    List<Museum> museumBym_id(@Param("m_id") Integer m_id);

    /*    博物馆多条件灵活筛选接口声明*/
    @Select({
            "<script>",
            "SELECT * FROM museum",
            "<where>",
            "<if test='address != null'> AND address LIKE CONCAT('%', #{address}, '%')</if>",
            "<if test='type != null'> AND type LIKE CONCAT('%', #{type}, '%')</if>",
            "<if test='fare != null'> AND ABS(fare - 0) &lt; 0.000001</if>",
            "<if test='fare_rule != null'> AND fare_rule LIKE CONCAT('%', #{fare_rule}, '%')</if>",
            "</where>",
            "</script>"
    })
    List<Museum> searchMuseums(@Param("address") String address,
                               @Param("type") String type,
                               @Param("fare") Double fare,
                               @Param("fare_rule") String fare_rule);

//    @Select("SELECT * FROM museum WHERE(m_name LIKE CONCAT('%', #{m_name}, '%'))  and (address like CONCAT('%', #{address}, '%'))and ( type like CONCAT('%', #{type}, '%'))and ( openingDays like CONCAT('%', #{openingDays}, '%')) LIMIT #{pageNum}, #{pageSize}")
//    List<Museum> selectPage(Integer pageNum, Integer pageSize, String m_name,String address,String type,String openingDays);
//
//    @Select("SELECT COUNT(*) FROM museum WHERE (m_name LIKE CONCAT('%', #{m_name}, '%'))  and (address like CONCAT('%', #{address}, '%'))and ( type like CONCAT('%', #{type}, '%')) and ( openingDays like CONCAT('%', #{openingDays}, '%'))  ")
//    Integer selectTotal(String m_name,String address,String type,String openingDays);
//

    @Select("SELECT * FROM museum WHERE(m_name LIKE CONCAT('%', #{m_name}, '%'))  and (address like CONCAT('%', #{address}, '%'))and ( type like CONCAT('%', #{type}, '%')) and ( openingDay like CONCAT('%', #{openingDay}, '%'))and (fare_rule like CONCAT('%', #{fare_rule}, '%'))and (isReservedTag like CONCAT('%', #{isReservedTag}, '%'))LIMIT #{pageNum}, #{pageSize}")
    List<Museum> selectPage(Integer pageNum, Integer pageSize, String m_name, String address, String type, String openingDay, String fare_rule, String isReservedTag);

    @Select("SELECT COUNT(*) FROM museum WHERE (m_name LIKE CONCAT('%', #{m_name}, '%'))  and (address like CONCAT('%', #{address}, '%'))and ( type like CONCAT('%', #{type}, '%')) and ( openingDay like CONCAT('%', #{openingDay}, '%'))and (fare_rule like CONCAT('%', #{fare_rule}, '%'))and (isReservedTag like CONCAT('%', #{isReservedTag}, '%')) ")
    Integer selectTotal(String m_name, String address, String type, String openingDay, String fare_rule, String isReservedTag);

    /* 按热度推荐博物馆接口声明 */
    @Select("SELECT * FROM museum ORDER BY m_view DESC ")
    List<Museum> recommendMuseumsByView();

    /* 按收藏推荐博物馆接口声明 */
    @Select("SELECT * FROM museum ORDER BY m_favorites DESC ")
    List<Museum> recommendMuseumsByFavorites();

    /* 按评分推荐博物馆接口声明 */
    @Select("SELECT * FROM museum ORDER BY m_rate DESC ")
    List<Museum> recommendMuseumsByRate();


    /* 收藏接口声明*/
    @Select("SELECT museum.* FROM museum INNER JOIN favorites ON museum.m_id = favorites.m_id WHERE favorites.user_id =  #{user_id} ORDER BY favorites.favorites_time DESC ")
    List<Museum> findMuseumsByFavorites(@Param("user_id") Integer user_id);

    /* 历史记录接口声明*/
    @Select("SELECT museum.* FROM museum INNER JOIN browsinghistory ON museum.m_id = browsinghistory.m_id WHERE browsinghistory.user_id =  #{user_id} ORDER BY browsinghistory.browsinghistory_time DESC ")
    List<Museum> findMuseumsByBrowsingHistory(@Param("user_id") Integer user_id);

    @Update("update museum set m_rate=#{m_rate},exhibits=#{exhibits},comfort=#{comfort},service=#{service},facility=#{facility},activity=#{activity} where m_id=#{m_id}")
    void updateRating(Museum museum);

}

