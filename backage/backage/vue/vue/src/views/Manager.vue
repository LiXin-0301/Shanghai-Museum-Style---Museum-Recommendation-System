<template xmlns="http://www.w3.org/1999/html">
  <div>
    <el-row class="el-row">
      <el-col :span="3">
        <div style="background-color: #545c64;min-height: 60px;line-height: 60px; box-shadow: 2px 0 6px rgb(0 21 41 /60%)">
          <img src="../assets/logo.png" alt="" style="width: 30px;position: relative;top: 8px; margin-right: 6px; margin-left: 10px">
          <b style="color: #f9fafc">后台管理系统</b>
        </div>
      </el-col>
      <el-col :span="21">
        <div>
          <el-menu
              :default-active="activeIndex"
              class="el-menu-demo"
              mode="horizontal"
              @select="handleSelect"
              background-color="#545c64"
              text-color="#fff"
              active-text-color="#ffd04b"
              style="position: relative; box-shadow: 2px 0 6px rgb(0 21 41 /60%)">
            <el-menu-item index="/">用户管理</el-menu-item>
            <el-menu-item index="/museum-manage">博物馆管理</el-menu-item>

            <el-container>
              <el-header style="text-align: right; font-size: 12px; line-height: 10px;">
                <el-dropdown @command="handleSelect2">
                  <i style="color: aliceblue">
                    <div class="demo-type">
                      <div>
                        <el-avatar :src="imageUrl" icon="el-icon-user-solid" class="avatar-icon"></el-avatar>
                      </div>
                    </div>
                  </i>
                  <el-dropdown-menu :default-active="activeIndex"
                                    mode="horizontal"
                                    slot="dropdown">
                    <el-dropdown-item command="/manager">个人信息</el-dropdown-item>
                    <el-dropdown-item>退出登录</el-dropdown-item>
                  </el-dropdown-menu >
                </el-dropdown>
              </el-header>
            </el-container>
          </el-menu>
        </div>
      </el-col>
    </el-row>

    <el-main class="el-main">
      <el-card style="height: 500px">
      <el-form label-width="100px" size="small">
        <el-row type="flex" class="row-bg" justify="center">
        <el-upload
            class="avatar-uploader"
            action="http://localhost:9090/file/upload"
            :show-file-list="false"
            :on-success="handleAvatarSuccess">
          <img v-if="form.imageUrl" :src="form.imageUrl" class="avatar">
          <i v-else class="el-icon-plus avatar-uploader-icon"></i>
        </el-upload>
        </el-row>

        <el-form-item label="账号">
          <el-input v-model="form.user_id" autocomplete="off" disabled></el-input>
        </el-form-item>
        <el-form-item label="电话号码">
          <el-input v-model="form.phone" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="邮箱">
          <el-input v-model="form.email" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="地址">
          <el-input v-model="form.address" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>

        <div style="text-align: center">
          <el-row type="flex">
            <!-- 使用el-col控制按钮的位置和宽度 -->
            <!-- 确定按钮在中间 -->
            <el-col :span="5" :offset="11" style="text-align: center">
              <el-button type="primary" @click="save">确定</el-button>
            </el-col>

            <!-- 修改密码按钮在最右边，通过使用 offset 推到右边 -->
            <el-col :span="8" :offset="8" style="text-align: right">
              <el-button type="danger" @click="dialogFormVisible = true">修改密码</el-button>
            </el-col>
          </el-row>
        </div>
      </el-card>
      <!-- 修改密码表单 -->
      <el-dialog :visible.sync="dialogFormVisible">
        <el-form :model="form" status-icon :rules="rules" ref="pass" label-width="120px" size="small">

          <el-form-item label="原密码" prop="psw">
            <el-input v-model="form.psw" autocomplete="off" show-password></el-input>
          </el-form-item>
          <el-form-item label="新密码" prop="newPsw">
            <el-input v-model="form.newPsw" autocomplete="off" show-password></el-input>
          </el-form-item>
          <el-form-item label="确认新密码" prop="confirmPsw">
            <el-input v-model="form.confirmPsw" autocomplete="off" show-password></el-input>
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

import request from "@/utils/request";

export default {
  data(){
    return{
      form: {},
      activeIndex: '/manager',
      imageUrl:'',
      dialogFormVisible:false,
      manager:{
        id: 1
      },
      /*此manager为测试所用的特殊用例，正式使用时应该从页面获取*/
      /*下面这行是一种可能有用的从页面动态获取id的方法，仅供参考*/
      //manager: localStorage.getItem("manager") ? JSON.parse(localStorage.getItem("manager")) : {}
      rules: {
        psw: [
          { required:true, message:"请输入原密码", trigger: 'blur' },
          { min:6, message:"长度不少于6位", trigger: 'blur' },
        ],
        newPsw: [
          { required:true, message:"请输入新密码", trigger: 'blur' },
          { min:6, message:"长度不少于6位", trigger: 'blur' },
        ],
        confirmPsw: [
          { required:true, message:"请确认新密码", trigger: 'blur' },
          { min:6, message:"长度不少于6位", trigger: 'blur' },
        ],
      }
    };
  },
  created(){
    const id = this.manager.id ;
    if (!id) {
      this.$message.error("当前无法获取个人信息");
      return;
    }
    this.request.get("/manager/select/" + id).then(res => {
      this.form = res;
      this.imageUrl = res.imageUrl
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
        this.$router.push({ path: command }); // 跳转到选定的路由
      }
    },
    save(){
        request.post("/manager", this.form).then(res => {
          if(res){
            this.$message.success("保存成功")
            this.getUpdatedManagerData()
          }else{
            this.$message.error("保存失败")
          }
        })
    },
    savePsw(){
      this.$refs.pass.validate((valid) => {
        if (valid) { //合法
          if (this.form.newPsw != this.form.confirmPsw) {
            this.$message.error("2次输入的新密码不相同");
            return false
          }
          // 构建密码数据对象
          const passwordData = {
            psw: this.form.psw,
            newPsw: this.form.newPsw,
            confirmPsw: this.form.confirmPsw
          };
          console.log("form",this.form)
          this.request.post(`/manager/psw/${this.manager.id}`,passwordData).then(res => {
            console.log("res",res)
            if (res) {
              this.$message.success("修改成功")
              this.dialogFormVisible = false
            } else {
              this.$message.error("修改失败");
              this.dialogFormVisible = false
            }
          }).catch(error => {
            console.error('Error:', error);
            this.$message.error("修改密码时发生错误");
          });
        }
      });
    },
    handleAvatarSuccess(res){
      this.form.imageUrl = res
    },
    getUpdatedManagerData() {
      const id = this.manager.id;
      if (!id) {
        this.$message.error("当前无法获取个人信息");
        return;
      }
      this.request.get("/manager/select/" + id).then(res => {
        this.form = res;
        this.imageUrl = res.imageUrl;
        console.log(res);
      }).catch(err => {
        console.error("请求失败:", err);
        this.$message.error("请求失败，请稍后重试");
      });
    }


  },
};
</script>
