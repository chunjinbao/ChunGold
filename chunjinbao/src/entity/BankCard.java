package entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class BankCard {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer bankCardId;
	
	//真实姓名
	@Column(name="REALNAME",nullable=true,length=50)
	private String realName;
	
	//身份证号
	@Column(name="IDENTITYCARD",nullable=true,length=50)
	private String identityCard;
	
	//银行卡号
	@Column(name="BANKCARDNUM",nullable=true,length=50)
	private String BankCardNum;
	
	//外键
	@Column(name="USERNAME",nullable=true,length=50)
	private String userName;

}
