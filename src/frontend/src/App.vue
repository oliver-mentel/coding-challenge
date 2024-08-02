<template>
  <h1>VueJS Fullstack Example</h1>
  <ul>
    <li v-for="result in results" :key="result.id">{{ result.name }} ({{ result.version }})</li>
  </ul>
</template>

<script>
  import { defineComponent } from 'vue';
  import axios from 'axios';

  export default defineComponent({
    data() {
      return {
        results: []
      }
    },
    mounted() {
      axios.get('/api').then(response => {
        this.results = response.data
      })
    }
  })
</script>