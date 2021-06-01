<template>
  <v-footer fixed class="footer">
    <v-btn x-medium to="/about" class="ml-5 mt-3">Règlement</v-btn>
    <v-btn
      v-if="$store.state.isLoggedIn"
      class=" mt-3 mr-5"
      x-medium
      @click="logOut"
      to="/"
      >Déconnexion</v-btn
    >
  </v-footer>
</template>
<script>
export default {
  name: "PageFooter",
  data: () => ({}),
  methods: {
    logOut: function() {
      this.$store.dispatch("logOut");
    },
  },
};
</script>
<style lang="scss" scoped></style>
