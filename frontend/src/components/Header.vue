<template>
  <nav>
    <!-- Start of app toolbar -->
    <v-app-bar app>
      <v-toolbar-title class="headline text-uppercase" >
        <router-link to="/">
          <v-img
            alt="Groupomania Logo"
            class="buttonHeader logo_header"
            contain
            to="/"
            :src="require('../assets/icon-left-font-monochrome-white.png')"
            transition="scale-transition"
            width="300"
          />
        </router-link>
      </v-toolbar-title>
      <v-spacer></v-spacer>
      <v-btn
        v-if="isLogged === true"
        x-medium
        link
        aria-label="fil d'actualité"
        class="buttonHeader"
        to="/posts"
        >Fil d'actualité</v-btn
      >
      <v-btn
        v-if="isLogged === false"
        x-medium
        aria-label="Connexion"
        class="buttonHeader acount_header"
        to="/login"
        >Mon compte</v-btn
      >
      <v-btn
        v-if="isLogged === false"
        x-medium
        aria-label="Inscription"
        class="buttonHeader inscription_header"
        to="/signup"
        >Inscription
        </v-btn>
     
     
      <v-btn
        v-if="isLogged ===true"
        aria-label="profil"
        :to="`/account/${user.id}`"
        icon
        medium
        class="buttonHeader"
        ><v-avatar>
          <img  v-if="user.photo"
            alt="Avatar"
            :src="user.photo"
            class="photo-header">
          <v-icon v-if="user.photo === null"  :color="isLoggedIn" size="35px" class="like-btn">$vuetify.icons.account</v-icon>
        </v-avatar>
       </v-btn
      >
       <v-btn
        v-if="isLogged == true"
        aria-label="tous les profils"
        to="/accounts"
        icon
        small
        class="allProfiles buttonHeader"
        ><v-avatar>
          <v-icon size="35px">$vuetify.icons.friends</v-icon>
        </v-avatar></v-btn
      >
    </v-app-bar>
  </nav>
</template>
<script>
export default {
  name: "PageHeader",
  props: {
    user: {
      type: Object,
    },
  },
  data() {
    return {};
  },
  computed: {
    isLogged() {
      return this.$store.getters.isLogged
    },
    isLoggedIn() {
      if (this.$store.state.isLoggedIn) {
        return "pink";
      } else {
        return "";
      }
    },
   
  },
  methods: {    
    getProfile(id) {
      this.$router.push(`/account/${id}`);
    },
  },
};
</script>
<style lang="scss" scoped>
.v-app-bar{
  display: flex;
  align-items: center;
  justify-content: space-around!important;
  margin: auto;
  background-color: black !important;
}
.buttonHeader{
  margin-left: 30px;
  display: flex;
}

.photo-header {
  width: 80% !important;
  height: 80% !important;
  object-fit: cover;
  
}
 
@media screen and (max-width: 600px) {
  .logo_header{
    
      width: 100px!important;
  }
  .v-btn{
    margin-left: 20px!important;
  }
  .acount_header{
  
       width: 100px;   
        
  }
  .inscription_header{
    width: 100px;
    margin-right: 20px;
  }
}
</style>
