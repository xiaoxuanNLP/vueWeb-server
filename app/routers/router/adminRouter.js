/*
 * @Description: 管理员路由模块
 */

const Router = require('koa-router');
const adminController = require('../../controllers/adminController');

let adminRouter = new Router();

adminRouter
    .post('/api/admin/login',adminController.Login)
    .post('/api/admin/modifydiscount',adminController.modifyDiscount)
    .get('/api/admin/getdiscount',adminController.GetDiscount)
    .get('/api/admin/getorderlist',adminController.GetAllOrder)
    .post('/api/admin/cancelorder',adminController.Cancelorder)
    // .post('/admin/')

module.exports = adminRouter;
