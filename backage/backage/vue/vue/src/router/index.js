import Vue from 'vue'
import VueRouter from 'vue-router'
import UserManage from '../views/UserManage.vue'
import MuseumManage from '../views/MuseumManage.vue'
import Manager from '../views/Manager.vue'
import Chart from '../views/Chart.vue'

Vue.use(VueRouter)

// 解决导航重复
const originalPush = VueRouter.prototype.push;
VueRouter.prototype.push = function push(location) {
  return originalPush.call(this, location).catch((err) => err);
};

const routes = [
  {
    path: '/',
    name: 'user',
    component: UserManage
  },
  {
    path: '/museum-manage',
    name: 'museum',
    component: MuseumManage
  },
  {
    path: '/manager',
    name: 'manager',
    component: Manager
  },
  {
    path: '/chart',
    name: 'chart',
    component: Chart
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
