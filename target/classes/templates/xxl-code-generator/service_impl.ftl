import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* ${classInfo.classComment}
*
* Created by U-Fun on '${.now?string('yyyy-MM-dd HH:mm:ss')}'.
* desc:
*/
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

	@Resource
	private ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;

	/**
    * 新增
    */
	@Override
	public int insert${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first}) {

		// valid
		<#--if (${classInfo.className?uncap_first} == null) {
			return new CommonResult.validateFailed;
        }-->

		return ${classInfo.className?uncap_first}Mapper.insert${classInfo.className}(${classInfo.className?uncap_first});
	}

	/**
	* 删除
	*/
	@Override
	public int delete${classInfo.className}ById(int userId) {
		<#--int ret = ${classInfo.className?uncap_first}Dao.delete(id);
		return ret>0?CommonResult.success:CommonResult.failed;-->
		return ${classInfo.className?uncap_first}Mapper.delete${classInfo.className}ById(userId);
	}

	/**
	* 批量删除
	*/
	@Override
		public int delete${classInfo.className}List(String ids){
		return ${classInfo.className?uncap_first}Mapper.delete${classInfo.className}List(Convert.toStrArray(ids));
	 }

	<#--public int delete${classInfo.className}ByIds(String[] array) {
		&lt;#&ndash;int ret = ${classInfo.className?uncap_first}Dao.delete(id);
		return ret>0?CommonResult.success:CommonResult.failed;&ndash;&gt;
		return ${classInfo.className?uncap_first}Mapper.delete${classInfo.className}ByIds(array);
	}-->

	/**
	* 更新
	*/
	@Override
	public int update${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first}) {
		<#--int ret = ${classInfo.className?uncap_first}Dao.update(${classInfo.className?uncap_first});
		return ret>0?CommonResult.success:CommonResult.failed;-->
		return ${classInfo.className?uncap_first}Mapper.update${classInfo.className}(${classInfo.className?uncap_first});
	}

	/**
	* 查询
	*/
	@Override
	public ${classInfo.className} select${classInfo.className}ById(int userId) {
		return ${classInfo.className?uncap_first}Mapper.select${classInfo.className}ById(userId);
	}

	/**
	* 分页条件查询
	*/

	@Override
  	public List<${classInfo.className}> select${classInfo.className}List(${classInfo.className} ${classInfo.className?uncap_first},int pageNum,int pageSize){
		PageHelper.startPage(pageNum,pageSize);
		return userMapper.selectUserList(${classInfo.className?uncap_first});
 	}

	<#--/**
	* 分页查询
	*/
	@Override
	public Map<String,Object> pageList(int offset, int pagesize) {

		List<${classInfo.className}> pageList = ${classInfo.className?uncap_first}Mapper.pageList(offset, pagesize);
		int totalCount = ${classInfo.className?uncap_first}Mapper.pageListCount(offset, pagesize);

		// result
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("pageList", pageList);
		result.put("totalCount", totalCount);

		return result;
	}-->

}
