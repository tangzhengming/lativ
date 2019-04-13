<template>
    <div>
        <div class="title">
            <img src="../img/X.png" @click="back">
            <div>
                <span>注册</span>
                <span class="active">登入</span>
            </div>  
        </div>
        <div class="login">
            <input type="text" v-model="input.uname" placeholder="请输入Email/手机号码">
            <input type="text" v-model="input.puwd" placeholder="请输入密码(6-20英文数字)">
            <div  :class="[this.active?'active1':'']" class="button" @click="login1">登入</div>
            <div>忘记密码</div>
        </div>
    </div>
</template>
<script>
import {Toast} from 'mint-ui'
export default {
    data(){
        return{
            input:{
                uname:"",
                puwd:""
            },
            active:false
        }
    },
    watch: {
        input:{
            handler(val,oldVal){
                if(val.uname !=""&&val.puwd !=""){
                    this.active = true
                }else{
                    this.active=false
                }
            },
            deep:true
        }
    },
    methods:{
        back(){
            this.$router.go(-1);
        },
        login1(){
            if(!this.active){
                return;
            }
            var u=this.input.uname;
            var p=this.input.puwd;
            var reg=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
            if(!reg.test(u)){
                Toast("请输入有效的账户格式");
                return;
            }
            var url="http://127.0.0.1:3000/login?uname="+u+"&puwd="+p;
            this.axios.get(url).then(result=>{
                Toast(result.data.msg)
            })
        }
    }
}
</script>
<style scoped>
body,html{background: #ffffff;}
*{margin:0;padding:0}
.title{
    padding:.375rem .75rem;
    border-bottom: 1px solid #f3f3f3;
    position:relative;
    height:2.375rem;
    box-sizing: content-box;
}
.title>img{
    position:absolute;
    top:30%;
    width:24px;
    height:24px;
    vertical-align: middle;
}
.title div{
    display:inline-block;
    position:absolute;
    left:25%;
    width:auto;
    white-space: nowrap;
}
.title span{
    display:inline-block;
    padding:.75rem 0;
    text-align: center;
    width:6rem;
    font-size:.938rem;
}
.active{
    border-bottom:3px solid #4d3126;
    color:#4d3126;
}
.login{
    padding:3.125rem .938rem 0;
    width:100%;
}
.login input{
    border:none;
    width:100%;
    border-bottom:1px solid #f3f3f3;
    font-size:.875rem;
    height:3rem;
    padding:0;
    margin-bottom:1.5rem;
    text-indent: .5rem;
}
.button{
    width:100%;
    font-size:14px;
    border-radius: 4px;
    border:none;
    background-color:#ccc;
    height:2.5rem;
    text-align: center;
    color:#ffffff;
    line-height: 2.5rem;
    vertical-align: middle;
    margin-bottom:1rem;
}

.login>div:last-child{
    font-size:13px;
    color:#999;
    text-align: right;
}
.active1{
    background-color:#4d3126;
}
</style>

