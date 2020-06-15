/*
 * @Description: 上传模块控制器
 */
const uploadDao = require('../models/dao/uploadDao');
const fs = require('fs');


module.exports = {
    /**
     * 上传物品信息
     * @param {Object} ctx
     */
    Upload: async ctx => {
        let{ name, category,title,desc,price,selling,num,imageURLs} = ctx.request.body;
        if(name.length===0||category.length===0||title.length===0||desc.length===0||price==='0'||selling==='0'||num===0||imageURLs.length===0){
            ctx.body = {
                code: '002',
                msg:'您有未填项'
            };
            return
        }
        let paths = [];
        imageURLs.forEach(function (item,index) {
                let relativePath = "public/imgs/upload/"+name+Date.now()+index+ctx.session.user.user_id;// console.log(path);
                const header = item.url.split(",");
                const data = header[0].split("/");
                const ft = data[1].replace(";base64","");
                relativePath = relativePath+"."+ft;
                const base64 = header[1];
                const dataBuffer = Buffer.alloc(base64.length,base64,'base64');
                fs.writeFile(relativePath,dataBuffer,function (err) {
                    if(err){
                        console.log(err);
                        ctx.body = {
                            code:'002',
                            msg:'上传失败'
                        };
                        return
                    }else {
                        console.log('写入成功');
                    }
                });
                paths.push(relativePath);
            }
        );
        let good_id;
        for(let i=0;i<paths.length;i++){
            if(i===0){
                // console.log(name, category,title,desc,price,selling,num);
                // console.log(typeof (price),typeof (selling),typeof (num))
                const priceNum = Number(price);
                const sellingNum = Number(selling);
                const affect1 = await uploadDao.PutIntoProduct(name, category,title,desc,paths[i],priceNum,sellingNum,num,ctx.session.user.user_id);
                good_id = await uploadDao.GetProductByPic(paths[i]);
                // console.log(good_id);
                // console.log(typeof (good_id));
                const affect2 = await uploadDao.PutIntoPicture(good_id,paths[i]);
            }else{
                const priceNum = Number(price);
                const sellingNum = Number(selling);
                const affect2 = await uploadDao.PutIntoPicture(good_id,paths[i]);
            }
        }
        ctx.body = {
            code: '001'
        }
    }
};
