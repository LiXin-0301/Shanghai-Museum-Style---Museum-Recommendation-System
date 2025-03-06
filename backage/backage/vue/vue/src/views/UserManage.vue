
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
    <el-row>
      <el-col :span="2">
        <div style="margin: 10px 0">
          <el-upload
              action="http://localhost:9090/user/import" :show-file-list="false" accept=".xlsx" :on-success="importSuccess">
              <el-button type="primary">导入<i class="el-icon-download"></i></el-button>
          </el-upload>
        </div>
      </el-col>
      <el-col :span="2">
        <div style="margin: 10px 0">
          <el-button type="primary" @click="exp">导出<i class="el-icon-upload2"></i></el-button>
        </div>
      </el-col>
      <el-col :span="2">
        <div style="margin: 10px 0">
          <el-button type="danger" @click="delBatch">批量删除<i class="el-icon-delete"></i></el-button>
        </div>
      </el-col>
      <el-col :span="6":offset="12">
        <div style="margin: 10px 0">
            <el-input style="width: 230px" placeholder="请输入ID/昵称" suffix-icon="el-icon-search" v-model="query"></el-input>
          <el-button class="ml-5" type="primary" @click="load">搜索</el-button>
          </div>
      </el-col>
    </el-row>
        <el-table :data="tableData" stripe border height="460" style="width: 100%" @selection-change="handleSelectionChange">
          <el-table-column type="selection" width="55"></el-table-column>
          <el-table-column prop="user_id" label="用户ID" width="150"></el-table-column>
          <el-table-column prop="user_nickname" label="昵称" width="150"></el-table-column>
          <el-table-column prop="user_sex" label="性别" width="120"></el-table-column>
          <el-table-column prop="user_email" label="邮箱"></el-table-column>
          <el-table-column prop="user_ctime" label="创建时间"></el-table-column>
          <el-table-column label="操作" width="160">
            <template slot-scope="scope">
              <el-popconfirm
                  class="ml-5"
                  confirm-button-text='确定'
                  cancel-button-text='取消'
                  icon="el-icon-info"
                  icon-color="red"
                  title="确定删除这条记录吗？"
                  @confirm ="del(scope.row.user_id)"
              >
              <el-button type="danger" slot="reference">删除<i class="el-icon-delete-solid"></i></el-button>
              </el-popconfirm>
            </template>
          </el-table-column>
        </el-table>
        <div style="padding: 10px 0">
          <el-pagination
              @size-change="handleSizeChange"
              @current-change="handleCurrentChange"
              :current-page="pageNum"
              :page-sizes="[10, 15, 20, 25]"
              :page-size="pageSize"
              layout="total, sizes, prev, pager, next, jumper"
              :total="total">
          </el-pagination>
        </div>
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
  height: 100%;

}
</style>

<script>

import request from "@/utils/request";

export default {
  name: 'UserManage',
  data(){
    return{
      tableData: [],
      total: 0,
      pageNum:1,
      query: "",
      imageUrl:'',
      manager:{
        id: 1
      },
      pageSize:10,
      activeIndex: '/',
      dialogVisible: false,
      multipleSelection: [],
    };
  },
  created(){
    if (this.$route.query.id){
      localStorage.setItem("honey-user",this.$route.query.id)
    }
    this.manager.id=localStorage.getItem("honey-user")
    const id = this.manager.id ;
    this.request.get("/manager/select/" + id).then(res => {
      this.imageUrl = res.imageUrl
      console.log(res)
    }).catch(err => {
      console.error("请求失败:", err);
      this.$message.error("请求失败，请稍后重试");
    });
    this.load();
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
    load(){
      //请求分页查询数据
      request.get("/user/page", {
        params:{
          pageNum : this.pageNum,
          pageSize : this.pageSize,
          query : this.query,
        }
      }).then(res =>{
        console.log(res);

        this.tableData = res.data;
        this.total = res.total;

      })
    },
    del(user_id){
      request.delete("/user/" + user_id).then(res =>{
        if(res){
          this.$message.success("删除成功");
          this.load();
        }else{
          this.$message.error("删除失败");
        }
      })
    },
    handleSelectionChange(val){
       console.log(val);
       this.multipleSelection = val;
    },
    delBatch(){
      let ids = this.multipleSelection.map(v => v.user_id);
      console.log(ids);
      request.post("/user/del/batch", JSON.stringify(ids)).then(res =>{
        console.log(ids);
        this.$confirm('此操作将永久删除选中的记录, 是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$message({
            type: 'success',
            message: '删除成功!'
          },
          this.load()
          );
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '已取消删除'
          });
        });
      })
    },
    handleSizeChange(pageSize){
      console.log(pageSize);
      this.pageSize = pageSize;
      this.load();
    },
    handleCurrentChange(pageNum){
      console.log(pageNum);
      this.pageNum = pageNum;
      this.load();
    },
    exp(){
      window.open("http://localhost:9090/user/export")
    },
    importSuccess(){
      this.$message.success("文件导入成功");
      this.load();
    },

  },
};
</script>
