package com.newer.mapper;

import com.newer.domain.Checkin;
import org.apache.ibatis.annotations.*;

import java.util.List;


public interface CheckinMapper {

    @Results(value = {@Result(property = "cid",column = "cid",id=true),
                        @Result(property = "name",column = "name"),
                        @Result(property = "checkinTime",column = "checkintime"),
                        @Result(property = "num",column = "num"),
                        @Result(property = "state",column = "state"),
                        @Result(property = "room",javaType = com.newer.domain.Room.class,
                        column = "roomid",one=@One(select="com.newer.mapper.RoomMapper.findById"))})
    @Select("select cid,name,roomid,checkintime,num,state from checkins")
    List<Checkin> findAll();


    @Update("update checkins set totalprice=#{totalprice},state=2 where cid=#{cid}")
    void update(@Param("cid") int id, @Param("totalprice") int totalprice);
}
