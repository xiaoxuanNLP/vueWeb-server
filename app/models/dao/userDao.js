/*
 * @Description: 用户模块数据持久层
 */
const db = require('./db.js');

module.exports = {
  // 连接数据库根据用户名和密码查询用户信息
  Login: async (userName, password,user_kind) => {
    var sql;
    if(user_kind==='buyer'){
       sql = 'select * from buyers where userName = ? and password = ?';
    }else if(user_kind === 'seller'){
       sql = 'select * from sellers where userName = ? and password = ?';
    }
    return await db.query(sql, [userName, password]);
  },
  // 连接数据库根据用户名查询用户信息
  FindUserName: async (userName,user_kind) => {
    var sql;
    if(user_kind === 'buyer'){
       sql = 'select * from buyers where userName = ?';
    }else if(user_kind === 'seller'){
       sql = 'select * from sellers where userName = ?';
    }
    return await db.query(sql, [userName]);
  },
  // 连接数据库插入用户信息
  Register: async (userName, password,user_kind) => {
    var sql;
    if(user_kind === 'buyer'){
       sql = 'insert into buyers values(null,?,?,null)';
    }else if(user_kind === 'seller'){
       sql = 'insert into sellers values(null,?,?,null)';
    }
    return await db.query(sql, [userName, password]);
  },
    //通过用户id寻找名字
    GetNameById: async (userId,user_kind) => {
      var sql;
      if(user_kind === 'buyer'){
          sql = 'select * from buyers where buyer_id = ? ';
      }else if(user_kind === 'seller'){
          sql = 'select * from sellers where seller_id = ? ';
      }
      return await db.query(sql,[userId]);
    }
};
