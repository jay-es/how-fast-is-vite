<template>
  <h1>lodash: {{ lodash }}</h1>
  <!-- <h1>{{ msg }}</h1> -->
  <button @click="count++">count is: {{ count }}</button>
  <p>Edit <code>components/HelloWorld.vue</code> to test hot module replacement.</p>
</template>

<script>
// import lodash from 'lodash-es'

export default {
  name: 'HelloWorld',
  props: {
    msg: String
  },
  data() {
    return {
      count: 0
    }
  },
  computed: {
    lodash: () => typeof lodash
  }
}
</script>
