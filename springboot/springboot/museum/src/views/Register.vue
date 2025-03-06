<template>
  <div class="userlogin">
    <div
        style="height: 100vh;overflow: hidden;display: flex;align-items: center;justify-content: center;background-color: #669fef">
      <div style="display: flex;background-color: white;width: 50%;border-radius: 5px;overflow: hidden">
        <div style="flex: 1;">
          <img src="@/assets/register.png" alt="" style="width: 100%">
        </div>
        <div style="flex: 1;display: flex;align-items: center;justify-content: center">
          <el-form ref="registerRef" :model="user" :rules="rules" style="width: 80%">
            <div style="font-size: 20px;font-weight: bold;text-align: center;margin-bottom: 20px">
              欢迎注册上沪博物风系统
            </div>
            <el-form-item prop="user_nickname">
              <el-input v-model="user.user_nickname" placeholder="请输入用户昵称" prefix-icon="el-icon-user"
                        size="medium"></el-input>
            </el-form-item>
            <el-form-item prop="user_psw">
              <el-input v-model="user.user_psw" placeholder="请输入密码" prefix-icon="el-icon-lock" show-password
                        size="medium"></el-input>
            </el-form-item>
            <el-form-item prop="confirmPass">
              <el-input v-model="user.confirmPass" placeholder="请确认密码" prefix-icon="el-icon-lock" show-password
                        size="medium"></el-input>
            </el-form-item>
            <input name="identity" type="radio" value="option1">用户
            <input name="identity" type="radio" value="option2">管理员
            <el-form-item>
              <el-button style="width: 100%" type="primary" @click="register">注 册</el-button>
            </el-form-item>
            <div style="display: flex">
              <div style="flex: 1">已有账号？请<span style="color: #6e77f2;cursor: pointer"
                                                    @click="$router.push('/userlogin')">登录</span></div>
            </div>
          </el-form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>


export default {
  name: "Register",
  data() {
//验证码校验
    const validatePassword = (rule, confirmPass, callback) => {
      if (confirmPass === '') {
        callback(new Error('请确认密码'))
      } else if (confirmPass !== this.user.user_psw) {
        callback(new Error('两次输入的密码不一致'))
      } else {
        callback()
      }
    }

    return {
      user: {
        user_nickname: '',
        user_psw: '',
        confirmPass: ''
      },
      rules: {
        user_nickname: [
          {required: true, message: '请输入用户昵称', trigger: 'blur'},
        ],
        user_psw: [
          {required: true, message: '请输入密码', trigger: 'blur'},
        ],
        confirmPass: [
          {validator: validatePassword, trigger: 'blur'},
        ],
      }
    }
  },
  created() {
  },
  methods: {
    register() {
      this.$refs['registerRef'].validate((valid) => {
        if (valid) {
          //验证通过
          this.$request.post('/register', this.user).then(res => {
            if (res.code === '200') {
              this.$router.push('/userlogin')
              this.$message.success('注册成功')
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