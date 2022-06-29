package com.rcp.afed.model;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_login_role")
public class Role implements Serializable {

	private static final long serialVersionUID = 2611032857021912481L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="role_id")
	private Long role_id;
	
	@Column(name="role_code")
	private String roleCode;
	
	@Column(name="role_dspl_name")
	private String roleDisplayName;
	
	@Column(name="role_desc")
	private String roleDescripton;
	
	@Column(name="is_active")
	private Boolean isActive;

	public Long getRole_id() {
		return role_id;
	}

	public void setRole_id(Long role_id) {
		this.role_id = role_id;
	}

	public String getRoleCode() {
		return roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	public String getRoleDisplayName() {
		return roleDisplayName;
	}

	public void setRoleDisplayName(String roleDisplayName) {
		this.roleDisplayName = roleDisplayName;
	}

	public String getRoleDescripton() {
		return roleDescripton;
	}

	public void setRoleDescripton(String roleDescripton) {
		this.roleDescripton = roleDescripton;
	}

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

}
