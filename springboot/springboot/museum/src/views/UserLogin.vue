<template>
  <div class="userlogin">
    <div
        style="height: 100vh;overflow: hidden;display: flex;align-items: center;justify-content: center;background-color: #0f9876">
      <div style="display: flex;background-color: white;width: 50%;border-radius: 5px;overflow: hidden">
        <div style="flex: 1;">
          <img src="@/assets/login.png" alt="" style="width: 100%">
        </div>
        <div style="flex: 1;display: flex;align-items: center;justify-content: center">
          <el-form ref="userloginRef" :model="user" :rules="rules" style="width: 80%">
            <div style="font-size: 20px;font-weight: bold;text-align: center;margin-bottom: 20px">
              欢迎登录上沪博物风系统
            </div>
            <el-form-item prop="user_nickname">
              <el-input v-model="user.user_nickname" placeholder="请输入账号" prefix-icon="el-icon-user"
                        size="medium"></el-input>
            </el-form-item>
            <el-form-item prop="user_psw">
              <el-input v-model="user.user_psw" placeholder="请输入密码" prefix-icon="el-icon-lock" show-password
                        size="medium"></el-input>
            </el-form-item>
            <el-form-item prop="code">
              <div style="display: flex">
                <el-input v-model="user.code" placeholder="请输入验证码" prefix-icon="el-icon-circle-check"
                          size="medium"
                          style="flex: 1"></el-input>
                <div style="flex: 1;height: 36px">
                  <valid-code @update:value="getCode"/>
                </div>
              </div>
            </el-form-item>
            <el-form-item>
              <input v-model="user.role" name="identity" type="radio" value="user">用户
              <input v-model="user.role" name="identity" type="radio" value="admin">管理员
            </el-form-item>
            <el-form-item>
              <el-button style="width: 100%" type="primary" @click="login">登 录</el-button>
            </el-form-item>
            <div style="display: flex">
              <div style="flex: 1">还没有账号？请<span style="color: #0f9876;cursor: pointer"
                                                      @click="$router.push('/register')">注册</span></div>
              <div style="flex: 1;text-align: right"><span style="color: #0f9876;cursor: pointer">忘记密码</span></div>
            </div>
          </el-form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import ValidCode from "@/components/ValidCode";

export default {
  name: "UserLogin",
  components: {
    ValidCode
  },
  data() {

    //验证码校验
    const validateCode = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入验证码'))
      } else if (value.toLowerCase() !== this.code) {
        //callback(new Error('验证码错误'))
        callback()
      } else {
        callback()
      }
    }

    return {
      code: '', //验证码组件传递过来的code
      user: {
        code: '',  //表单里用户输入的code验证码
        user_nickname: '',
        user_psw: '',
        role: ''
      },
      rules: {
        user_nickname: [
          {required: true, message: '请输入账号', trigger: 'blur'},
        ],
        user_psw: [
          {required: true, message: '请输入密码', trigger: 'blur'},
        ],
        code: [
          {validator: validateCode, trigger: 'blur'},
        ],
      }
    }
  },
  created() {
  },
  methods: {
    getCode(code) {
      this.code = code.toLowerCase()
    },
    login() {
      this.$refs['userloginRef'].validate((valid) => {
        console.log("xxx", this.user)
        if (valid) {
          //验证通过
          this.$request.post('/userlogin', this.user).then(res => {
            console.log("res", res)
            if (res.code === '200') {
              this.$message.success('登录成功')
              if (this.user.role === 'user') {
                this.$router.push('/')
                localStorage.setItem("honey-user", JSON.stringify(res.data))  //存储用户数据
              } else {
                window.location.href = 'http://localhost:8081/?id=' + res.data.user_id
              }
            } else {
              this.$message.error(res.msg)
            }
          })
        }
      })
    }
  }
}
</script>

<style scoped>

</style>