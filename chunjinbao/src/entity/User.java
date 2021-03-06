package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USER",schema="chunjinbao")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer userId;
	@Column(name="TEL",nullable=false,unique=true,length=50)
	private String tel;
	@Column(name="PASSWORD",nullable=true,length=50)
	private String password;


	@Column(name="TRADEPSW",nullable=true,length=50)
	private String tradePsw;

	@Column(name="GOLDNUM",nullable=true,length=50)
	private String goldNum;
	@Column(name="WALLET",nullable=true,length=50)
	private String wallet;
	@Column(name="ADDRESS",nullable=true,length=50)
	private String address;
	
	//新增
	@Column(name="USERNAME", nullable=true, length=50)
	private String userName;
	@Column(name="EMAIL", nullable=true, length=50)
	private String email;
	@Column(name="SEX", nullable=true, length=1)
	private String sex;
	@Column(name="BIRTHDAY", nullable=true, length=50)
	private String birthday;
	
	//20160317新增

	@Column(name="SHAREID", nullable=true, length=50)
	private String shareId;
	@Column(name="SHAREIDCOUNT", nullable=true, length=50)
	private String shareIdCount;
	@Column(name="HEADPORTRAIT", nullable=true, length=200)
	private String headPortrait;
	
	//20160319 新增
	//用别人的邀请码注册
	@Column(name="USESHAREID", nullable=true, length=50)
	private String useShareId;
	//注册时间
	@Column(name="REGTIME", nullable=true, length=50)
	private String regTime;
	
	public String getUseShareId() {
		return useShareId;
	}
	public void setUseShareId(String useShareId) {
		this.useShareId = useShareId;
	}
	public String getRegTime() {
		return regTime;
	}
	public void setRegTime(String regTime) {
		this.regTime = regTime;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public String getTradePsw() {
		return tradePsw;
	}
	public void setTradePsw(String tradePsw) {
		this.tradePsw = tradePsw;
	}
	
	
	public String getGoldNum() {
		return goldNum;
	}
	public void setGoldNum(String goldNum) {
		this.goldNum = goldNum;
	}
	public String getWallet() {
		return wallet;
	}
	public void setWallet(String wallet) {
		this.wallet = wallet;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getshareId() {
		return shareId;
	}
	public void setshareId(String shareId) {
		this.shareId = shareId;
	}
	public String getShareId() {
		return shareId;
	}
	public void setShareId(String shareId) {
		this.shareId = shareId;
	}
	public String getHeadPortrait() {
		return headPortrait;
	}
	public void setHeadPortrait(String headPortrait) {
		this.headPortrait = headPortrait;
	}
	public String getShareIdCount() {
		return shareIdCount;
	}
	public void setShareIdCount(String shareIdCount) {
		this.shareIdCount = shareIdCount;
	}
}
