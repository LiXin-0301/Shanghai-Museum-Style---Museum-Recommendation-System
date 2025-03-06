<template>

  <div class="home">

    <el-row style="background-color: #838383FF;">


      <el-col :span="24">
        <!-- 删除了一个语句，因为加上会导致功能栏的头像被遮盖，之后需要改进 -->
      </el-col>
      <div>
        <img alt="Vue logo" class="alignleft" height="30" src="../assets/logo.png">
        <el-header class="tltleleft" style="color: #42b983;font-size:30px">上沪博物风</el-header>

        <div id="root">
          <el-input v-model="m_name" class="searchkuang" placeholder="请输入你想查找的博物馆"
                    style="width: 400px;height: 30px; background-color: #f5eeee;"
                    type="text">
          </el-input>
          <el-button class="searchbutton" icon="el-icon-search"
                     style="background-color: #42B983FF; height: 30px; outline-color: #838383;" type="primary"
                     @click="loadData">
            搜索
          </el-button>
        </div>


        <div>
          <el-button class="history-button" icon="el-icon-time" style="border: none; background-color: transparent"
                     type="primary"
                     @click.native="$router.push('/browsinghistory')"></el-button>
          <el-button class="star-button" icon="el-icon-star-off" style="border: none; background-color: transparent;"
                     type="primary" @click.native="$router.push('/favorites')"></el-button>
          <!-- 头像位置还需要调整 -->
          <el-container>
            <el-header style="text-align: right; font-size: 12px; line-height: 10px;">
              <el-dropdown @command="handleSelect2">
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
                  <el-dropdown-item command="/user">个人信息</el-dropdown-item>
                  <el-dropdown-item @click.native="$router.push('/userlogin')">退出登录</el-dropdown-item>
                </el-dropdown-menu>
              </el-dropdown>
            </el-header>
          </el-container>
        </div>
      </div>
    </el-row>

    <div style="height: 2000px; ">
      <body>
      <div class="shell">
        <div class="box img1">
          <div class="text">
            <header>
              <span class="title">NO.</span>
              <span class="num">1</span>
            </header>
            <p>
              中国馆由国家馆、省区市馆、香港馆、澳门馆、台湾馆组成。建筑外观以"东方之冠"为构思主题，表达中国文化的精神与气质。国家馆居中升起、层叠出挑，成为凝聚中国元素、象征中国精神的雕塑感造型主体--东方之冠；地区馆水平展开，以舒展的平台基座的形态映衬国家馆，成为开放、柔性、亲民、层次丰富的城市广场。
            </p>
          </div>
        </div>
        <div class="box img2">
          <div class="text">
            <header>
              <span class="title">NO.</span>
              <span class="num">2</span>
            </header>
            <p>
              上海博物馆，位于上海市黄浦区人民大道201号，陈列面积共计12000平方米，一楼为中国古代青铜馆、中国古代雕塑馆和展览大厅；二楼为中国古代陶瓷馆、暂得楼陶瓷馆和展览厅；三楼为中国历代书法馆、中国历代绘画馆、中国历代玺印馆；四楼为中国古代玉器馆、中国历代钱币馆、中国明清家具馆，是综合性博物馆。
            </p>
          </div>
        </div>
        <div class="box img3">
          <div class="text">
            <header>
              <span class="title">NO.</span>
              <span class="num">3</span>
            </header>
            <p>
              上海世博会博物馆，位于上海市黄浦区蒙自路818号，于2017年5月1日对外开放。是国际展览局唯一官方博物馆和官方文献研究中心，也是全世界独一无二的全面展示世博专题的博物馆。上海世博会博物馆占地4公顷，总建筑面积46534.48平方米，对外开放管理总面积90580平方米，建筑高度34.8米（地上六层，地下一层）。
            </p>
          </div>
        </div>
        <div class="box img4">
          <div class="text">
            <header>
              <span class="title">NO.</span>
              <span class="num">4</span>
            </header>
            <p>
              上海世博会博物馆馆内拥有共有三个临时展厅，面积2572平方米。三个临时展厅的实际布展面积分别为1027平方米、675平方米、690平方米。展厅的物理条件优越，安防技防系统配备齐全，临展库房恒温恒湿，配备气体灭火。
            </p>
          </div>
        </div>

        <div class="box img5">
          <div class="text">
            <header>
              <span class="title">NO.</span>
              <span class="num">5</span>
            </header>
            <p>
              上海自然博物馆（上海科技馆分馆）坐落于上海市静安雕塑公园内，建筑面积45,257 平方米，展览教育服务面积32,200
              平方米，预计年接待观众80-120万人次，将成为上海市重要的科普教育基地和公众社会文化交流平台。
            </p>
          </div>
        </div>


        <div>
          <div>
            <el-header class="museumsuoyin" style="color: #42b983;font-size:30px">博物馆索引</el-header>
            <!-- 顶部单选项 -->
            <el-radio-group v-model="sortBy" class="tiao" @change="sortMuseums">
              <el-row>
                <el-radio class="popularitylan" label="m_view" value="m_view">热度</el-radio>
                <el-radio class="ratinglan" label="m_rate" value="m_rate">评分</el-radio>
                <el-radio class="favoriteslan" label="m_favorites" value="m_favorites">收藏</el-radio>
              </el-row>
            </el-radio-group>


            <!-- 右侧筛选项 -->
            <el-header class="museumshaixuan" style="color: #42b983;font-size:30px">博物馆筛选</el-header>
            <el-form :model="filterForm" class="shai" @submit.native.prevent>
              <el-form-item label="所属行政区">
                <el-select v-model="filterForm.address">
                  <el-option label="黄浦区" value="黄浦区"></el-option>
                  <el-option label="徐汇区" value="徐汇区"></el-option>
                  <el-option label="长宁区" value="长宁区"></el-option>
                  <el-option label="静安区" value="静安区"></el-option>
                  <el-option label="卢湾区" value="卢湾区"></el-option>
                  <el-option label="普陀区" value="普陀区"></el-option>
                  <el-option label="虹口区" value="虹口区"></el-option>
                  <el-option label="杨浦区" value="杨浦区"></el-option>
                  <el-option label="闵行区" value="闵行区"></el-option>
                  <el-option label="宝山区" value="宝山区"></el-option>
                  <el-option label="嘉定区" value="嘉定区"></el-option>
                  <el-option label="浦东新区" value="浦东新区"></el-option>
                  <el-option label="金山区" value="金山区"></el-option>
                  <el-option label="松江区" value="松江区"></el-option>
                  <el-option label="青浦区" value="青浦区"></el-option>
                  <el-option label="奉贤区" value="奉贤区"></el-option>
                  <el-option label="崇明区" value="崇明区"></el-option>
                  <!-- 其他行政区选项 -->
                </el-select>
              </el-form-item>
              <el-form-item label="博物馆类别">
                <el-select v-model="filterForm.category">
                  <el-option label="历史博物馆" value="历史博物馆"></el-option>
                  <el-option label="艺术博物馆" value="艺术博物馆"></el-option>
                  <el-option label="自然科学博物馆" value="自然科学博物馆"></el-option>
                  <el-option label="社会科学博物馆" value="社会科学博物馆"></el-option>
                  <el-option label="综合博物馆" value="综合博物馆"></el-option>
                  <!-- 其他博物馆类别选项 -->
                </el-select>
              </el-form-item>

              <el-form-item label="开放时间">
                <el-select v-model="filterForm.openingDay">
                  <el-option label="周一" value="Mon"></el-option>
                  <el-option label="周二" value="Tue"></el-option>
                  <el-option label="周三" value="Wed"></el-option>
                  <el-option label="周四" value="Thu"></el-option>
                  <el-option label="周五" value="Fri"></el-option>
                  <el-option label="周六" value="Sat"></el-option>
                  <el-option label="周日" value="Sun"></el-option>
                  <!-- 其他星期几选项 -->
                </el-select>
              </el-form-item>

              <el-form-item label="是否免费">
                <el-select v-model="filterForm.fare_rule">
                  <el-option label="免费" value="免费"></el-option>
                  <el-option label="收费" value="元"></el-option>
                </el-select>
              </el-form-item>

              <el-form-item label="是否需要预约">
                <el-select v-model="filterForm.isReservedTag">
                  <el-option label="无需预约" value="否"></el-option>
                  <el-option label="需要预约" value="是"></el-option>
                </el-select>
              </el-form-item>
              <!--后续可能考虑占地大小和价格区分-->
              <el-button
                  :style="{ backgroundColor: false ? '#42b983' : '#838383FF' }"
                  class="applyshaixuan"
                  type="primary"
                  @click="loadData"
              > 应用筛选
              </el-button>

              <!--               应用筛选-->


            </el-form>
          </div>


          <div class="museumColumn">

            <div v-for="(data, index) in tableData" :key="index" class="museumGroup"
                 @click="goToMuseumDetails(data.file.m_id)"
            >
              <!--                      @mouseover="changeTextColor(index, true)"
                                  @mouseleave="changeTextColor(index, false)"-->
              <img :alt="data.file.m_id" :src="data.file.url" style="width: 260px; height: 200px; cursor: pointer;">
              <p class="museumName">{{ data.m_name }}</p>
            </div>

            <!-- 分页器 -->
            <div class="paginationContainer" style="width: 280px;">
              <el-pagination
                  :current-page="pageNum"
                  :page-size="pageSize"
                  :page-sizes="[8]"
                  :total="total"
                  layout="total, sizes, prev, pager, next, jumper"
                  @size-change="handleSizeChange"
                  @current-change="handleCurrentChange">
              </el-pagination>
            </div>
            <!--               <div style="padding: 10px 0">
                             <el-pagination
                                 :current-page="pageNum"
                                 layout="total, sizes, prev, pager, next, jumper"
                                 :total="total"
                                 :page-sizes="[2, 5, 10, 20]"
                                 :page-size="pageSize"
                                 :hide-on-single-page="true"
                                 @current-change="handlePageChange"
                                 @size-change="handleSizeChange">
                             </el-pagination>
                           </div>-->
          </div>


        </div>

      </div>
      </body>
    </div>

    <!--    页面滚动设置结束-->
    <el-footer style="height: 2px;"></el-footer> <!--页脚-->

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
    const item = {
      date: '2016-05-02',
      name: '王小虎',
      address: '上海市普陀区金沙江路 1518 弄'
    };
    return {
      user_imageUrl: '',
      user: {},
      activeIndex: '/',
      msg: "hello,world",
      name: 'HomeView',
      activeTab: 'like',
      pageNum: 1,
      pageSize: 8,
      tableData: [],
      museums: [], // 初始化为一个空数组
      total: 0,
      m_name: "",
      sortBy: 'm_favorites',
      filterForm: {
        address: '',
        category: '',
        openingDay: '',
        fare_rule: '',
        isReservedTag: '',


      },
      images: [],
      isHovered: [], // 存储每个博物馆图片的悬停状态
      isClicked: []  // 存储每个博物馆图片的点击状态

    };
  },
  computed: {},
  created() {
    this.user = JSON.parse(localStorage.getItem("honey-user"))
    const user_id = this.user.user_id;
    this.$request.get("/user/select/" + user_id).then(res => {
      this.user_imageUrl = res.imageUrl
      console.log(res)
    }).catch(err => {
      console.error("请求失败:", err);
      this.$message.error("请求失败，请稍后重试");
    });
    this.loadData()
  },

  methods: {
    toHistory() {
      this.$router.push('/browsinghistory')
    },
    toFavorites() {
      this.$router.push('/favorites')
    },
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
    showDetails(image) {
      // 处理点击图片展示详情的逻辑
    },
    sortMuseums() {
      this.tableData = this.tableData.sort((a, b) => {
        return b[this.sortBy] - a[this.sortBy];
      });
    },
    handlePageChange(page) {
      this.currentPage = page;
    },
    applyFilters() {
      this.currentPage = 1;
    },
    // load(){fetch( "http://localhost:9091/museum/page?pageNum="+this.pageNum+"&pageSize="+this.pageSize+"&m_name="+this.m_name)
    //     .then(res => res.json()).then(res =>{
    //       console.log(res)
    //       this.tableData = res.formData
    //       this.total = res.total
    //     })},
    fetchImages() {
      // 使用axios或其他HTTP库从后端API获取图片数据
      // 假设您的后端API端点是 '/api/images'
      fetch("http://localhost:9091/files/images").then(res => res.json()).then(res => {
        console.log("res", res)
        // 创建一个对象，包含url和m_id
        const imageData = {
          url: res[0].url,
          m_id: res[0].m_id
        };
        // 将对象添加到images数组中
        this.images.push(imageData);
      }).catch(error => {
        console.error('Error fetching images:', error);
      });

    },


    loadData() {
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
        this.tableData = combinedData;
      }).catch(error => {
        console.error('Error loading data:', error);
      });
    },
    fetchMuseumData() {

      return fetch("http://localhost:9091/museum/page?" +
          "pageNum=" + this.pageNum
          + "&pageSize=" + this.pageSize
          + "&m_name=" + this.m_name
          + "&address=" + this.filterForm.address
          + "&type=" + this.filterForm.category
          + "&openingDay=" + this.filterForm.openingDay
          + "&fare_rule=" + this.filterForm.fare_rule
          + "&isReservedTag=" + this.filterForm.isReservedTag
          + "&sortBy=" + this.sortBy
      )
          .then(res => res.json())
          .then(res => {
            console.log('Museum data:', res);
            this.total = res.total; // 存储 total 信息
            this.museums = res.formData;
            return res.formData;
          });
    },
    //开放日实现这件事比较困难
    fetchImageData() {
      return fetch("http://localhost:9091/files/images")
          .then(res => res.json());
    },


    handleSizeChange(pageSize) {
      console.log(pageSize)
      this.pageSize = pageSize
      this.loadData()
    },
    spanMethod({row, column, rowIndex, columnIndex}) {
      // 根据需要为每个单元格设置样式
      let styles = '';
      if (rowIndex === 1 && columnIndex === 1) {
        styles = 'top: 800px; left: 30px;'; // 自定义样式
      } else if (rowIndex === 1 && columnIndex === 0) {
        styles = 'top: 50px; left: 100px;'; // 自定义样式
      } else {
        styles = ''; // 默认样式
      }

      // 返回包含样式的对象
      return {style: styles};
    },

    handleCurrentChange(pageNum) {
      console.log(pageNum)
      this.pageNum = pageNum
      this.loadData()
    },

    goToMuseumDetails(museumId, index) {
      // 在这里实现跳转到博物馆详情页的逻辑，传递博物馆的 id
      this.$router.push({path: '/about', query: {id: museumId}});
      // 标记被点击的状态
      this.$set(this.isClicked, index, true);
    },
    changeHoverState(index, isHover) {
      // 标记悬停的状态
      this.$set(this.isHovered, index, isHover);
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