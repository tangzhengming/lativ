<template>
    <div>
        <div class="input">
            <router-link to="">
                <img src="../../../lativ-node/public/img/index/sousuo.png" class="sousuo">
                <input placeholder="请输入关键字">
            </router-link>
        </div>
        <ul class="sname">
            <li :class="index==action?'active':''"  v-for="(item,index) of npList" :key="index"  @click="getSname($event,index)" >{{item}}</li>
        </ul>
        <div class="left">
            <div class="shang">
                <router-link to="" class="goods">全部商品</router-link>
                <router-link to="" class="goods">新品热销</router-link>
            </div>
            <ul class="xia">
                <li class="active">上身类</li>
                <li>衬衫类</li>
                <li>针织衫</li>
                <li>外套类</li>
                <li>裤&裙装</li>
                <li>家居&内衣</li>
                <li>配件</li>
            </ul>
        </div>
        <div class="right">
            <div>
                <img src="../../../lativ-node/public/img/woman-top/41254_W1_190131_TW.jpg" class="banner">
                <ul>
                    <li>
                        <router-link to="">
                            <img  src="../../../lativ-node/public/img/woman-top/1.jpg" >
                            <span>印花短T</span>
                        </router-link>
                    </li>
                     <li>
                        <router-link to="">
                            <img  src="../../../lativ-node/public/img/woman-top/2.jpg" >
                            <span>印花短T</span>
                        </router-link>
                    </li>
                     <li>
                        <router-link to="">
                            <img  src="../../../lativ-node/public/img/woman-top/3.jpg" >
                            <span>印花短T</span>
                        </router-link>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            npList:["女装","男装","童装","婴儿装","运动"], 
            action:0,
            stage:'',
        }
    },
    methods:{
        getSname(e,index){
            this.action = index;
            this.stage = e.target.innerHTML;
        }
    }
}
</script>
<style lang="">
    *{list-style:none;margin:0;padding:0}
    body{background:#fff;}
    .input{
        width:100%;
        padding:.75rem .75rem .5rem;
        position: relative;
        }
    .input input{
        width:100%;
        height:1.875rem;
        border-radius:3px;
        border:none;
        background-color:#eeeeee;
        font-size:.938rem;
        padding-left:2.75rem;
    } 
    .sousuo{
        position:absolute;
        left:5%;
        top:23%;
        width:26px;
        height:60%;
    } 
    .sname{
        display:flex;
        border-bottom:1px solid #f3f3f3;
    }  
    .sname>li{
        display:inline-block;
        width:20%;
        font-size:.938rem;
        line-height: 31px;
        color:#777;
    }
    .active{
        color:#4d3126;
        border-bottom:2px solid #333; 
    }
    .left{
        width:6.25rem;
        position:fixed;
        left:0;
        border-right:1px solid #f3f3f3;
        font-size:.813rem;
        line-height:1.8rem;
        height:535px;
    }
    .goods,.xia>li{
        display: block;
        color:#777;
        margin:.688rem 0; 
    }
    .shang{
        border-bottom:1px solid #f3f3f3;
    }
    .goods:first-child{
        margin:1rem 0 0.625rem;
    }
    .xia>li.active{
        border:none;
        border-left:3px solid #4d3126;
        color:#4d3126;
        font-size:.875rem; 
    }
    .right{
        padding:.875rem .75rem 0 1rem;
        position:fixed;
        right:0;
        width:73.5%;
        height:535px;
    }
    .banner{
        width:100%;
        border-radius:.3rem;
    }
    .right ul>li img{
        width:60%;
        margin:1.25rem 20% 0;
    }
    .right ul>li{
        width:32%;
        display:inline-block;
        font-size: .688rem;
        box-sizing: border-box;
    }
    .right ul>li>a{
        color:#999;
    }
</style>