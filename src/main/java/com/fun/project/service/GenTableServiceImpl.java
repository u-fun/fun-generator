package com.fun.project.service;

import com.fun.project.entity.GenTable;

import java.util.List;
import java.util.Map;

/**
 * @author DJun
 * @date 2019/9/29
 */
public class GenTableServiceImpl implements IGenTableService {
    @Override
    public List<GenTable> selectGenTableList(GenTable genTable) {
        return null;
    }

    @Override
    public List<GenTable> selectDbTableList(GenTable genTable) {
        return null;
    }

    @Override
    public List<GenTable> selectDbTableListByNames(String[] tableNames) {
        return null;
    }

    @Override
    public GenTable selectGenTableById(Long id) {
        return null;
    }

    @Override
    public void updateGenTable(GenTable genTable) {

    }

    @Override
    public void deleteGenTableByIds(String ids) {

    }

    @Override
    public void importGenTable(List<GenTable> tableList) {

    }

    @Override
    public Map<String, String> previewCode(Long tableId) {
        return null;
    }

    @Override
    public byte[] generatorCode(String tableName) {
        return new byte[0];
    }

    @Override
    public byte[] generatorCode(String[] tableNames) {
        return new byte[0];
    }

    @Override
    public void validateEdit(GenTable genTable) {

    }
}
