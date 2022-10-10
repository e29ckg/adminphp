// const { info } = require("console");



Vue.createApp({
  data() {
    return {
      q:'2254',
      url_base:'',
      url_base_app:'',
      url_base_now:'',
      datas: [
        {
            id: 'a',
            title: 'my event',
            start: '2022-09-01',
            extendedProps: {
                uid: 5555,
                uname: '',
                ven_date: '',
                ven_time: '',
                DN: '',
                ven_month: '',
                ven_com_id: '',
                st: '',

            }
        }
    ],
    data_event:{ 
        uid: 5555,
        uname: '',
        ven_date: '',
        ven_time: '',
        DN: '',
        ven_month: '',
        ven_com_id: '',
        st: '',
    },
    profiles:[],

    ven_coms  :[],
    ven_coms_index:'',

    ven_com_id  : '',
    ven_month   : '',
    ven_com_name : '',
    ven_com_num : '',
    DN          : '',
    u_role      : '',
    price       : '',

    label_message : '<--กรุณาเลือกคำสั่ง',
    isLoading : false,
  }
  },
  mounted(){
    this.url_base = window.location.protocol + '//' + window.location.host;
    this.url_base_app = window.location.protocol + '//' + window.location.host + '/venset/';
    // const d = 
    this.ven_month = new Date();
    this.get_vens()
    this.cal_render()
    
  },
  watch: {
    q(){
      this.ch_search_pro()
    },
   
  },
  methods: {
    cal_render(){
      var calendarEl = this.$refs['calendar'];
      var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView : 'dayGridMonth',
        initialDate : this.ven_month,
        firstDay    : 1,
        height      : 1200,
        locale      : 'th',
        firstDay    : 1,
        allDayContent      : true,
        // displayEventTime: false, 
        events      : this.datas,
        eventClick: (info)=> {
            console.log(info.event.id +' '+info.event.title)
            console.log(info.event.extendedProps)
            this.cal_click(info.event.id)
        },
                       
      })
      calendar.render();
    },
    cal_click(id){
      axios.post('../../server/dashboard/get_ven.php',{id:id})
          .then(response => {
            // console.log(response.data);
            if (response.data.status) {
              this.data_event = response.data.respJSON
              this.$refs['show_modal'].click()  
            }else{               
              this.alert('warning',response.data.message ,0)  
            }
        })
        .catch(function (error) {        
        console.log(error);  
      });
      this.$refs.show_modal.click()
    },
    get_vens(){
      axios.get('../../server/dashboard/get_vens.php')
      .then(response => {
          // console.log(response.data.respJSON);
          if (response.data.status) {
              this.datas = response.data.respJSON;
              this.cal_render()
          } 
      })
      .catch(function (error) {
          console.log(error);
      });
    },
  },
  
        

}).mount('#dashboard')
