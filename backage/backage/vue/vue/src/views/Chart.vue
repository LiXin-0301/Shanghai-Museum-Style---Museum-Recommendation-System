<template xmlns="http://www.w3.org/1999/html">
      <div>
        <canvas id="myChart"></canvas>
      </div>

</template>
<script>
import request from "@/utils/request";
import Chart from 'chart.js/auto';
export default {
  data() {
    return {
      /*此为测试所用的特殊用例，正式使用时应该从页面获取*/
      museum: {
        m_id: 2
      }
    };
  },
  mounted() {
    this.fetchDataAndRenderChart();
  },
  methods: {
    fetchDataAndRenderChart() {
      const id = this.museum.m_id ;
      if (!id) {
        this.$message.error("当前无法获取信息");
        return;
      }
      this.request.get("/museum/score/" + id).then(res =>{
        console.log(res)
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
          console.log('scoreData',scoreData)
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
      new Chart(ctx, {
        type: 'radar',
        data: {
          labels: ['展品质量和丰富度', '舒适度和整洁度', '游览体验和服务质量', '设施便利性', '活动丰富度'],
          datasets: [{
            label: '博物馆综合评价',
            data: [scoreData.exhibits,scoreData.comfort,scoreData.service,scoreData.facility,scoreData.activity],
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
}
</script>
