/*
 * @Description: 订单模块数据持久层
 */
const db = require('./db.js');

module.exports = {
  // 连接数据库获取所有的订单id
  GetOrderGroup: async (user_id,user_kind) => {
    let sql;
    if(user_kind==='buyer'){
      sql = 'select order_id from orders where buyer_id = ? group by order_id ';
    }else if(user_kind ==='seller'){
      sql = 'select order_id from orders where seller_id = ? group by order_id ';
    }
    return await db.query(sql, user_id);
  },
  // 连接数据库获取所有的订单详细信息
  GetOrder: async (buyer_id) => {
    let sql = 'select * from orders where buyer_id =? order by order_time desc';
    return await db.query(sql, buyer_id);
  },
  // 连接数据库插入订单信息
  AddOrder: async (length, data) => {
    let sql = 'insert into orders values(null,?,?,?,?,?,?,?,?)';
    for (let i = 0; i < length - 1; i++) {
      sql += ",(null,?,?,?,?,?,?,?,?)"
    }

    return await db.query(sql, data);
  }
}
