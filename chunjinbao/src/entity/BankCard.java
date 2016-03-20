package entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class BankCard {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer bankCardId;
	
	//��ʵ����
	@Column(name="REALNAME",nullable=true,length=50)
	private String realName;
	
	//���֤��
	@Column(name="IDENTITYCARD",nullable=true,length=50)
	private String identityCard;
	
	//���п���
	@Column(name="BANKCARDNUM",nullable=true,length=50)
	private String BankCardNum;
	
	//���
	@Column(name="USERNAME",nullable=true,length=50)
	private String userName;

}
