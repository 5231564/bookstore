package com.project.bookstore.service.impl;

import com.project.bookstore.mapper.UserMapper;
import com.project.bookstore.pojo.Address;
import com.project.bookstore.pojo.R;
import com.project.bookstore.pojo.User;
import com.project.bookstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public R login(String account,String password, int identity) {
        try {
            User user = userMapper.login(account,identity);
            if (user != null){
                if (user.getPassword().equals(password)){
                    /* 密码相同 */
                    return R.SUCCESS(user,"登录成功！");
                }
                return R.FAIL("密码错误！");
            }else return R.FAIL("该用户名没用注册");
        }catch (Exception e){
            e.printStackTrace();
            return R.FAIL("数据库出错！");
        }
    }

    @Override
    @Transactional(isolation = Isolation.READ_UNCOMMITTED)
    public R addUser(String account, String password,int identity, String uname,String himg) {
        try {
            userMapper.insertUser(account,password,identity,uname,himg);
            return R.SUCCESS(userMapper.selectUser(account),"注册成功！");
        } catch (Exception e) {
            e.printStackTrace();
            return R.FAIL("注册失败");
        }
    }

    @Override
    public R getUser(Integer uid) {
        try {
            User user = userMapper.getUserByUid(uid);
            if (user != null){

                return R.SUCCESS(user,"个人信息获取成功！");
            }
            return R.FAIL("用户不存在！");

        } catch (Exception e) {
            e.printStackTrace();
            return R.FAIL("数据库出错！");
        }
    }

    @Transactional(isolation = Isolation.READ_UNCOMMITTED)
    @Override
    public R changeUserName(Integer uid, String uname) {
        try {
            userMapper.updateUserName(uid,uname);
            User user = userMapper.getUserByUid(uid);
            return R.SUCCESS(user,"修改用户昵称成功！");
        } catch (Exception e) {
            e.printStackTrace();
            return R.FAIL("数据库出错！");
        }
    }

    @Transactional(isolation = Isolation.READ_UNCOMMITTED)
    @Override
    public R changePassword(Integer uid, String password) {
        try {
            userMapper.changePassword(uid,password);
            User user = userMapper.getUserByUid(uid);
            return R.SUCCESS(user,"修改用户密码成功！");
        } catch (Exception e) {
            e.printStackTrace();
            return R.FAIL("数据库出错！");
        }
    }

    @Override
    public R listAddress(Integer uid) {
        try {
            List<Address> addresses = userMapper.listAddress(uid);
            if (addresses.size() == 0){
                return R.FAIL("还没有添加地址！");
            }
            return R.SUCCESS(addresses,"已获取你所有的地址了");
        } catch (Exception e) {
            e.printStackTrace();
            return R.FAIL("数据库出错了");
        }
    }

    @Transactional(isolation = Isolation.READ_UNCOMMITTED)
    @Override
    public R insertAddress(Integer uid,String name, String address,String phone) {
        try {
            int i = userMapper.insertAddress(uid,name, address,phone);
            if (i==0){
                return R.FAIL("数据库出错");
            }
            List<Address> addresses = userMapper.listAddress(uid);
            return R.SUCCESS(addresses,"添加成功");
        } catch (Exception e) {
            e.printStackTrace();
            return R.FAIL("数据库出错");
        }
    }

    @Transactional(isolation = Isolation.READ_UNCOMMITTED)
    @Override
    public R updateAddress(Integer aid,String name, String address, String phone) {
        try {
            int i = userMapper.updateAddress(aid,name, address,phone);
            if (i==0){
                return R.FAIL("修改失败！");
            }
            return R.SUCCESS("修改成功！");
        } catch (Exception e) {
            e.printStackTrace();
            return R.FAIL("数据库出错");
        }
    }

    @Override
    public R deleteAddress(Integer aid) {
        try {
            int i = userMapper.deleteAddress(aid);
            if (i==0){
                return R.FAIL("删除失败！");
            }
            return R.SUCCESS("删除成功！");
        } catch (Exception e) {
            e.printStackTrace();
            return R.FAIL("数据库出错");
        }
    }

    @Override
    public R listUser() {
        try {
            List<User> userList = userMapper.listUser();
            if (userList.size()==0){
                return R.FAIL("没有获取任何用户");
            }
            return R.SUCCESS(userList,"已获取所有用户");
        }catch (Exception e){
            e.printStackTrace();
            return R.FAIL("数据库出错");
        }
    }

    @Override
    public R deleteUser(Integer uid) {
        try {
            int i = userMapper.deleteUser(uid);
            if (i==0){
                return R.FAIL("删除失败！");
            }
            return R.SUCCESS("删除成功！");
        } catch (Exception e) {
            e.printStackTrace();
            return R.FAIL("数据库出错");
        }
    }

    @Override
    public R updateHimg(Integer uid, String himg) {
        try {
            int i = userMapper.updateHimg(uid, himg);
            if (i==0){
                return R.FAIL("修改失败！");
            }
            return R.SUCCESS("修改成功！");
        } catch (Exception e) {
            e.printStackTrace();
            return R.FAIL("数据库出错");
        }
    }
}
