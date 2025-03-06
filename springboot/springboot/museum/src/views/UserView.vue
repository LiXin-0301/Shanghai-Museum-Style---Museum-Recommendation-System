<template>
  <div class="user">

    <el-row>
      <el-col :span="24">
        <!-- 删除了一个语句，因为加上会导致功能栏的头像被遮盖，之后需要改进 -->
      </el-col>
      <div>
        <img alt="Vue logo" class="alignleft" height="30" src="../assets/logo.png">
        <el-header class="tltleleft" style="color: #42b983;font-size:30px" @click.native="$router.push('/')">
          上沪博物风
        </el-header>

        <!--        <div id="root">-->
        <!--          <el-input v-model="m_name" class="searchkuang" placeholder="请输入你想查找的博物馆"-->
        <!--                    style="width: 400px;height: 30px; background-color: #f5eeee;"-->
        <!--                    type="text">-->
        <!--          </el-input>-->
        <!--          <el-button class="searchbutton" icon="el-icon-search"-->
        <!--                     style="background-color: #42B983FF; height: 30px; outline-color: #838383;" type="primary"-->
        <!--                     @click="loadData">-->
        <!--            搜索-->
        <!--          </el-button>-->
        <!--        </div>-->


        <div>
          <el-button class="history-button" icon="el-icon-time" style="border: none; background-color: transparent"
                     type="primary"
                     @click.native="$router.push('/browsinghistory')"></el-button>
          <el-button class="star-button" icon="el-icon-star-off" style="border: none; background-color: transparent;"
                     type="primary" @click.native="$router.push('/favorites')"></el-button>
          <!-- 头像位置还需要调整 -->
          <el-container>
            <el-header style="text-align: right; font-size: 12px; line-height: 10px;">
              <el-dropdown>
                <i style="color: aliceblue">
                  <div class="demo-type">
                    <div>
                      <el-avatar :src="user_imageUrl"
                                 class="avatar-icon"
                                 icon="el-icon-user-solid"></el-avatar>
                    </div>
                  </div>
                </i>
                <el-dropdown-menu slot="dropdown"
                                  mode="horizontal">
                  <el-dropdown-item @click.native="$router.push('/user')">个人信息</el-dropdown-item>
                  <el-dropdown-item @click.native="$router.push('/userlogin')">退出登录</el-dropdown-item>
                </el-dropdown-menu>
              </el-dropdown>
            </el-header>
          </el-container>
        </div>
      </div>
    </el-row>

    <el-main class="el-main">
      <el-card style="height: 1000px">
        <el-form label-width="100px" size="small">
          <el-row class="row-bg" justify="center" type="flex">
            <el-upload
                :on-success="handleAvatarSuccess"
                :show-file-list="false"
                action="http://localhost:9090/file/upload"
                class="avatar-uploader">
              <img v-if="form.imageUrl" :src="form.imageUrl"
                   class="avatar">
              <i v-else class="el-icon-plus avatar-uploader-icon"></i>
            </el-upload>
          </el-row>

          <el-form-item label="账号">
            <el-input v-model="form.user_id" autocomplete="off" disabled></el-input>
          </el-form-item>
          <el-form-item label="昵称">
            <el-input v-model="form.user_nickname" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="性别">
            <el-input v-model="form.user_sex" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="年龄">
            <el-input v-model="form.user_age" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="简介">
            <el-input v-model="form.user_intro" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="邮箱">
            <el-input v-model="form.user_email" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="联系电话">
            <el-input v-model="form.user_phone" autocomplete="off"></el-input>
          </el-form-item>
        </el-form>

        <div style="text-align: center">
          <el-row type="flex">
            <!-- 使用el-col控制按钮的位置和宽度 -->
            <!-- 确定按钮在中间 -->
            <el-col :offset="11" :span="5" style="text-align: center">
              <el-button type="primary" @click="save">确定</el-button>
            </el-col>

            <!-- 修改密码按钮在最右边，通过使用 offset 推到右边 -->
            <el-col :offset="8" :span="8" style="text-align: right">
              <el-button type="danger" @click="dialogFormVisible = true">修改密码</el-button>
            </el-col>
          </el-row>
        </div>
      </el-card>
      <!-- 修改密码表单 -->
      <el-dialog :visible.sync="dialogFormVisible">
        <el-form ref="pass" :model="form" :rules="rules" label-width="120px" size="small" status-icon>

          <el-form-item label="原密码" prop="user_psw">
            <el-input v-model="form.user_psw" autocomplete="off" show-password></el-input>
          </el-form-item>
          <el-form-item label="新密码" prop="user_newPsw">
            <el-input v-model="form.user_newPsw" autocomplete="off" show-password></el-input>
          </el-form-item>
          <el-form-item label="确认新密码" prop="user_confirmPsw">
            <el-input v-model="form.user_confirmPsw" autocomplete="off" show-password></el-input>
          </el-form-item>
          <el-form-item>
            <el-button type="primary" @click="savePsw">提交</el-button>
          </el-form-item>

        </el-form>
      </el-dialog>
    </el-main>

  </div>

</template>

<style>
.avatar-icon {
  /* 通过修改该元素的 margin-top 属性来降低图标在页面中的高度 */
  margin-top: 10px; /* 你可以根据需要调整此值 */
}

.el-row {
  margin-bottom: 5px;
}

.el-row:last-child {
  margin-bottom: 0;
}

.el-main {
  background-color: lightgray;
  height: 550px;
}

.avatar-uploader .el-upload {
  border: 1px dashed #d9d9d9;
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}

.avatar-uploader .el-upload:hover {
  border-color: #409EFF;
}

.avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 178px;
  height: 178px;
  line-height: 178px;
  text-align: center;
}

.avatar {
  width: 178px;
  height: 178px;
  display: block;
}
</style>

<script>

import request from "@/utils/request"; /* 需要修改，加上此js文件代码运行会报错 */

export default {
  data() {
    return {
      form: {},
      activeIndex: '/user',
      user_imageUrl: '',
      dialogFormVisible: false,
      user: {
        user_id: 1
      },
      /*此user为测试所用的特殊用例，正式使用时应该从页面获取*/
      /*下面这行是一种可能有用的从页面动态获取id的方法，仅供参考*/
      //manager: localStorage.getItem("manager") ? JSON.parse(localStorage.getItem("manager")) : {}
      rules: {
        user_psw: [
          {required: true, message: "请输入原密码", trigger: 'blur'},
          {min: 6, message: "长度不少于6位", trigger: 'blur'},
        ],
        user_newPsw: [
          {required: true, message: "请输入新密码", trigger: 'blur'},
          {min: 6, message: "长度不少于6位", trigger: 'blur'},
        ],
        user_confirmPsw: [
          {required: true, message: "请确认新密码", trigger: 'blur'},
          {min: 6, message: "长度不少于6位", trigger: 'blur'},
        ],
      }
    };
  },
  created() {
    this.user = JSON.parse(localStorage.getItem("honey-user"))
    const user_id = this.user.user_id;
    if (!user_id) {
      this.$message.error("当前无法获取个人信息");
      return;
    }
    this.$request.get("/user/select/" + user_id).then(res => {
      this.form = res;
      this.user_imageUrl = res.imageUrl
      console.log(res)
    }).catch(err => {
      console.error("请求失败:", err);
      this.$message.error("请求失败，请稍后重试");
    });
  },
  methods: {
    handleSelect(index) {
      if (this.$route.path !== index) {
        this.activeIndex = index; // 更新 activeIndex
        console.log(index);
        this.$router.push(index); // 跳转到选定的路由
      }
    },
    handleSelect2(command) {
      if (command !== this.activeIndex) {
        this.activeIndex = command; // 更新 activeIndex
        console.log(command);
        this.$router.push({path: command}); // 跳转到选定的路由
      }
    },
    save() {
      request.post("/user", this.form).then(res => {
        if (res) {
          this.$message.success("保存成功")
          this.getUpdatedUserData()
        } else {
          this.$message.error("保存失败")
        }
      })
    },
    savePsw() {
      this.$refs.pass.validate((valid) => {
        if (valid) { //合法
          if (this.form.user_newPsw != this.form.user_confirmPsw) {
            this.$message.error("2次输入的新密码不相同");
            return false
          }
          // 构建密码数据对象
          const passwordData = {
            user_psw: this.form.user_psw,
            user_newPsw: this.form.user_newPsw,
            user_confirmPsw: this.form.user_confirmPsw
          };
          console.log(this.form)
          this.$request.post(`/user/psw/${this.user.user_id}`, passwordData).then(res => {
            console.log(res)
            if (res) {
              this.$message.success("修改成功")
              this.dialogFormVisible = false
            } else {
              this.$message.error("密码错误，修改失败");
              this.dialogFormVisible = false
            }
          }).catch(error => {
            console.error('Error:', error);
            this.$message.error("修改密码时发生错误");
          });
        }
      });
    },
    handleAvatarSuccess(res) {
      this.form.imageUrl = res
      console.log("xxx", this.form)
    },
    getUpdatedUserData() {
      const user_id = this.user.user_id;
      if (!user_id) {
        this.$message.error("当前无法获取个人信息");
        return;
      }
      this.$request.get("/user/select/" + user_id).then(res => {
        this.form = res;
        this.user_imageUrl = res.user_imageUrl;
        console.log(res);
      }).catch(err => {
        console.error("请求失败:", err);
        this.$message.error("请求失败，请稍后重试");
      });
    }


  },
};
</script>
