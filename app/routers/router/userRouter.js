/*
 * @Description: 用户模块路由
 */
const Router = require('koa-router');
const userController = require('../../controllers/userController');
const adminController = require('../../controllers/adminController');

let userRouter = new Router();

userRouter
  .post('/users/login', userController.Login)
  .post('/users/findUserName', userController.FindUserName)
  .post('/users/register', userController.Register)
    .post('/users/getDiscount',adminController.GetDiscount)
    .post('/',userController.test)
    .get('/',userController.test);

module.exports = userRouter;
