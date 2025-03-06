<template>
  <div style="height: 100vh;overflow: hidden;display: flex;align-items: center;justify-content: center;background-color: #0f9876">
    <div style="display: flex;background-color: white;width: 50%;border-radius: 5px;overflow: hidden">
      <div style="flex: 1;">
        <img src="../../../../../museum/src/assets/login.png" alt="" style="width: 100%">
      </div>
      <div style="flex: 1;display: flex;align-items: center;justify-content: center">
        <el-form :model="user" style="width: 80%">
          <div style="font-size: 20px;font-weight: bold;text-align: center;margin-bottom: 20px">欢迎登录上沪博物风系统</div>
          <el-form-item prop="username">
            <el-input prefix-icon="el-icon-user" size="medium" placeholder="请输入账号" v-model="user.username"></el-input>
          </el-form-item>
          <el-form-item prop="password">
            <el-input prefix-icon="el-icon-lock" size="medium" show-password placeholder="请输入密码" v-model="user.password"></el-input>
          </el-form-item>
          <el-form-item prop="validCode">
            <div style="display: flex">
              <el-input prefix-icon="el-icon-circle-check" size="medium" style="flex: 1" v-model="user.code"></el-input>
              <div style="flex: 1;height: 36px">
                <valid-code @update:value="getCode"/>
              </div>
            </div>
          </el-form-item>
          <input type="radio" value="option1" name="identity">用户
          <input type="radio" value="option2" name="identity">管理员
          <el-form-item>
            <el-button type="primary" style="width: 100%" @click="login">登 录</el-button>
          </el-form-item>
          <div style="display: flex">
            <div style="flex: 1">还没有账号？请<span style="color: #0f9876;cursor: pointer" @click="$router.push('/register')">注册</span></div>
            <div style="flex: 1;text-align: right"><span style="color: #0f9876;cursor: pointer">忘记密码</span></div>
          </div>
        </el-form>
      </div>
    </div>
  </div>
</template>

<script>
import ValidCode from "@/components/ValidCode";

export default {
  name: "Login",
  components:{
    ValidCode
  },
  data(){
    return {
      code:'', //验证码组件传递过来的code
      user: {
        code:'',  //表单里用户输入的code验证码
        username: '',
        password: ''
      }
    }
  },
  created() {
  },
  methods: {
    getCode(code){
      console.log(code)
      this.code = code
    },
    login() {

    }
  }
}
</script>

<style scoped>

</style>