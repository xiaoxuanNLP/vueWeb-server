/*
 * @Description: 订单模块路由
 */
const Router = require('koa-router');
const orderController = require('../../controllers/orderController')

let orderRouter = new Router();

orderRouter
  .post('/user/order/getOrder', orderController.GetOrder)
  .post('/user/order/addOrder', orderController.AddOrder)
    .post('/user/order/sureOrder',orderController.SureOrder)

module.exports = orderRouter;
