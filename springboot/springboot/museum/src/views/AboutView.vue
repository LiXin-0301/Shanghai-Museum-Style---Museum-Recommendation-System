<template>
  <div class="about">
    <el-container style="height: 100vh; ">
      <!--      导航栏开始-->
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
                        <el-avatar class="avatar-icon"
                                   icon="el-icon-user-solid"
                                   src="https://q4.itc.cn/q_70/images03/20240405/0fe4005840664f30b76f1a63909a5489.jpeg"></el-avatar>
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
      <!--      导航栏结束-->
      <!--页面滚动设置开始-->
      <el-main style="overflow-y: auto;">
        <div style="height: 2000px; ">

          <!--3D滚动博物馆图片开始-->
          <div class="a">
            <div class="b">
              <div class="c" style="--i:0"></div>
              <div class="d" style="--i:1"></div>
              <div class="e" style="--i:2"></div>
              <div class="f" style="--i:3"></div>
              <div class="g" style="--i:4"></div>
            </div>
            <!--3D滚动博物馆图片结束-->


          </div>
          <!--        博物馆主图-->
          <!--        <el-image
                      style="width: 618px; height: 380px;top: 600px;left:50px"
                      :src="require('@/assets/shanghaimuseum/1.jpg')"
                      fit="cover"></el-image>-->
          <el-image
              v-if="mainImageUrl"
              :src="mainImageUrl"
              fit="cover"
              style="width: 618px; height: 380px; top: 600px; left: 50px;"
          ></el-image>
          <!--        博物馆名字-->
          <el-header id="museumHeader"
                     style="position: relative; top: 220px; left: 740px; color: #2F7D6D; font-size: 40px;">
            {{ currentMuseumName }}
          </el-header>

          <!--        博物馆名字后面还要加评分表示，评分和收藏-->

          <!--        简介栏-->
          <div>
            <!--          记得调简介框的样式结构-->
            <el-card class="custom-card"
                     shadow="hover">
              <div slot="header" class="header">博物馆简介
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span>评分：<span>{{ currentMuseumM_rate }}分</span></span></div>
              <div class="content">
                <p>{{ currentMuseumIntro }}</p>
              </div>
            </el-card>
          </div>


          <!--        “我要收藏”按键-->
          <div>
            <a class="button" @click="toggleFavorite">{{ favoriteButtonText }}</a><!--后端被收藏数增加-->
          </div>

          <!--        “我要评分”按键-->
          <div>
            <a class="button" style="
          position: relative;
          top: -194px;
          left: 1190px;" @click="showDialog"
            >{{ ratingButtonText }}</a>

            <!--          这是评分弹窗！！！-->
            <el-dialog
                :visible.sync="dialogVisible"
                title="评分"
                width="30%"
                @close="handleClose">
              <span>展品质量与丰富度</span>
              <el-rate v-model="rating.exhibits" :texts="texts" show-text></el-rate>
              <br>
              <span>舒适度和整洁度</span>
              <el-rate v-model="rating.comfort" :texts="texts" show-text></el-rate>
              <br>
              <span>游览体验和服务质量</span>
              <el-rate v-model="rating.service" :texts="texts" show-text></el-rate>
              <br>
              <span>设施便利性</span>
              <el-rate v-model="rating.facility" :texts="texts" show-text></el-rate>
              <br>
              <span>活动丰富度</span>
              <el-rate v-model="rating.activity" :texts="texts" show-text></el-rate>
              <span slot="footer" class="dialog-footer">

    <el-button @click="cancelDialog">取消</el-button>
    <el-button type="primary" @click="confirmDialog">确定</el-button>
  </span>
            </el-dialog>


          </div>

          <!--        游览参考信息栏-->
          <el-card class="basic-card" shadow="hover">
            <div slot="header" class="header">
              游览参考信息
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a v-if="currentMuseumOfficial" :href="currentMuseumOfficial" target="_blank">官网网址</a>
            </div>
            <div class="content">
              <div class="info-line">
                <span class="label">地址：</span>
                <span class="value">{{ currentMuseumAddress }}</span>
                <span class="label right-align">类型：</span>
                <span class="value right-align">{{ currentMuseumType }}</span>
              </div>
              <div class="info-line">
                <span class="label">开放时间：</span>
                <span class="value">{{ currentMuseumOpen_time }}</span>
                <span class="label right-align">门票价格：</span>
                <span class="value right-align">{{ currentMuseumFare_rule }}</span>
              </div>
            </div>
          </el-card>

          <!--        可视化栏开始-->
          <div>
            <el-card class="Visual-card"
                     shadow="hover">
              <div slot="header" class="header">博物馆可视化面板</div>
              <div class="content">
                <p>这是还没换好的可视化面板！！！</p>
                <template xmlns="http://www.w3.org/1999/html">
                  <div>
                    <canvas id="myChart"></canvas>
                  </div>

                </template>
              </div>

            </el-card>
          </div>
          <!--        可视化栏结束-->
        </div>


      </el-main>
      <!--    页面滚动设置结束-->
      <el-footer style="height: 2px;"></el-footer> <!--页脚-->
    </el-container>

  </div>
</template>
<script>
import Chart from 'chart.js/auto';

export default {
  name: 'App',
  data() {
    return {
      user_imageUrl: '',
      user: {},
      activeIndex: '/about',
      isFavorite: false,
      dialogVisible: false,
      isRated: false,
      value1: null,
      value2: null,
      colors: ['#99A9BF', '#42b983', '#2a8c63'],// 等同于 { 2: '#99A9BF', 4: { value: '#F7BA2A', excluded: true }, 5: '#FF9900' }
      rating: {
        exhibits: null,
        comfort: null,
        service: null,
        facility: null,
        activity: null
      },
      total: 0,
      texts: ['1-失望', '2-不满意', '3-一般', '4-满意', '5-非常好'],
      tableData: [],
      museums: [], // 初始化为一个空数组
      images: [],
      isHovered: [], // 存储每个博物馆图片的悬停状态
      isClicked: [], // 存储每个博物馆图片的点击状态
      mainImageUrl: null, // 存储主图的 URL
      filteredMuseums: [],
      currentMuseumName: '', // 新增属性
      currentMuseumAddress: '',//current开头的都是根据点进去的博物馆替换的
      currentMuseumOfficial: '',
      currentMuseumOpen_time: '',
      currentMuseumFare_rule: '',
      currentMuseumM_rate: '',
      currentMuseumType: '',
      pageId: null,
      museum: {
        m_id: 2
      }

    };
  },
  computed: {
    favoriteButtonText() {
      return this.isFavorite ? '取消收藏' : '我要收藏';
    },
    ratingButtonText() {
      return this.isRated ? '已评分' : '我要评分';
    }
  },
  created() {
    this.fetchImages();
    this.fetchMainImages();
    this.fetchMuseumData();
    this.fetchDataAndRenderChart();
    this.m_id = this.$route.query.id
    this.user = JSON.parse(localStorage.getItem("honey-user"))
    const user_id = this.user.user_id;
    this.request.get("//museum/find?m_id=" + this.m_id).then(res => {
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
    toggleFavorite() {

      if (this.isFavorite) {
        fetch('http://localhost:9091/favorites/add?m_id=' + 1 + '&user_id=' + this.user.user_id).then(res => {
          if (res.status === 500) {
            this.$notify.error('系统错误')
            return {}
          }
          return res.json()
        }).then(res => {
          this.isFavorite = !this.isFavorite;
        })
      } else {
        fetch('http://localhost:9091/favorites/delete?id=2').then(res => {
          if (res.status === 500) {
            this.$notify.error('系统错误')
            return {}
          }
          return res.json()
        }).then(res => {
          this.isFavorite = !this.isFavorite;
        })
      }

    },
    showDialog() {
      this.dialogVisible = true;
    },
    handleClose() {
      // 处理弹窗关闭事件（例如，点击弹窗外部或按下 ESC 键）
    },
    cancelDialog() {
      this.dialogVisible = false;
    },
    load() {
      fetch('http://localhost:9091/rating?m_id=2').then(res => {
        if (res.status === 500) {
          this.$notify.error('系统错误')
          return {}
        }
        return res.json()
      }).then(res => {
        this.currentMuseumM_rate = res.exhibits
      })
    },
    confirmDialog() {
      this.dialogVisible = false;
      this.isRated = true;
      this.rating.m_id = 2;
      this.rating.user_id = 1;
      fetch('http://localhost:9091/rating', {
        method: 'post',
        headers: {
          'Rating-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify(this.rating)
      }).then(res => {
        if (res.status === 200) {
          this.$notify.success('成功')
          this.load()
          this.rating = {}
        }
      })
    },
    /*这是用来替换详情页主图的代码*/
    fetchMainImages() {
      const pageId = parseInt(new URLSearchParams(window.location.search).get('id')); // 获取页面 id 参数
      fetch("http://localhost:9091/files/images")
          .then(res => res.json())
          .then(images => {
            //console.log("Fetched images:", images);

            // 找到与页面 id 一致的图片
            const image = images.find(img => img.m_id === pageId);
            if (image) {
              this.mainImageUrl = image.url; // 设置主图 URL
            }
          })
          .catch(error => {
            console.error("Error fetching images:", error);
          });
    },
    mounted() {
      this.fetchMainImages();
      this.fetchMuseumData();
      this.fetchDataAndRenderChart();// 在组件挂载后调用
    },
    /*这是用来替换详情页主图的代码*——到这里结束/



    /*这是用来替换做3d效果图片的代码*/
    fetchImages() {
      const pageId = new URLSearchParams(window.location.search).get('id'); // 获取页面 id 参数
      console.log("page", pageId)
      // 使用axios或其他HTTP库从后端API获取图片数据
      // 假设您的后端API端点是 '/api/images'
      fetch("http://localhost:9091/files/images1")
          .then(res => res.json())
          .then(res => {
            console.log("res", res);
            // 初始化类索引
            let classIndex = 99; // 'c' 的 ASCII 值
            // 遍历图片数据
            res.forEach(image => {
              // 如果图片的 m_id 与页面 id 相同，则添加到对应的类中
              if (image.m_id === parseInt(pageId)) {
                const className = String.fromCharCode(classIndex); // 根据 m_id 计算类名，对应于 cdefg
                this.addBackgroundImage(className, image.url); // 调用函数添加背景图片
                classIndex++; // 增加索引以便下一次循环使用下一个类
              }
            });
          })
          .catch(error => {
            console.error('Error fetching images:', error);
          });
    },
    addBackgroundImage(className, url) {
      const elements = document.querySelectorAll('.' + className); // 获取所有具有相同类名的元素
      elements.forEach(element => {
        element.style.backgroundImage = `url(${url})`; // 设置背景图片
      });
    },
    /*这是用来替换做3d效果图片的代码——到这里结束*/


    /*这是用来管文本替换的*/
    fetchMuseumData() {
      this.pageId = parseInt(new URLSearchParams(window.location.search).get('id'), 10); // 将获取到的ID转为整数
      const pageID = this.pageId
      return fetch("http://localhost:9091/museum/find?" +
          "&m_id=" + pageID
      ).then(res => res.json()).then(res => {
        //console.log('Museum data:', res);
        this.total = res.total; // 存储 total 信息
        this.museums = res.formData;
        this.currentMuseumName = res[0].m_name;
        this.currentMuseumIntro = res[0].m_intro;
        this.currentMuseumAddress = res[0].address;
        this.currentMuseumType = res[0].type;
        this.currentMuseumOpen_time = res[0].open_time;
        this.currentMuseumFare_rule = res[0].fare_rule;
        this.currentMuseumM_rate = res[0].m_rate;
        this.currentMuseumOfficial = res[0].official;


        return res.formData;
      });
    },
    /*这是用来管文本替换的——到这里结束*/

    fetchDataAndRenderChart() {
      const pageId = parseInt(new URLSearchParams(window.location.search).get('id'), 10); // 将获取到的ID转为整数
      const id = pageId;
      console.log("page", pageId)
      if (!id) {
        this.$message.error("当前无法获取信息");
        return;
      }
      return fetch("http://localhost:9091/museum/find?" + "&m_id=" + pageId
      )
          /*this.request.get("/museum/score/" + id)*/
          .then(res => {
            console.log("RES", res)
            // 确保res不为空数组
            if (res.length > 0) {
              // 构建分数数据对象
              const scoreData = {
                exhibits: res[0].exhibits,
                comfort: res[0].comfort,
                service: res[0].service,
                facility: res[0].facility,
                activity: res[0].activity
              };
              console.log('scoreData', scoreData)
              this.renderChart(scoreData);
            } else {
              console.log("响应数据为空");
            }
          }).catch(err => {
            console.error("请求失败:", err);
            this.$message.error("请求失败，请稍后重试");
          });
    },

    renderChart(scoreData) {
      const ctx = document.getElementById('myChart');
      console.log("ctx", ctx)
      new Chart(ctx, {
        type: 'radar',
        data: {
          labels: ['展品质量和丰富度', '舒适度和整洁度', '游览体验和服务质量', '设施便利性', '活动丰富度'],
          datasets: [{
            label: '博物馆综合评价',
            data: [scoreData.exhibits, scoreData.comfort, scoreData.service, scoreData.facility, scoreData.activity],
            fill: true,
            backgroundColor: 'rgba(66, 185, 131, 0.2)',
            borderColor: 'rgb(66 185 131)',
            pointBackgroundColor: 'rgb(42 140 99)',
            pointBorderColor: '#fff',
            pointHoverBackgroundColor: '#fff',
            pointHoverBorderColor: 'rgb(255, 99, 132)'
          }]
        },
        options: {
          elements: {
            point: {
              radius: 6 // 修改点的大小
            },
            line: {
              borderWidth: 3,
            }
          },
          plugins: {
            legend: {
              labels: {
                font: {
                  size: 25, // 修改标签的字号
                  family: '宋体', // 字体
                  weight: 'bold', // 字重
                  fontColor: 'rgb(0,0,0)' //字体颜色
                }
              }
            }
          },
          scales: {
            r: {    //轴选项
              angleLines: {
                color: 'rgb(131 131 131)', // 设置轴的颜色
                lineWidth: 2 // 设置线条的粗细
              },
              grid: {
                color: 'rgb(131 131 131)', // 设置环轴的颜色
                lineWidth: 2 // 设置线条的粗细
              },
              pointLabels: {
                font: {
                  size: 14, // 修改轴标题的字号
                  family: '微软雅黑', // 字体
                  weight: 'bold' // 字重
                }
              },
              suggestedMin: 0,
              suggestedMax: 5
            }
          }
        }
      });
    }

  }
};

</script>

<style>

</style>

