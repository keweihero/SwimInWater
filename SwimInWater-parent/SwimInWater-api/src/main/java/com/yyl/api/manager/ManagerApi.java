package com.yyl.api.manager;

import java.util.List;
import java.util.Map;

import com.yyl.entity.Hotel;
import com.yyl.entity.Line;
import com.yyl.entity.Orders;
import com.yyl.entity.PageBean;
import com.yyl.entity.Picture;
import com.yyl.entity.Scenicspot;
import com.yyl.entity.User;


/**
 * 管理模块相关
* @ClassName: Manager
* @author ydb
* @date 2019年1月9日 下午12:16:07
*
 */
public interface ManagerApi {
	
	//-----------------------------用户------------------------------------------------------
	/**
	 * 
	 * @Title: modifyUser
	 * @Description: TODO(修改用户角色)
	 * @param @param user
	 * @return Integer    返回类型
	 * @throws
	 */
	public Integer modifyUser(User user);
	/**
	 * 
	 * @Title: getUserById
	 * @Description: TODO(根据ID查询用户信息)
	 * @param @param id
	 * @return User    返回类型
	 * @throws
	 */
	public User getUserById(Integer id);
	
	/**
	 * 登录
	 * @Title: selLogin
	 * @param @param uName
	 * @return User    返回类型
	 * @throws
	 */
	User selLogin(String uName,String uPwd);
	/**
	 * 注册用户
	 * @Title: addRegister
	 * @param @param user
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer addRegister(User user);
	/**
	 * 查询所有用户
	 * @Title: setUserList
	 * @return List<User>    返回类型
	 * @throws
	 */
	List<User> setUserList();
	
	PageBean<User> queryUserPageByMap(Map<String,Object> param,Integer size,Integer cur);
	
	Integer getUserCountByMap(Map<String,Object> param);
	
	
	
	
	//-----------------------------景点------------------------------------------------------
	/**
	 * 添加景点信息
	 * @Title: addScenicspot
	 * @param @param scenicspot
	 * @param @param hotel
	 * @param @param line
	 * @param @param sPicList
	 * @param @param hPicList
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer addScenicspot(Scenicspot scenicspot, Hotel hotel, Line line, List<Picture> sPicList, List<Picture> hPicList);
	/**
	 * 修改景点信息
	 * @Title: uplScenicspot
	 * @param @param scenicspot
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer uplScenicspot(Scenicspot scenicspot);
	 
	//-----------------------------路线------------------------------------------------------
	
	/**
	 * 添加线路信息 
	 * @Title: addLine
	 * @param @param line
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer addLine(Line line);
	/**
	 * 修改路线信息
	 * @Title: uplLine
	 * @param @param line
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer uplLine(Line line);
	/**
	 * 删除路线信息
	 * @Title: delLine
	 * @param @param id
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer delLine(Integer id);
	
	//-----------------------------酒店------------------------------------------------------
	
	/**
	 * 添加酒店信息
	 * @Title: addHotel
	 * @param @param hotel
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer addHotel(Hotel hotel);
	/**
	 * 修改酒店信息
	 * @Title: uplHotel
	 * @param @param hotel
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer uplHotel(Hotel hotel);
	/**
	 * 删除信息
	 * @Title: delHotel
	 * @param @param id
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer delHotel(Integer id);
	
	//-----------------------------订单------------------------------------------------------
	
	/**
	 *  添加订单信息
	 * @Title: addOrders
	 * @param @param orders
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer addOrders(Orders orders);
	/**
	 *  修改订单信息
	 * @Title: uplOrders
	 * @param @param orders
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer uplOrders(Orders orders);
	/**
	 * 删除订单信息(只能删除未付款的)
	 * @Title: delOrders
	 * @param @param id
	 * @return Integer    返回类型
	 * @throws
	 */
	Integer delOrders(Integer id);
	

	
}
