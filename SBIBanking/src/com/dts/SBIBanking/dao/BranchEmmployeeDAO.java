package com.dts.SBIBanking.dao;

import com.dts.core.dao.AbstractDataAccessObject;
import java.sql.*;
public class BranchEmmployeeDAO extends AbstractDataAccessObject {
public boolean register(String loginid,String branchaddress)
{
	boolean flag=false;
	Connection con=null;
	try{
		con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into branchemployee values(?,?)");
		pst.setString(1,loginid);
		pst.setString(2,branchaddress);
		int n=pst.executeUpdate();
		if(n>0)
		{
			flag=true;
		}
	}catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}
	return flag;
}
public String getBranchname(String loginid)
{
	String branchname="";
	Connection con=null;
	try{
		con=getConnection();
		PreparedStatement pst=con.prepareStatement("select BranchAddress from branchemployee where loginname=?");
pst.setString(1,loginid);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
	branchname=rs.getString(1);
}
	}catch (Exception e) {
		// TODO: handle exception
	}
	return branchname;
}
}
