<template>
    <div>
        <div class="fliex">
            <div class="titleTou">
                    <router-link to="/list">
                        <img src="../img/jiantou.png" class="back">
                    </router-link>
                    <span>上衣类</span>
                    <router-link to="">
                        <img src="../img/geren.png" class="geren">
                    </router-link>
            </div>
            <ul class="title1">
                <li class="active">印花短T</li>
                <li>印花长T</li>
                <li>短袖背心</li>
                <li>雪纺轻柔</li>
                <li>印花短T</li>
                <li>印花短T</li>
                <li>印花短T</li>
            </ul>
        </div>
        <div class="bodys">
            <div>印花短T</div>
            <ul>
                <li>
                    <img src="../../../lativ-node/public/img/top-duanT/small.jpg" alt="">
                    <ul class="size">
                        <li>S</li>
                        <li>M</li>
                        <li>L</li>
                        <li>M</li>
                    </ul>
                    <div class="btm">迪士尼系列口袋寬版印花T恤-53-女</div>
                     <div class="price">¥223</div>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            title:this.$route.params.title,
            shows:this.$route.params.shows,
            ids:this.$route.params.ids,
            detail:this.$route.params.detail
        }
    },
    methods: {
        getDetails(){
            var url="http://127.0.0.1:3000/getDetails?title="+this.title+"&shows="+this.shows+"&detail="+this.detail
            this.axios.get(url).then(result=>{
                console.log(result)
            })
        },
        getshow(){
            var url="http://127.0.0.1:3000/getShow?title="+this.title+"&shows="+this.shows
            this.axios.get(url).then(result=>{
                console.log(result)
            })
        }
    },
    created() {
        this.getshow()
        this.getDetails()
    },
}
</script>
<style scoped>
*{margin:0;padding:0;list-style: none;background:#fff}
.fliex{
    width:100%;
    position:fixed;
    z-index:10;
    }
.titleTou{
    padding:.375rem .75rem;
    height:2.375rem;
    line-height: 3.125rem;
    box-sizing: content-box;
    background:#fff;
    display:flex;
    align-items: center;
}
.back{
    width:24px;
    height:24px;
}
.titleTou>a{
    display:inline-block;
    height:100%;
}
.titleTou>span{
    text-align:center;
    display:inline-block;
    width:85%;
    height:100%;
    font-size:1rem;
    color:#555;
    line-height: 2.375rem;
}
.title1::-webkit-scrollbar {display:none}
.title1{
    display:flex;
    overflow-Y:scroll;
    white-space: nowrap;
    line-height:2rem;
    box-sizing: border-box;
    border-bottom:1px solid #f3f3f3;
}
.title1>li{
     color:#777;
    display:inline-block;
    height:100%;
    padding:0 1.1rem;
    font-size:.978rem;
}
.active{
    border-bottom:3px solid #4d3126;
    color:#4d3126;
}
.bodys{
    padding-top:86px;
    background: #fff;
}
.bodys>div{
    padding-top:1.813rem;
    text-align:center;
    font-size:1rem;
    color:#777;
}
.bodys>ul{
    display:flex;
    flex-flow: row wrap;
}
.bodys>ul>li{
    width:45%;
    margin-top:1.375rem;
    margin-left:.75rem;
    margin-right:.375rem;
}
.bodys>ul>li>img{
    width:80%;
    display: inline-block;
    text-align: center;
}
.size{
    display:flex;
    flex-flow: row wrap;
    justify-content: center;
    width:9.063rem;
    margin:.625rem auto;
}
.size>li{
    box-sizing: content-box;
    display:inline-block;
    width:1.563rem;
    height:.875rem;
    background: #f6f6f6;
    font-size:.75rem;
    margin:.25rem 0  0;
    color:#575757;
    line-height: .875rem;
}
.btm{
    font-size:.75rem;
    overflow: hidden;
    width:100%;
    white-space: nowrap;
    text-overflow: ellipsis;
    margin-top:.625rem;
    color:#555;
}
.price{
    margin-top:.5rem;
    font-size:.875rem;
    color:#666;
}
</style>