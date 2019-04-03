import Vue from 'vue'
import App from './App'
import router from './router'
import 'mint-ui/lib/style.css'
Vue.config.productionTip = false

import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'
//配置axios
import axios from 'axios'
//配置跨域访问列
axios.defaults.withCredentials=true
//将axios添加到实例对象里面
Vue.prototype.axios=axios
//将qs转化为字符串格式
import qs from 'qs'
//添加到示例对象中
Vue.prototype.qs=qs
import {Swipe,SwipeItem} from "mint-ui"
Vue.component(Swipe.name,Swipe)
Vue.component(SwipeItem.name,SwipeItem)
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
