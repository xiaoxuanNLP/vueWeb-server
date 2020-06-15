/*
 * @Description: 上传商品模块数据持久层
 */
const db = require('./db.js');

module.exports = {
    PutIntoProduct: async(product_name,category_id,product_title,product_intro,product_picture,product_price,product_selling_price,product_num,seller_id)=>{
        const sql = "insert into product values (null,?,?,?,?,?,?,?,?,0,?)";
        return await db.query(sql,[product_name,category_id,product_title,product_intro,product_picture,product_price,product_selling_price,product_num,seller_id]);
    },
    GetProductByPic: async (product_picture) =>{
        const sql = "select product_id from product where product_picture = ?";
        const product = await db.query(sql,[product_picture]);
        return product[0].product_id
    },
    PutIntoPicture: async (product_id,product_picture)=>{
        const sql = "insert into product_picture values (null,?,?,null)";
        return await db.query(sql,[product_id,product_picture]);
    }
};
