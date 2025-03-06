import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import UserView from '../views/UserView.vue'
import Favorites from '../views/Favorites.vue'
import BrowsingHistory from '../views/BrowsingHistory.vue'
import UserLogin from '../views/UserLogin.vue'
import Register from '../views/Register.vue'


Vue.use(VueRouter)

const routes = [
    {
        path: '/',
        name: 'home',
        component: HomeView
    },
    {
        path: '/about',
        name: 'about',
        // route level code-splitting
        // this generates a separate chunk (about.[hash].js) for this route
        // which is lazy-loaded when the route is visited.
        component: () => import(/* webpackChunkName: "about" */ '../views/AboutView1.vue')
    },
    {
        path: '/user',
        name: 'user',
        component: UserView
    },
    {
        path: '/favorites',
        name: 'favorites',
        component: Favorites
    },
    {
        path: '/browsinghistory',
        name: 'browsinghistory',
        component: BrowsingHistory
    },
    {
        path: '/userlogin',
        name: 'userlogin',
        component: UserLogin
    },
    {
        path: '/register',
        name: 'register',
        component: Register
    }
]

const router = new VueRouter({
    mode: 'history',
    base: process.env.BASE_URL,
    routes
})
//
// router.beforeEach((to, from, next) => {
//     if (to.path === from.path) {
//         next(false)
//     } else {
//         next()
//     }
// })

export default router
