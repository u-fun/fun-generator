<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="mapper路径.${classInfo.className}Mapper">

    <resultMap id="${classInfo.className}Result" type="${classInfo.className}" >
    <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
    <#list classInfo.fieldList as fieldItem >
        <result column="${fieldItem.columnName}" property="${fieldItem.fieldName}" />
    </#list>
    </#if>
    </resultMap>

    <sql id="select${classInfo.className}ByVo">
        <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
        <#list classInfo.fieldList as fieldItem >${fieldItem.columnName}<#if fieldItem_has_next>,</#if></#list>
        </#if>
    </sql>

    <insert id="insert${classInfo.className}" parameterType="${classInfo.className}" useGeneratedKeys="true" keyProperty="userId" >
        INSERT INTO ${classInfo.tableName}
        <trim prefix="(" suffix=")" suffixOverrides=",">
            <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
            <#list classInfo.fieldList as fieldItem >
                <#if fieldItem.columnName != "Id" >
                <if test="${fieldItem.fieldName} != null  and ${fieldItem.fieldName} != ''">${fieldItem.columnName}<#if fieldItem_has_next>,</#if> </if>
                </#if>
            </#list>
            </#if>
        </trim>
        <trim prefix="values (" suffix=")" suffixOverrides=",">
            <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
            <#list classInfo.fieldList as fieldItem >
            <#if fieldItem.columnName != "Id" >
                <#if fieldItem.columnName="AddTime" || fieldItem.columnName="UpdateTime" >
                NOW()<#if fieldItem_has_next>,</#if>
                <#else>
                <if test="${fieldItem.fieldName} != null  and ${fieldItem.fieldName} != ''">${r"#{"}${fieldItem.fieldName}${r"}"}<#if fieldItem_has_next>,</#if></if>
                </#if>
            </#if>
            </#list>
            </#if>
        </trim>
    </insert>

    <update id="update${classInfo.className}" parameterType="${classInfo.className}" >
        UPDATE ${classInfo.tableName}
        <trim prefix="SET" suffixOverrides=",">
            <#list classInfo.fieldList as fieldItem >
            <#if fieldItem.columnName != "Id" && fieldItem.columnName != "AddTime" && fieldItem.columnName != "UpdateTime" >
                <if test="${fieldItem.fieldName} != null  and ${fieldItem.fieldName} != ''">${fieldItem.columnName} = ${r"#{"}${fieldItem.fieldName}${r"}"},</if>
            </#if>
            </#list>
        </trim>
        WHERE  表中主键 = ${r"#{"}重命名后的表主键${r"}"}
    </update>

    <delete id="delete${classInfo.className}ById" parameterType="Integer">
        DELETE FROM
        WHERE  表中主键 = ${r"#{重命名后的表主键}"}
    </delete>

    <delete id="delete${classInfo.className}List" parameterType="String">
        delete from ${classInfo.tableName} where 表中唯一字段 in
        <foreach item="item" collection="ids" open="(" separator="," close=")">
            ${r"#{item}"}
        </foreach>
    </delete>

    <select id="select${classInfo.className}ById" parameterType="Integer" resultMap="${classInfo.className}Result">
        SELECT <include refid="select${classInfo.className}ByVo" />
        FROM  ${classInfo.tableName}
        WHERE 表主键 = ${r"#{重命名后的表主键}"}
    </select>

    <select id="select${classInfo.className}List" parameterType="${classInfo.className}" resultMap="${classInfo.className}Result">
        select
        <include refid="select${classInfo.className}ByVo"/>  from ${classInfo.tableName}
       <#-- <where>
            <if test="loginName != null  and loginName != ''">login_name like concat('%', #{loginName}, '%')</if>
            <if test="username != null  and username != ''"> and username like concat('%', #{username}, '%')</if>
        </where>-->
    </select>

 <#--   <select id="pageList" parameterType="${classInfo.className}" resultMap="${classInfo.className}Result">
        SELECT <include refid="select${classInfo.className}ByVo" />
        FROM ${classInfo.tableName}
        LIMIT ${r"#{offset}"}, ${r"#{pagesize}"}
    </select>

    <select id="pageListCount" parameterType="${classInfo.className}" resultType="int">
        SELECT count(1)
        FROM ${classInfo.tableName}
    </select>-->

</mapper>
