/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * author : Ahsan, Hasan Mobarak
 */

package com.fk.action;

import com.fk.bean.adminBean;
import com.fk.manager.EmpManager;
import com.fk.manager.impl.EmpManagerCheck;
import com.fk.manager.impl.EmpManagerImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 *
 * @author Dell
 */
public class userAction extends ActionSupport implements ModelDriven<adminBean>{
    
    private adminBean aBean=new adminBean();
    private EmpManager eManager= new EmpManagerImpl();
    private EmpManagerCheck eCheck= new EmpManagerCheck();
    
    public String searchAdmn(){
        if(aBean.getAname()== null || aBean.getAname().trim().isEmpty())
        {
            aBean.setMessage("Enter User Name");
            
            return  "fail";
        }
    

            
         adminBean pb=eManager.getAdmn(aBean.getAname());
         
         if (pb==null) {
             
             aBean.setMessage("This user not exists....");
             
             return "fail";
            
        } else {
        
          aBean.setAname(pb.getAname());
          aBean.setPassword(pb.getPassword());
          aBean.setRight(pb.getRight());
          return "success";
           
        }
    
    }
    
    public String saveAdmn(){
        
        if(aBean.getAname()== null || aBean.getAname().trim().isEmpty())
        {
            aBean.setMessage("Enter User Name");
            
            return  "fail";
        }
        
        if(aBean.getPassword()== null || aBean.getPassword().trim().isEmpty())
        {
            aBean.setMessage("Enter Password");
            
            return  "fail";
        }
        
        if(aBean.getRight()== null || aBean.getPassword().trim().isEmpty())
        {
            aBean.setMessage("Enter User Right");
            
            return  "fail";
        }
        
        int x=eCheck.checkAdmn(aBean.getAname());
        
        if (x==0) {// check that the inputed id is not in empdata
            
            boolean isSave;
            isSave=eManager.saveAdmn(aBean); // add new employee

            if(isSave)
            {
            
                aBean.setMessage("Data Saved");
                
                return  "success";

            }
            else
            {
                aBean.setMessage("Unable to Save Data!!!");
                
                return  "fail";
            }
            
            
        } else {
            
            aBean.setMessage("User exists!");
            
            return  "fail";
            
        }
        
        
    }
     
     public String upAdmn(){
         
        if(aBean.getAname()== null || aBean.getAname().trim().isEmpty())
        {
            aBean.setMessage("Enter User Name");
            
            return  "fail";
        }
        
        if(aBean.getPassword()== null || aBean.getPassword().trim().isEmpty())
        {
            aBean.setMessage("Enter Password");
            
            return  "fail";
        }
        
        if(aBean.getRight()== null || aBean.getPassword().trim().isEmpty())
        {
            aBean.setMessage("Enter User Right");
            
            return  "fail";
        }
        
        boolean isUpdate = eManager.upAdmn(aBean);
        if(isUpdate)
        {
           //List<EmpBean> eBeanList = eManager.getAllperson();
            //eBean.seteBeans(eBeanList);

                aBean.setMessage("Data Updated");
                
                //clear();
                return "success";

        }
        else
        {
            //eBean.setMessage(" "+eBean.getId());
                aBean.setMessage("Unable to Update Data!!!");
                //setDeptList(this.deptList);
                return "fail";
        }
         
       
    
    }

    @Override
    public adminBean getModel() {
        return  aBean;//To change body of generated methods, choose Tools | Templates.
    }
    
    
}
