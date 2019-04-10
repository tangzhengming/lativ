<template>
   <div>
    <div style="height:88px;">
    <div class="tou">
        <div class="header">
            <div>
                <img src="../../../lativ-node/public/img/index/icon_logo.svg" id="lativ">
            </div>
            <div class="input">
                <router-link to="">
                    <img src="../../../lativ-node/public/img/index/sousuo.png" class="sousuo">
                    <input placeholder="输入关键字">
                </router-link>
            </div>
            <div class="message"><img src="../../../lativ-node/public/img/index/icon_message.svg" id="message"><span>消息</span></div>
        </div>
        <div class="bar" >
            <router-link to="" class="active" @click.native="classitem">首页</router-link>
            <router-link to="" @click.native="classitem">限时特惠</router-link>
            <router-link to="" @click.native="classitem">女装</router-link>
            <router-link to="" @click.native="classitem">男装</router-link>
            <router-link to="" @click.native="classitem">童装 </router-link>
            <router-link to="" @click.native="classitem">婴儿装</router-link>
            <router-link to="" @click.native="classitem">运动</router-link>
        </div>
    </div>
    </div>
    <mt-swipe>
        <mt-swipe-item v-for="item of rows" :key="item.id">
            <router-link to="">
                <img :src="item.img_url">
            </router-link>
        </mt-swipe-item>
    </mt-swipe>
    <div class="details"> 
        <ul class="the">
            <li><img src="../../../lativ-node/public/img/index/181113_01_TW.gif"></li>
            <li><img src="../../../lativ-node/public/img/index/181113_02_TW.gif"></li>
            <li><img src="../../../lativ-node/public/img/index/181113_03_TW.gif"></li>
            <li><img src="../../../lativ-node/public/img/index/181113_04_TW.gif"></li>
        </ul>
        <ul class="detail">
            <li v-for="item of list" :key="item.id">
                <router-link to="">
                    <img :src="item.img_url">
                </router-link>
            </li>
        </ul>
    </div>
    <tabbr></tabbr>
  </div> 
</template>
<script>
import tabbr from './nav.vue';
export default {
  components:{tabbr},
  data(){
      return{
          rows:[],
          list:[]
      }
  },
  methods:{
      classitem(e){
          var bar = e.currentTarget.parentElement.children;
          for(var i = 0;i<bar.length;i++){
              bar[i].className = "";
          }
          e.target.className="active";
      },
      swipt(){
          var url="http://127.0.0.1:3000/Swipt"
          this.axios.get(url).then(result=>{
             this.rows=result.data.data
          })
      },
      index(){
          var url="http://127.0.0.1:3000/index"
          this.axios.get(url).then(result=>{
              console.log(result.data);
              this.list=result.data
          })
      }
  },
  created(){
      this.swipt();
      this.index();
  }
}
</script>
<style scoped>
*{padding:0;margin:0;list-style: none}
.tou{
    width:100%;
    position:fixed;
    z-index:10;
}
.header{
    width:100%;
    height:54px;
    display:flex;
    justify-content: space-around;
    align-items: center;
    background: #fff;
}

#lativ{height:1.875rem}
input{ display:inline-block}
.message{
    display:flex;
    flex-direction: column;
    font-size:.625rem;
    width:1.5rem;
    text-align:center;
    color:#999;
}
#message{height:1.18rem}
.message>span{
    display:inline-block;
    height:1rem;
}
.input{
    width:67%;
    position: relative;
}
input{
    border:0;
    width:100%;
    background: #eee;
    height:30px;
    padding-left:2.75rem;
    border-radius:.188rem;
    border:1px solid #fff;
    font-size:.938rem;
}
.sousuo{
    position:absolute;
    left:6%;
    top:23%;
    width:26px;
    height:60%;
}
.bar::-webkit-scrollbar {display:none}
.bar{
    line-height: 2rem;
    background-color:#fff;
    white-space: nowrap;
    overflow-Y:scroll;
}

.bar>a{
    color:#777;
    display:inline-block;
    height:100%;
    padding:0 1.1rem;
    font-size:.938rem;
}
.active{
    color:#4d3126;
    border-bottom:2px solid #333;
}
.mint-swipe,.mint-swipe-items-wrap,.mint-swipe-items-wrap img{
    height:177px;
}
.details{
    background-color:#fff;
}
.the{
    display:flex;
    width:100%;
    margin-bottom:.2rem;
}
.the li{
    width:25%;
}
.the li img{
    width: 100%;
}
.detail{display: flex;flex-wrap:wrap;margin-bottom:3.5rem;}
.detail li{
    width:50%;
    margin-bottom:.625rem;
}
.detail li:nth-child(odd){
    padding-left:.75rem;
    padding-right:.375rem;
}
.detail li:nth-child(even){
    padding-right:.75rem;
    padding-left:.375rem;
}
.detail img{
    width:100%;
}
</style>