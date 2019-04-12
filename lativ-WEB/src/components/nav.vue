<template>
    <div>
     <nav class="mui-bar mui-bar-tab">
        <router-link class="mui-tab-item" :class="active==1?'mui-active':''" to="/">
            <span class="mui-icon mui-icon-home"  @click="add(1)"></span>
            <span class="mui-tab-label">首页</span>
        </router-link>
       <router-link class="mui-tab-item" :class="active==2?'mui-active':''" to="/list">
            <span class="mui-icon mui-icon mui-icon-bars"  @click="add(2)"></span>
            <span class="mui-tab-label">分类</span>
        </router-link>
        <router-link class="mui-tab-item" :class="active==3?'mui-active':''" to="/list">
            <span class="mui-icon mui-icon-extra mui-icon-extra-cart"  @click="add(3)"><span class="mui-badge">0</span></span>
            <span class="mui-tab-label">购物车</span>
        </router-link>
        <router-link class="mui-tab-item" :class="active==4?'mui-active':''" to="/list">
            <span class="mui-icon mui-icon-person"  @click="add(4)"></span>
            <span class="mui-tab-label">个人</span>
        </router-link>
    </nav>
</div>
</template>
<script>
export default {
    data(){
        return{
            active:"1"
        }
    },
    methods:{
        add(index){
            this.active = index;     
        }
    },
}
</script>
<style lang="">
</style>