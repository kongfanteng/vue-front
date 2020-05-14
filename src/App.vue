<template>
  <ul>
    <li v-for="user in users" :key="user.id">嗯嗯啊沙发沙发{{ user.id }}： {{ user.name }}</li>
  </ul>
</template>
<script>
import axios from "axios";
export default {
  name: "app",
  data() {
    return {
      users: []
    };
  },
  mounted() {
    axios.get("http://47.114.114.152:3000/api/users").then(res => {
      this.users = res.data;
    });
  }
};
</script>