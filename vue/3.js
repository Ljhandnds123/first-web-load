var app = new Vue({
  el:'#app',
  data:{
    show:false,
    loginType:'username',
  },
  methods:{
    keke:function(){
       if(this.loginType==='username'){ return this.loginType = '';}
       else{ return this.loginType='username'}
    }
  }
})