//1.引入二个模块 mysql express
const mysql=require("mysql");
const express=require("express");
//引入cors
const cors=require("cors");
//引入post转译插件
const bodyParser=require("body-parser")
//加载session模块
const session=require("express-session");
//2.创建连接池
var pool=mysql.createPool({
    host:'127.0.0.1',
    user:'root',
    password:'',
    database:'lativ',
    connectionLimit:20
})
//3.创建express对象0-
var app=express();
//3.1配置允许访问列添加跨域列
app.use(cors({
    origin:["http://127.0.0.1:8080",
    "http://localhost:8080"],
    credentials:true
}));
//3.配置session模块
app.use(session({
    secret:"128位随机字符串",
    resave:false,
    saveUninitialized:true,
    cookie:{
        maxAge:1000*60*60
    }
}))
app.use(bodyParser.urlencoded({
    extended:false
}))
//4.为express对象绑定监听端口 3000
app.listen(3000);
//挂载静态资源
app.use(express.static("public"));

app.get("/Swipt",(req,res)=>{
    var row=[
        {id:1,img_url:"http://127.0.0.1:3000/img/index/1.jpg"},
        {id:2,img_url:"http://127.0.0.1:3000/img/index/2.jpg"},
        {id:3,img_url:"http://127.0.0.1:3000/img/index/3.jpg"},
        {id:4,img_url:"http://127.0.0.1:3000/img/index/4.jpg"},
        {id:5,img_url:"http://127.0.0.1:3000/img/index/5.jpg"},
        {id:6,img_url:"http://127.0.0.1:3000/img/index/6.jpg"},
        {id:7,img_url:"http://127.0.0.1:3000/img/index/7.jpg"}
    ];
    res.send({code:1,data:row})
})
app.get("/index",(req,res)=>{
    var sql="SELECT * FROM indexs";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
       res.send(result)
    })
})
app.get("/classList",(req,res)=>{
    var title = req.query.title;
    if(!title){title="女装"}
    var sql = "SELECT * FROM list WHERE title = ?";
    pool.query(sql,[title],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
app.get("/getDetails",(req,res)=>{
    var title = req.query.title;
    var shows = req.query.detail;
    var classify = req.query.shows;
    var sql = "SELECT * from details WHERE title=? AND classify=? AND shows=?"
    pool.query(sql,[title,classify,shows],(err,result)=>{
        if(err) throw err;  
        res.send(result)
    })
})
app.get("/getShow",(req,res)=>{
    var title = req.query.title;
    var classify = req.query.shows;
    var sql1 = "SELECT imgshow FROM list WHERE title=? AND classify=?";
        pool.query(sql1,[title,classify],(err,result)=>{
            if(err) throw err;
            res.send(result)
        })
})
app.get("/login",(req,res)=>{
    var uname = req.query.uname;
    var puwd = req.query.puwd;
    var sql="SELECT uid FROM login WHERE uname=? AND puwd=?";
    pool.query(sql,[uname,puwd],(err,result)=>{
        if(err)throw err;
        if(result ==0){
            res.send({code:-1,msg:"账户名密码错误"})
        }else{
            var uid=result[0].id;
            req.session.uid=uid;
            res.send({code:1,msg:"登录成功"})
        }
    })
})
app.get("/details",(req,res)=>{
    var id = req.query.id;
    var sql = "SELECT * FROM details WHERE id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})