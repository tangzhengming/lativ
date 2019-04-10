import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '../components/HelloWorld.vue'
import List from "../components/list.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/Home',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path: "/",
      redirect:"/Home"
    },
    {
      path: '/List',
      name: 'List',
      component: List
    }
  ]
})
