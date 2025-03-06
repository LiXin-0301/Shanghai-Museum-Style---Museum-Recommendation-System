
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
            <el-button type="primary" @click="handleAdd">新增<i class="el-icon-circle-plus-outline"></i></el-button>
          </div>
        </el-col>
        <el-col :span="2">
          <div style="margin: 10px 0">
            <el-upload
                action="http://localhost:9090/museum/import" :show-file-list="false" accept=".xlsx" :on-success="importSuccess">
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
        <el-col :span="6":offset="10">
          <div style="margin: 10px 0">
            <el-input style="width: 230px" placeholder="请输入ID/名称/地址" suffix-icon="el-icon-search" v-model="query"></el-input>
            <el-button class="ml-5" type="primary" @click="load">搜索</el-button>
          </div>
        </el-col>
      </el-row>
      <el-table :data="tableData" stripe border height="500" style="width: 100%" @selection-change="handleSelectionChange">
        <el-table-column type="selection" width="55"></el-table-column>
        <el-table-column prop="m_id" label="博物馆ID" width="50"></el-table-column>
        <el-table-column prop="m_name" label="博物馆名称" width="100"></el-table-column>
        <el-table-column prop="address" label="地址" width="100"></el-table-column>
        <el-table-column prop="type" label="类型" width="100"></el-table-column>
        <el-table-column prop="open_time" label="开放时间" width="120"></el-table-column>
        <el-table-column prop="fare_rule" label="收费标准" width="100"></el-table-column>
        <el-table-column prop="m_intro" label="简介"></el-table-column>
        <el-table-column label="操作" width="350">
          <template slot-scope="scope">
            <div style="display: flex; align-items: center;"> <!-- 添加了flex布局的容器 -->
              <el-button type="success" @click="handleEdit(scope.row)">编辑<i class="el-icon-edit"></i></el-button>
              <el-upload
                  class="ml-5"
                  action="http://localhost:9090/file/upload2"
                  :multiple="true"
                  :data="{ m_id: scope.row.m_id }"
                  list-type="text">
                <!-- 对于el-upload组件，由于它内部处理了slot，你可能需要自行调整样式或布局以达到完全并排的效果 -->
                <el-button type="primary" size="small">图片上传<i class="el-icon-picture-outline-round"></i></el-button>
              </el-upload>
              <el-popconfirm
                  class="ml-5"
                  confirm-button-text="确定"
                  cancel-button-text="取消"
                  icon="el-icon-info"
                  icon-color="red"
                  title="确定删除这条记录吗？"
                  @confirm="del(scope.row.m_id)">
                <el-button type="danger" slot="reference">删除<i class="el-icon-delete-solid"></i></el-button>
              </el-popconfirm>
            </div>
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

      <el-dialog title="博物馆信息" :visible.sync="dialogVisible">
        <el-form label-width="100px" size="small">
          <el-form-item label="博物馆名称">
            <el-input v-model="form.m_name" autocomplete="on"></el-input>
          </el-form-item>
          <el-form-item label="地址">
            <el-input v-model="form.address" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="类型">
            <el-input v-model="form.type" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="开放时间">
            <el-input v-model="form.open_time" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="收费标准">
            <el-input v-model="form.fare_rule" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="简介">
            <el-input v-model="form.m_intro" autocomplete="off"></el-input>
          </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button @click="dialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="save">确 定</el-button>
        </div>
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
  height: 100%;

}
</style>

<script>

import request from "@/utils/request";

export default {
  name: 'MuseumManage',
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
      form: {},
      activeIndex: '/museum-manage',
      dialogVisible: false,
      multipleSelection: [],
    };
  },
  created(){
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
      request.get("/museum/page", {
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
    save(){
        if (!this.form.m_name) {
          this.$message.error('博物馆名称不能为空')
        }else{
          request.post("/museum", this.form).then(res => {
            if(res){
                this.$message.success("保存成功")
                this.dialogVisible = false
                this.load();
            }else{
                this.$message.error("保存失败")
            }
         })
        }
    },
    handleAdd(){
      this.dialogVisible = true;
      this.form = {}
    },
    handleEdit(row){
      this.form = row
      this.form = JSON.parse(JSON.stringify(row))
      this.dialogVisible = true
   },
    del(m_id){
      request.delete("/museum/" + m_id).then(res =>{
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
      let ids = this.multipleSelection.map(v => v.m_id);
      console.log(ids);
      request.post("/museum/del/batch", JSON.stringify(ids)).then(res =>{
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
      window.open("http://localhost:9090/museum/export")
    },
    importSuccess(){
      this.$message.success("文件导入成功");
      this.load();
    },
  },
};
</script>
