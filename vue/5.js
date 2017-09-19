var data = { counter: 0 }
Vue.component('simple-counter', {
  template: '<button v-on:click="counter += 1">{{ counter }}</button>',
  // ������ data ��ȷ��һ�������ˣ���� Vue ���ᾯ�棬
  // �������Ƿ��ظ�ÿ�������ʵ����ȴ������ͬһ��data����
  data: function () {
    return {counter:0}
  }
})
Vue.component('child',{
   props:['message'],
   template:'<h1>{{message}}</h1>',
  

})
Vue.component('newbee',{
   props:['message'],
   template:'<h1>{{message}}</h1>',
   data:{
     return{counter:this.message}
   }
   
})
new Vue({
  el: '#example-2',
  data:{
   message:"hehe",
  }
})