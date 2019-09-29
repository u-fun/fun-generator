import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
* ${classInfo.classComment}
*
* Created by U-Fun on '${.now?string('yyyy-MM-dd HH:mm:ss')}'.
* desc:
*/
@Controller
public class ${classInfo.className}Controller {

    @Resource
    private ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * 新增${classInfo.className}
    */
    @ApiOperation("新增${classInfo.className}")
    @NeedLoginToken
    @Log("【请输入功能备注】")
    @PostMapping("/insert")
    @ResponseBody
    public CommonResult insert(${classInfo.className} ${classInfo.className?uncap_first}){
        return CommonResult.success(${classInfo.className?uncap_first}Service.insert${classInfo.className}(${classInfo.className?uncap_first}));
    }

    /**
    * 删除${classInfo.className}
    */
    @ApiOperation("删除${classInfo.className}")
    @NeedLoginToken
    @Log("【请输入功能备注】")
    @PostMapping("/delete${classInfo.className}ById")
    @ResponseBody
    public CommonResult delete${classInfo.className}ById(int userId){
        return CommonResult.success(${classInfo.className?uncap_first}Service.delete${classInfo.className}ById(userId));
    }

    /**
    * 批量删除${classInfo.className}
    */
    @ApiOperation("批量删除${classInfo.className}")
    @NeedLoginToken
    @Log("【请输入功能备注】")
    @PostMapping("/deleteList")
    @ResponseBody
    public CommonResult delete${classInfo.className}List(String ids){
        return CommonResult.success(${classInfo.className?uncap_first}Service.delete${classInfo.className}List(ids));
    }

    /**
    * 修改${classInfo.className}
    */
    @ApiOperation("修改${classInfo.className}")
    @NeedLoginToken
    @Log("【请输入功能备注】")
    @PostMapping("/update${classInfo.className}ById")
    @ResponseBody
    public CommonResult update${classInfo.className}ById(${classInfo.className} ${classInfo.className?uncap_first}){
        return CommonResult.success(${classInfo.className?uncap_first}Service.update${classInfo.className}(${classInfo.className?uncap_first}));
    }

    /**
    * 查询${classInfo.className}
    */
    @ApiOperation("查询${classInfo.className}")
    @NeedLoginToken
    @Log("【请输入功能备注】")
    @PostMapping("/select${classInfo.className}ById")
    @ResponseBody
    public CommonResult select${classInfo.className}ById(int userId){
        return CommonResult.success(${classInfo.className?uncap_first}Service.select${classInfo.className}ById(userId));
    }

   /**
    * 分页条件查询${classInfo.className}
    */
    @ApiOperation("分页条件查询${classInfo.className}")
    @NeedLoginToken
    // 如果有@NeedLoginToken，则 @Log(value="【请输入功能备注】",type=LoginType.App)
    @Log("【请输入功能备注】")
    @PostMapping("/selectList")
    @ResponseBody
    public CommonResult<CommonPage<${classInfo.className}>> selectUserList(${classInfo.className} ${classInfo.className?uncap_first},
                                                        @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                                        @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize){
        List<${classInfo.className}> list = userService.selectUserList(${classInfo.className?uncap_first},pageNum, pageSize);
        return CommonResult.success(CommonPage.restPage(list));
    }

   <#-- public CommonResult select${classInfo.className}ByList(String[] array){
        return CommonResult.success(${classInfo.className?uncap_first}Service.select${classInfo.className}ByList(array));
    }-->
   <#-- /**
    * 分页查询
    */
    @ApiOperation("【请输入swagger功能备注】")
    @NeedLoginToken
    @Log("【请输入功能备注】")
    @PostMapping("/pageList")
    @ResponseBody
    public CommonResult pageList(@RequestParam(required = false, defaultValue = "0") int offset,
                                        @RequestParam(required = false, defaultValue = "10") int pagesize) {
        return CommonResult.success(${classInfo.className?uncap_first}Service.pageList(offset, pagesize));
    }-->

}
