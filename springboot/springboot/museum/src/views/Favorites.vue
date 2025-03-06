<template>
  <div class="browsinghistory">


    <el-row>
      <el-col :span="24">
        <!-- 删除了一个语句，因为加上会导致功能栏的头像被遮盖，之后需要改进 -->
      </el-col>
      <div>
        <img alt="Vue logo" class="alignleft" height="30" src="../assets/logo.png">
        <el-header class="tltleleft" style="color: #42b983;font-size:30px" @click.native="$router.push('/')">
          上沪博物风/收藏夹
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

    <!--    <div v-for="(data, index) in data" :key="index" class="museumGroup">-->
    <!--      &lt;!&ndash;                      @mouseover="changeTextColor(index, true)"-->
    <!--                          @mouseleave="changeTextColor(index, false)"&ndash;&gt;-->
    <!--      <img :alt="data.file.m_id" :src="data.file.url" style="width: 260px; height: 200px; cursor: pointer;">-->
    <!--      <p class="museumName">{{ data.m_name }}</p>-->
    <!--    </div>-->

    <div>
      <div class="museumColumn1">

        <div v-for="(data, index) in data" :key="index" class="museumGroup"
             @click="goToMuseumDetails(data.file.m_id)"
        >
          <!--                      @mouseover="changeTextColor(index, true)"
                              @mouseleave="changeTextColor(index, false)"-->
          <img :alt="data.file.m_id" :src="data.file.url" style="width: 130px; height: 100px; cursor: pointer;">
          <p class="museumName">{{ data.m_name }}</p>
        </div>

      </div>

    </div>

  </div>
</template>

<style scoped>
.custom-pagination .el-pagination {
  /* 设置分页器宽度为100% */
}

.el-table .warning-row {
  background: oldlace;
}

.el-table .success-row {
  background: #f0f9eb;
}
</style>

// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'


<script>

export default {
  data() {
    return {
      user_imageUrl: '',
      user: {},
      data: [], // 初始化为一个空数组
    };
  },

  created() {
    this.user = JSON.parse(localStorage.getItem("honey-user"))
    this.$request.get("/user/select/" + this.user.user_id).then(res => {
      this.user_imageUrl = res.imageUrl
      console.log(res)
    }).catch(err => {
      console.error("请求失败:", err);
      this.$message.error("请求失败，请稍后重试");
    });
    this.loadData1()
  },

  methods: {
    loadData1() {
      // 同时获取博物馆和文件数据
      Promise.all([
        this.fetchMuseumData(),
        this.fetchImageData()
      ]).then(([museumData, imageData]) => {
        // 合并数据

        const combinedData = museumData.map(museum => {
          const file = imageData.find(file => file.m_id === museum.m_id);
          return {
            ...museum,
            file: {
              url: file ? file.url : '', // 如果没有匹配的文件，url设为空字符串
              m_id: museum.m_id // 使用博物馆的m_id
            }
          };
        });
        // 将合并后的数据赋值给tableData
        this.data = combinedData;
      }).catch(error => {
        console.error('Error loading data:', error);
      })
    },
    goToMuseumDetails(museumId, index) {
      // 在这里实现跳转到博物馆详情页的逻辑，传递博物馆的 id
      this.$router.push({path: '/about', query: {id: museumId}});
      // 标记被点击的状态
      this.$set(this.isClicked, index, true);
    },
    fetchImageData() {
      return fetch("http://localhost:9091/files/images")
          .then(res => res.json());
    },
    fetchMuseumData() {
      return fetch("http://localhost:9091/museum/findfavorites?user_id=" + this.user.user_id)
          .then(res => res.json());
    }
  },


};
</script>
<style>
.el-row {
  margin-bottom: 20px;
}

.el-row :last-child {
  margin-bottom: 0;
}

.el-col {
  border-radius: 4px;
}

.bg-purple-dark {
  background: #838383;
}

.bg-purple {
  background: #6e6e6e;
}

.bg-purple-light {
  background: #e5e9f2;
}

.grid-content {
  border-radius: 4px;
  min-height: 60px;
}

.row-bg {
  padding: 10px 0;
  background-color: #f9fafc;
}

</style>