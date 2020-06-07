/*
* @Description: 管理员模块控制器
*/
const adminDao = require('../models/dao/adminDao');
const orderDao = require('../models/dao/orderDao');
const userDao = require('../models/dao/userDao');
const productDao = require('../models/dao/productDao');

module.exports = {
    /**
     * 管理员登陆
     * @param{Object} ctx
     */
    Login: async ctx => {
        let {username, password} = ctx.request.body;
        let user = await adminDao.Login(username, password);
        if (user.length === 0) {
            ctx.body = {
                code: 30000,
                msg: '密码错误'
            }
        } else {
            ctx.set('X-Token', 'admin')
            ctx.body = {
                code: 20000,
                data: {
                    token: 'admin'
                }
            }
        }
    },
    /**
     * 管理员获得折扣
     * @param{Object} ctx
     */
    GetDiscount: async ctx => {
        let discount = await adminDao.GetDiscount();
        ctx.body = {
            code: 20000,
            data: {
                discount
            }
        }
    },
    /**
     * 管理员修改折扣
     * @param ctx
     */
    modifyDiscount: async ctx => {
        const {discount} = ctx.request.body;
        try {
            const result = await adminDao.ModifyDiscount(discount);
            if (result.affectedRows === 1) {
                ctx.body = {
                    code: 20000,
                };
            } else {
                ctx.body = {
                    code: 10000,
                    data: {
                        discount
                    },
                    msg: "修改失败"
                }
            }

        } catch (e) {
            ctx.body = {
                code: 10000,
                data: {
                    discount
                },
                msg: "修改失败"
            }
        }
    },
    /**
     * 获得列表信息
     * @param ctx
     * @constructor
     */
    /**
     * 获得所有订单信息
     */
    GetAllOrder: async  (ctx) =>{
        let allOrder = await orderDao.GetAllOrder();

        let returnData = [];
        for(let i=0;i<allOrder.length;i++){
            let order = allOrder[i];
            order.id = i;
            const buyer = await userDao.GetNameById(order.buyer_id,'buyer');
            const seller = await userDao.GetNameById(order.seller_id,'seller');
            const product = await productDao.GetProductById(order.product_id);
            order.buyerName = buyer[0].userName;
            order.sellerName = seller[0].userName;
            order.product_name = product[0].product_name;
            returnData.push(order);
        }
        ctx.body = {
            code: 20000,
            data: returnData
        }
    },
    Cancelorder: async (ctx) =>{
        let { id } = ctx.request.body;
        const order = await adminDao.Cancelorder(id);
        ctx.body = {
            code:20000
        }
    }
};
