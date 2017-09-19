Vue.component('liu-item',{
    props:['today'],
    template:'<h1>{{today}}</h1>'
})
  var app =new Vue({
        el:'#app',
        data:{
          helloq:'hello word',
          student:[{name:'liu',age:29},
                   {name:'jia',age:12},
                   {name:'huan',age:11}],
          html:'<b>hellow</b>',
          haha:'',
          answer:'zzzz',
  },
    methods:{
      now :function(){
        return Date.now()
  }, 
},
    watch:{
     
       haha: function(newq){
     this.answer='asdfasgf';
}
},
})   
  Vue.component('liu-item',{
    props:['today'],
    template:'<h1>{{today}}</h1>'
})
   app.html="zhizhang";
   console.log(app.now());