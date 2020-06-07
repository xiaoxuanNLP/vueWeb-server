/*
 * @Description: 商品模块数据持久层
 */
const db = require('./db.js');

module.exports = {
  //根据卖家id得到买家昵称
  GetSellerName : async (seller_id)=>{
    const sql = "select userName from sellers where seller_id = ?";
    const seller = await db.query(sql,[seller_id]);
    return seller[0].userName;
  },
  //根据产品id得到卖家id
  GetSellerID : async (product_id)=>{
    const sql = "select seller_id from product where product_id = ?";
    const seller = await db.query(sql,[product_id])
    return seller[0].seller_id;
  },
  // 连接数据库获取商品分类
  GetCategory: async () => {
    const sql = "select * from category";
    return await db.query(sql, []);
  },
  // 连接数据库根据商品分类名称获取分类id
  GetCategoryId: async (categoryName) => {
    const sql = "select * from category where category_name = ?";
    const category = await db.query(sql, [categoryName]);
    return category[0].category_id;
  },
  // 连接数据库,根据商品分类id获取首页展示的商品信息
  GetPromoProduct: async (categoryID) => {
    const sql = "select * from product where category_id = ? order by product_sales desc limit 7";
    return await db.query(sql, categoryID);
  },
  // 连接数据库,分页获取所有的商品信息
  GetAllProduct: async (offset = 0, rows = 0) => {
    let sql = "select * from product ";
    if (rows != 0) {
      sql += "limit " + offset + "," + rows;
    }
    return await db.query(sql, []);
  },
  // 连接数据库,根据商品分类id,分页获取商品信息
  GetProductByCategory: async (categoryID, offset = 0, rows = 0) => {
    let sql = "select * from product where category_id = ? ";

    for (let i = 0; i < categoryID.length - 1; i++) {
      sql += "or category_id = ? ";
    }
    if (rows != 0) {
      sql += "order by product_sales desc limit " + offset + "," + rows;
    }

    return await db.query(sql, categoryID);
  },
  // 连接数据库,根据搜索条件,分页获取商品信息
  GetProductBySearch: async (search, offset = 0, rows = 0) => {
    let sql = `select * from product where product_name like "%${ search }%" or product_title like "%${ search }%" or product_intro like "%${ search }%"`;
    console.log(sql);
    if (rows != 0) {
      sql += "order by product_sales desc limit " + offset + "," + rows;
    }

    return await db.query(sql, []);
  },
  // 连接数据库,根据商品id,获取商品详细信息
  GetProductById: async (id) => {
    const sql = 'select * from product where product_id = ?';
    return await db.query(sql, id);
  },
  // 连接数据库,根据商品id,获取商品图片
  GetDetailsPicture: async (productID) => {
    const sql = "select * from product_picture where product_id = ? ";
    return await db.query(sql, productID);
  },
  //连接数据库,根据卖家id,获取商品详细信息
  GetProductBySellerID: async (seller_id,offset = 0,rows = 0) => {
    let sql = 'select * from product where seller_id = ? ';
    if(rows!==0){
      sql += "order by product_sales desc limit " + offset + "," + rows;
    }
    console.log(sql);
    return await db.query(sql,[seller_id]);
  },
  //修改商品标题
  ChangeProductTitle: async (productID,title) =>{
    const sql = "update product set product_name = ? where product_id = ? ";
    return await db.query(sql,[title,productID]);
  },
  //修改商品介绍
  ChangeProductIntro: async (productID,intro) => {
    const sql = "update product set product_intro = ? where product_id = ? ";
    return await db.query(sql,[intro,productID]);
  },
  //修改商品卖价
  ChangeSellPrice: async (productID,sellPrice) => {
    const sql = "update product set product_selling_price = ? where product_id = ? ";
    return await db.query(sql,[sellPrice,productID])
  },
  //修改商品定价
  ChangePrice: async (productID,price) => {
    const sql = "update product set product_price = ? where product_id = ? ";
    return await db.query(sql,[price,productID])
  }
};
