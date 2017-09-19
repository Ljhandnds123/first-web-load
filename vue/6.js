new Vue({
 el:'#app',
 data:{counter:0,
  },
 computed:{
  
  },
})
 var myVue = new Vue({
                el: '#test',
                methods: {      //这里使用methods
                    sayHi: function (message) {
                        alert(message)
                    }
                }
            })