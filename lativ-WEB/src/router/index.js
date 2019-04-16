import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '../components/HelloWorld.vue'
import List from "../components/list.vue"
import details from "../components/details.vue"
import login  from "../components/login.vue"
import info from "../components/info.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/Home',
      name: 'HelloWorld',
      component: HelloWorld,
    },
    {
      path: "/",
      redirect:"/Home"
    },
    {
      path: '/List',
      name: 'List',
      component: List,
      meta:{
        KeepAlive:true
      }
    },
    {
      path: '/details',
      name: 'details',
      component:details,
      meta:{
        KeepAlive:true
      }
    },
    {
      path: '/login',
      name: 'login',
      component:login,
    },
    {
      path: '/info',
      name: 'info',
      component:info,
    }
  ]
})
