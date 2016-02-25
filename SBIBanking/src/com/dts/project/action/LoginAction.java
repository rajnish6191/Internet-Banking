/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dts.project.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dts.SBIBanking.dao.BankAccountDAO;
import com.dts.SBIBanking.dao.BranchEmmployeeDAO;
import com.dts.dae.dao.SecurityDAO;

/** 
 * MyEclipse Struts
 * Creation date: 02-16-2009
 * 
 * XDoclet definition:
 * @struts.action
 * @struts.action-forward name="Success" path="/AdminHome.jsp"
 * @struts.action-forward name="Fail" path="/LoginForm.jsp"
 */
public class LoginAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	try{
		 String username = request.getParameter("username");
         
         String password=request.getParameter("password");
         HttpSession session=request.getSession();
         String role=new SecurityDAO().loginCheck(username,password);
         System.out.println("this is Role="+role);
         if(role.equalsIgnoreCase("Admin"))
         {     System.out.println("this is Role="+role);
          //  target = "AdminHome.jsp?status=Welcome "+username;
            session.setAttribute("user",username);
            session.setAttribute("role",role);
         return mapping.findForward("admin");
         } 
         else if(role.equals("Employee"))
         {
        	 String branch=new BranchEmmployeeDAO().getBranchname(username);
           // int status = new SecurityDAO().checkFirstLogin(username);
//           if(status==1)
//            	target = "DealerHome.jsp?status=Welcome "+username;
//            else if(status==0)
//                target = "DealerHome.jsp?status=Welcome "+username;
//            else
//                target = "LoginForm.jsp?ls=Invalid username and password";    	
//           
        	 session.setAttribute("user",username);
            session.setAttribute("role",role);
            session.setAttribute("branch",branch);
            return mapping.findForward("Employee");
         } 
         else if(role.equals("customer"))
         { 
        	 String accountno=new BankAccountDAO().getAccountno(username);
            //target = "CustomerHome.jsp?status=Welcome "+username;
            session.setAttribute("user",username);
            session.setAttribute("role",role);
            session.setAttribute("accountno",accountno);
            return mapping.findForward("Customer");
         } 
         else 
        	 return mapping.findForward("invalid");
            //target = "LoginForm.jsp?ls=Invalid username and password";
            }catch(Exception e){e.printStackTrace();} 
	
	return mapping.findForward("invalid");
}
	}