/*
 *  @Description: 管理员模块数据持久层
 */

const db = require('./db');

module.exports = {
    //管理员登陆验证
    Login: async (userName, password) => {
        const sql = 'select * from admins where userName = ? and password = ?';
        return await db.query(sql, [userName, password]);
    },
    //管理员删除订单
    Cancelorder: async (order_id) => {
        const sql = 'delete from orders where order_id = ? ';
        return await db.query(sql, [order_id]);
    },
    //获得折扣信息
    GetDiscount: async () => {
        const sql = 'select dis from discount where id = 1';
        const discount = await db.query(sql, []);
        return discount[0].dis;
    },
    //管理员设置统一折扣
    ModifyDiscount: async (dis) => {
        const sql = 'update  discount set dis = ? where id = 1';
        return await db.query(sql, [dis]);
    }
}
