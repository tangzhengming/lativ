<template>
    <div>
        <mt-swipe :auto="0" :show-indicators="false" >
            <mt-swipe-item>
                <img src="../../../lativ-node/public/img/1/1.jpg" >
            </mt-swipe-item>
            <mt-swipe-item>
                <img src="../../../lativ-node/public/img/1/2.jpg" >
            </mt-swipe-item>
            <mt-swipe-item>
                <img src="../../../lativ-node/public/img/1/3.jpg" >
            </mt-swipe-item>
        </mt-swipe>
        <div class="title">
            <span>迪士尼系列寬版印花T恤-55-女</span>
            <span>¥229</span>
        </div>
        <div class="grid"></div>
        <div class="other">
            <div class="tia">
                <div class="tip">限时</div>
                 活力一夏．3件75折起 
            </div>
            <div class="right">
                <img src="../img/icon_info_size.png" alt="">
                <img src="../img/icon_share.png" alt="">
            </div>
        </div>
        <div class="service">
            <img src="../img/icon_serviceV.svg">
             超商取貨付款．滿千免運 
        </div>
        <div class="grid"></div>
        <div class="assess">商品评价( 0 )</div>
        <div class="button">
            <router-link to="">
                <img src="../img/主页.png" alt="">
            </router-link>
            <router-link to="">
                <img src="../img/shoucang.png" alt="">
            </router-link >
            <router-link to="">
                <img src="../img/shopping.png" alt="">
            </router-link>
            <div class="add" @click="add">加入购物车</div>
            <div>搭配购</div>
        </div>
        <div class="app-info"  v-show="isbuy">
            <div class="smallImg">
                <img src="../../../lativ-node/public/img/1/small.jpg" alt="">
            </div>
            <img src="../img/X.png" class="x" @click="x">
            <div class="info1">
                <div class="price">
                    <span>¥223</span>
                </div>
                <div class="ti">熱銷推薦．3件75折起</div>
                <div class="ti">已選擇：褐色</div>
            </div>
            <div class="color">
                <div>颜色</div>
                <div><img src="../../../lativ-node/public/img/color/HE.jpg"></div>
            </div>
            <div class="size">
                <div>尺寸
                    <span>查看材质尺寸</span>
                </div>
                <ul>
                    <li>S</li>
                    <li>M</li>
                    <li>L</li>
                    <li>XL</li>
                </ul>
            </div>
            <div class="number">
                购买数量
                <div class="zone">
                    <div class="cut">
                        <img src="../img/减号.png" >
                    </div>
                    <div class="num">1</div>
                    <div class="zengjia">
                        <img src="../img/加号.png" >
                    </div>
                </div>
            </div>
            <div class="buy">
                确定
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            isbuy:false
        }
    },
    methods:{
        add(){
            this.isbuy=true;
        },
        x(){
            this.isbuy=false;
        }
    }
}
</script>
<style scoped>
*{padding:0;margin:0;list-style: none}
.mint-swipe,.mint-swipe-items-wrap,.mint-swipe-items-wrap img{
    width:100%;
    height:573px;
}
.title,.other{
    padding:0 1rem;
    line-height: 2.75rem;
    color:#666;
    display:flex;
    justify-content: space-between;
    font-size:.875rem;
}
.grid{
    height:.5rem;
    background:#eee;
}
.other{
    height:3.125rem;
    display: flex;
    align-items: center;
    justify-content:space-between;
    border-bottom: 1px solid #e7e7e7;
}
.tia{
    align-items: center;
    height:1rem;
    line-height: 1rem;
    font-size:.938rem;
}
.tip{
    display: inline-block;
    background-color:#c3a789;
    height:100%;
    padding:0 .2rem;
    font-size:.625rem;
    color:#fff;
    margin-right:.5rem;
}
.right img{
    width:1.75rem;
    vertical-align:middle;
}
.service,.assess{
    height:2.813rem;
    line-height: 2.813rem;
    color:#777;
    font-size:.625rem;
    padding-left:1rem;
}
.service img{
    width:.625rem;
    
}
.assess{
    font-size: .875rem;
    margin-bottom:50px;
}
.button{
    width:100%;
    height:3.125rem;
    position:fixed;
    bottom:0;
    background-color:#ffffff;
}
.button a{
     position:relative;
    display: block;
    float:left;
   width:15%;
   border-top:2px solid #f3f3f3;
   height:3.125rem;
}
.button a>img{
    width:1.5rem;
    height:1.5rem;
    margin:.8125rem 1rem;
    
}
.button a:nth-child(2)::before,.button a:nth-child(3)::before{
    content:"";
    position:absolute;
    top:25%;
    width:1px;
    height:50%;
    background: #e8e8e8;
}
.button div{
    display: flex;
    float: left;
    width:27.4%;
    height:100%;
    color:#ffffff;
    box-sizing: border-box;
    font-size:.875rem;
    justify-content: center;
    align-items: center;
}
.add{
    background-color:#4d3126
}
.button div:last-child{
    background:#5c463d;
}
.app-info{
    padding:.625rem .625rem 3.750rem .625rem;
    position:fixed;
    bottom:0;
    z-index:99;
    background:#ffffff;
    width:100%;
    color:#5c5c5c;
}
.smallImg img{
    padding-left:.2rem;
    width:7.125rem;
    height:7.125rem;
}
.smallImg{
    float: left;
    width:7.5rem;
    height:7.5rem;
    border:1px solid #f3f3f3;
    border-radius:.5rem;;
    margin-top:-1.75rem;
    margin-left:.313rem;
    background:#ffffff;
}
.x{
    float:right;
    width:1.125rem;
    height:1.125rem;
}
.info1{
    padding-left:.875rem;
    float:left;
    width:60%;
}
.price{
    color:#b61d22;
    font-size:1.25rem;
    margin-bottom:.5rem;
}
.ti{
    color:#333;
    font-size:.813rem;
    line-height:1.375rem
}
.color,.size{
    clear: both;
    padding:.5rem 0 0 .313rem;
}
.color div:first-child,.size div:first-child{
    margin:.188rem 0 .75rem;
    font-size:.875rem;
    color:#000;
}
.color div:last-child>img{
    width:1.375rem;
    height:1.375rem;
    padding:.2rem;
    border:1px solid #999;
    box-sizing: content-box;
    margin: 0 .6125rem .6125rem 0;
}
.size div>span{
    float:right;
    color:#4d3126;
}
.size>ul{
    display:flex;
}
.size>ul>li{
    padding:.375rem .813rem;
    background: #f6f6f6;
    font-size:.75rem;
    margin: 0 1rem 1rem 0;
}
.number{
    height:2.375rem;
    line-height:2.375rem;
    padding:.625rem .313rem .25rem;
    box-sizing: content-box;
}
.zone{
    float:right;
    display:flex;
}
.zone img{
    width:1.4rem;
    height:1.4rem;
    position:absolute;
    top:18%;
    left:15%;
}
.zone div{
    width:2.125rem;
    height:2.125rem;
    background:#f6f6f6;
    text-align: center;
    position:relative;
    vertical-align: middle;
}
.buy{
    position:absolute;
    bottom:0;
    line-height:3.125rem;
    background-color:#4d3126;
    width:100%;
    margin-left:-.625rem;
    color:#fff;
    text-align:center;
}
.zone div:nth-child(2){
    width:3rem;
}
</style>
