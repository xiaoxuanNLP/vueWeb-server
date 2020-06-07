/*
 * @Description: 管理员路由模块
 */

const Router = require('koa-router');
const adminController = require('../../controllers/adminController');

let adminRouter = new Router();

adminRouter
    .post('/admin/login',adminController.Login)
    .post('/admin/getorderlist',adminController.Getorderlist)
    .post('/admin/cancelorder',adminController.Cancelorder)
    .post('/admin/getdiscount',adminController.GetDiscount)
    // .post('/admin/')
