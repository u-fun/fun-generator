package com.fun.project.entity;

import lombok.Data;

import java.util.List;

/**
 * created by DJun on 2019/8/10 23:04
 * desc:
 */
@Data
public class ClassInfo {
    // 表名
    private String tableName;
    // 类型（如int、string）
    private String className;
    // 注释
    private String classComment;
    private List<FieldInfo> fieldList;

}
