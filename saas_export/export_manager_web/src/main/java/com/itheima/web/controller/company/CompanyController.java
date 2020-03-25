package com.itheima.web.controller.company;


import com.github.pagehelper.PageInfo;
import com.itheima.domain.company.Company;
import com.itheima.service.company.CompanyService;
import com.itheima.web.controller.BaseController;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/company")
public class CompanyController extends BaseController {

    @Autowired
    private CompanyService companyService;



    /**
     * 企业查询
     * name 表示一个名称
     * @param request
     * @param myDate
     * @return
     */
   /* //方法
    @RequestMapping(value = "/list" , name = "企业查询")
    //springmvc支持 2018/01/01  不支持- saas项目中用的都是-
    public String list(HttpServletRequest request , Date myDate){
        //int i = 1/0;
        //System.err.println(myDate);
        //调用service查询
        List<Company> companyList = companyService.findAll();
        //System.out.println(companyList);
        request.setAttribute("list" , companyList);
        return "company/company-list";
    }*/


    /**
     * 分页查询
     * @return
     */
    //方法
    @RequestMapping(value = "/list" , name = "企业查询")
    public String list(@RequestParam(defaultValue = "1") Integer page ,@RequestParam(defaultValue = "2")  Integer pageSize){
        //List<Company> companyList = companyService.findAll();
        //PageResult pr = companyService.findByPage(page , pageSize);
        PageInfo pageInfo = companyService.findByPage(page , pageSize);
        request.setAttribute("page" , pageInfo);

        return "company/company-list";
    }

    /**
     * 跳转企业添加页面
     * @return
     */
    @RequestMapping(value = "/toAdd" , name = "跳转企业添加页面")
    public String toAdd(){
        return "company/company-add";
    }

    /**
     * 添加企业 和修改企业数据 同一个Controller
     * 添加企业没有id
     * 修改企业是有id值
     * @return
     */
    @RequestMapping(value = "/edit" , name = "添加和修改企业")
    public String edit(Company company){

        if(StringUtils.isBlank(company.getId())){ //没有id的情况是添加
            companyService.save(company);
        }else{//有id的情况 修改
            companyService.update(company);
        }

        //重新执行查询方法
        return "redirect:/company/list.do";
    }

    /**
     * 跳转企业修改页面
     * @return
     */
    @RequestMapping(value = "/toUpdate",name = "跳转企业修改页面")
    public String toUpdate(String id){
        //根据id查询一个企业数据
        Company company = companyService.findById(id);
        //将企业数据存入request
        request.setAttribute("company",company);
        return "company/company-update";
    }

    /**
     * 根据id删除企业数据
     * @return
     */
    @RequestMapping(value = "/delete" , name = "根据id删除企业数据")
    public String delete(String id ){
        companyService.delete(id);
        return "redirect:/company/list.do";
    }
}
