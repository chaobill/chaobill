/**
 * <ul>
 * <li>版本信息：v1.0</li>
 * <li>日期：2016年6月1日-下午10:23:59</li>
 * <li>版权所有(C)2016Chabill-版权所有</li>
 * <li>创建人:Chabill</li>
 * <li>创建时间：2016年6月1日-下午10:23:59</li>
 * </ul>
 */
package com.chabill.login.cotroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <ul>
 * <li>功能描述：登录模块控制类</li>
 * <li>版本信息：v1.0</li>
 * <li>日期：2016年6月1日-下午10:23:59</li>
 * <li>版权所有(C)2016 Chabill-版权所有</li>
 * <li>创建人:Chabill</li>
 * <li>创建时间：2016年6月1日-下午10:23:59</li>
 * </ul>
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	
	/**
	 * 
	 * login 方法
	 * @descript：点击登录按钮进入此方法
	 * @return void
	 * @author Chabill
	 * @date 2016年6月13日-下午9:30:49
	 */
	@RequestMapping("/login")
	public String login(){
		return "index";
	}

}
