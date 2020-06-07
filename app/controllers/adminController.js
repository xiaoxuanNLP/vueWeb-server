/*
* @Description: 管理员模块控制器
*/
const adminDao = require('../models/dao/adminDao');

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
    GetDiscount: async ctx => {
        let discount = await adminDao.GetDiscount();
        ctx.body = {
            code: 20000,
            data: {
                discount
            }
        }
    },
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
    Getorderlist: async ctx => {
    },
}
