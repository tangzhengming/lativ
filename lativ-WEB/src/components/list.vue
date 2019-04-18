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
                <li :class="index==active?'active':''" v-for="(item,index) of classify" :key="index" @click="getClass($event,index)" :data-index="index" :data-class="item">{{item}}</li>
            </ul>
        </div>
        <div class="right">
            <div>
                <img :src="big" class="banner">
                <ul>
                    <li  v-for="(item,index) of img" :key="index" @click.prevent="jump" :data-detail="show[index]" :data-ids="index">
                            <img  :src="item" >
                            <span>{{show[index]}}</span>    
                    </li>
                </ul>
            </div>
        </div>
        <tabbr></tabbr>
        
    </div>
</template>
<script>
import tabbr from './nav.vue'
export default {
    name: 'test-keep-alive',
    components:{tabbr},
    data(){
        return{
            npList:["女装","男装","童装","婴幼儿","运动"], 
            active:0,
            action:0,
            stage:"", //男装女装
            classs:"", //上衣分类
            classify:[],
            img:"",
            big:'',
            show:'',
            list:"",
        }
    },
    methods:{
        getSname(e,index){
            this.active = 0;
            this.classify = [];
            this.action = index;
            this.stage = e.target.innerHTML;
            var url="http://127.0.0.1:3000/classList?title="+this.stage
            this.axios.get(url).then(result=>{
                for(var res of result.data){
                    this.classify.push(res.classify)
                }
                this.big = result.data[0].big;
                this.img = result.data[0].img.split(",");
                this.show = result.data[0].imgshow.split(",");
            })
        },
        getList(){
            var url="http://127.0.0.1:3000/classList"
            this.axios.get(url).then(result=>{
                this.list=result.data;
                for(var res of result.data){
                    this.classify.push(res.classify)
                }
                this.big = result.data[0].big;
                this.img = result.data[0].img.split(",");
                this.show = result.data[0].imgshow.split(",");
                this.stage = this.npList[0]
                this.classs = this.classify[0]
            })
            /*setTimeout(()=>{
                
                console.log(this);
                console.log(this.classs);
                console.log(this.classify[0]);
            },10)  */
        },
        getClass(e,index){
            var i = e.target.dataset.index;
            this.classs = e.currentTarget.dataset.class;
            this.img = "";
            this.show = "";
            this.big = "";
            this.active = index;
            this.img = this.list[i].img.split(",");
            this.show = this.list[i].imgshow.split(",");
            this.big = this.list[i].big;
        },
        jump(e){
            var ids=e.currentTarget.dataset.ids
            var detail=e.currentTarget.dataset.detail;
            this.$router.push({
                name:"details",
                query:{
                    title:this.stage,
                    shows:this.classs,
                    detail:detail,
                    ids:ids
                }
            })
        }
    },
    created(){
        this.getList()
    }
}
</script>
<style scoped>
    *{list-style:none;margin:0;padding:0}
    body{background:#fff;}
    li{
        text-align: center;
    }
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
        text-align:center;
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
    .right ul{
        display:flex;
        flex-flow: row wrap;
    }
    .right ul>li img{
        width:60%;
        margin:1.25rem 20% 0;
    }
    .right ul>li{
        width:32%;
        font-size: .688rem;
        box-sizing: border-box;
    }
    .right ul>li>a{
        color:#999;
        width:100%;
        height:100%;
        display: inline-block;
    }
</style>