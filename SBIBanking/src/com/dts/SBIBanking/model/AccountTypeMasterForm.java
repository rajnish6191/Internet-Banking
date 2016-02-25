/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dts.SBIBanking.model;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 01-20-2009
 * 
 * XDoclet definition:
 * @struts.form name="accountTypeMasterForm"
 */
public class AccountTypeMasterForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** intrestApplicable property */
	private String intrestApplicable;

	/** maxOpenBal property */
	private int maxOpenBal;

	/** typeName property */
	private String typeName;

	/** checkbookFacilityBit property */
	private String checkbookFacilityBit;

	/** minOpenBal property */
	private int minOpenBal;

	/** description property */
	private String description;

	/** abbr property */
	private String abbr;

	/** bankTypeBit property */
	private int bankTypeBit;

	/** accTypeId property */
	private int accTypeId;

	/** balanceTypeBit property */
	private int balanceTypeBit;

	/** minBalToBeMaintain property */
	private int minBalToBeMaintain;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the intrestApplicable.
	 * @return int
	 */
	public String getIntrestApplicable() {
		return intrestApplicable;
	}

	/** 
	 * Set the intrestApplicable.
	 * @param intrestApplicable The intrestApplicable to set
	 */
	public void setIntrestApplicable(String intrestApplicable) {
		this.intrestApplicable = intrestApplicable;
	}

	/** 
	 * Returns the maxOpenBal.
	 * @return int
	 */
	public int getMaxOpenBal() {
		return maxOpenBal;
	}

	/** 
	 * Set the maxOpenBal.
	 * @param maxOpenBal The maxOpenBal to set
	 */
	public void setMaxOpenBal(int maxOpenBal) {
		this.maxOpenBal = maxOpenBal;
	}

	/** 
	 * Returns the typeName.
	 * @return String
	 */
	public String getTypeName() {
		return typeName;
	}

	/** 
	 * Set the typeName.
	 * @param typeName The typeName to set
	 */
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	/** 
	 * Returns the checkbookFacilityBit.
	 * @return int
	 */
	public String getCheckbookFacilityBit() {
		return checkbookFacilityBit;
	}

	/** 
	 * Set the checkbookFacilityBit.
	 * @param checkbookFacilityBit The checkbookFacilityBit to set
	 */
	public void setCheckbookFacilityBit(String checkbookFacilityBit) {
		this.checkbookFacilityBit = checkbookFacilityBit;
	}

	/** 
	 * Returns the minOpenBal.
	 * @return int
	 */
	public int getMinOpenBal() {
		return minOpenBal;
	}

	/** 
	 * Set the minOpenBal.
	 * @param minOpenBal The minOpenBal to set
	 */
	public void setMinOpenBal(int minOpenBal) {
		this.minOpenBal = minOpenBal;
	}

	/** 
	 * Returns the description.
	 * @return String
	 */
	public String getDescription() {
		return description;
	}

	/** 
	 * Set the description.
	 * @param description The description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/** 
	 * Returns the abbr.
	 * @return String
	 */
	public String getAbbr() {
		return abbr;
	}

	/** 
	 * Set the abbr.
	 * @param abbr The abbr to set
	 */
	public void setAbbr(String abbr) {
		this.abbr = abbr;
	}

	/** 
	 * Returns the bankTypeBit.
	 * @return int
	 */
	public int getBankTypeBit() {
		return bankTypeBit;
	}

	/** 
	 * Set the bankTypeBit.
	 * @param bankTypeBit The bankTypeBit to set
	 */
	public void setBankTypeBit(int bankTypeBit) {
		this.bankTypeBit = bankTypeBit;
	}

	/** 
	 * Returns the accTypeId.
	 * @return int
	 */
	public int getAccTypeId() {
		return accTypeId;
	}

	/** 
	 * Set the accTypeId.
	 * @param accTypeId The accTypeId to set
	 */
	public void setAccTypeId(int accTypeId) {
		this.accTypeId = accTypeId;
	}

	/** 
	 * Returns the balanceTypeBit.
	 * @return int
	 */
	public int getBalanceTypeBit() {
		return balanceTypeBit;
	}

	/** 
	 * Set the balanceTypeBit.
	 * @param balanceTypeBit The balanceTypeBit to set
	 */
	public void setBalanceTypeBit(int balanceTypeBit) {
		this.balanceTypeBit = balanceTypeBit;
	}

	/** 
	 * Returns the minBalToBeMaintain.
	 * @return int
	 */
	public int getMinBalToBeMaintain() {
		return minBalToBeMaintain;
	}

	/** 
	 * Set the minBalToBeMaintain.
	 * @param minBalToBeMaintain The minBalToBeMaintain to set
	 */
	public void setMinBalToBeMaintain(int minBalToBeMaintain) {
		this.minBalToBeMaintain = minBalToBeMaintain;
	}
}