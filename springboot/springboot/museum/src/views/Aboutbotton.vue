<template>
  <el-button type="primary" @click="gotoAbout">Go to About Page</el-button>
</template>

<script>
export default {
  methods: {
    gotoAbout() {
      this.$router.push('/about');
    }
  }
}
</script>
