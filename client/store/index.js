import Vuex from 'vuex'
//import axios from 'axios'

export const strict = false
export const state = () => ({
    userInfo:{},
    allPosts:[],
    allcomments:[],
    allreplycomment:[],
    allPostsByCurrentAuthuser:[],
    authUser: false,
})
// common getters
export const getters ={
  getUserInfo(state){
   return state.userInfo;
  },
  getAllPosts(state){
   return state.allPosts;
  },
  getallcomments(state){
    return state.allcomments;
   },
  getallPostsByCurrentAuthuser(state){
  return state.allPostsByCurrentAuthuser;
  },
  getallreplycomment(state){
     return state.allreplycomment;
  },
  getAuthUser(state){
    return state.authUser
  },
}
//mutations for changing data from action
export const mutations = {
  setUserInfo(state, data){
    state.userInfo = data;
  },
  setAllPosts(state,data){
   // console.log(data)
     state.allPosts = data;  
  },
  setAllcomments(state,data){
    // console.log(data)
      state.allcomments = data;  
   },
  setAllreplycomment(state,data){
   // console.log(data)
   state.allreplycomment = data
  },
  setallPostsByCurrentAuthuser(state,data){
   state.allPostsByCurrentAuthuser = data
  },
  loginUser(state, data) {
    state.authUser = data
  },
  removePost(state, index){
    state.allPosts.splice(index, 1);
  },
  removecomment(state, index){
    state.allcomments.splice(index, 1);
  },
  removereplyComment(state, index){
    state.allreplycomment.splice(index, 1);
  },
}
// actionns for commiting mutations
export const actions = {
  async nuxtServerInit({ commit }, { $axios }) {
    
    try {
      // get the initial data
      let { data } = await $axios.get('/auth/getUser')
      commit('loginUser', data)
      
    } catch (e) {
        console.log('Pleae login ')
    }
  },
}
