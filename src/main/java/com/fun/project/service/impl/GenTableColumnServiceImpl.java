package com.fun.project.service.impl;

import com.fun.project.mapper.GenTableColumnMapper;
import com.fun.project.entity.GenTableColumn;
import com.fun.project.service.IGenTableColumnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @author U-Fun
 */
@Service
public class GenTableColumnServiceImpl implements IGenTableColumnService {
    @Autowired
    private GenTableColumnMapper genTableColumnMapper;
    /**
     * 新增
     */
    @Override
    public int insertGenTableColumn(GenTableColumn genTableColumn) {
        return genTableColumnMapper.insertGenTableColumn(genTableColumn);
    }
}
