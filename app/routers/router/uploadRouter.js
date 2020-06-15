/*
 * @Description: 商品上传模块
 */
const Router = require('koa-router');
const uploadController = require('../../controllers/uploadController');

let uploadRouter = new Router();

uploadRouter
    .post('/user/upload',uploadController.Upload)

module.exports = uploadRouter;
