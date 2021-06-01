<template>
  <v-container class="home-container">
    <v-row class="text-center bandeau">
      <v-col cols="12">
        <v-img
          :src="require('../assets/logo_transparent.png')"
          class="my-2 "
          contain
          height="100"
          alt="logo"
        />
        <h1>
          Retrouvez ici tous vos collegues!
        </h1>
      </v-col>
    </v-row>
  </v-container>
</template>
<!--<template>
  <div>
    <img src="../assets/logo_transparent.png" alt="logo">
    <h1>Retrouvez ici tous vos collegues</h1>
  </div>
</template>-->
<script>
export default {
  name: "Home",

  methods: {
    logOut: function() {
      this.$store.dispatch("logOut");
    },
  },
};
</script>
<style lang="scss" scoped>
.home-container {
  background-color: #245e97; 
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100%;
  width: 100%;
}
.bandeau {
  background-color: rgb(119, 136, 153);
  display: flex;
  justify-content: center;
  align-items: center;
  height: 50%;
}

</style>
