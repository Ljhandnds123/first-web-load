var app = new Vue({
  el:'#app',
  data:{
     isActive:true,
     one:'one',
     two:'two',
     fontSize:30,
     color:'blue',
  },
  computed:{
     classObject:function(){
         return{
        active: this.isActive,
      }
    }
  }
})