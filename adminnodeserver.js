const Service = require('node-windows').Service
const svc =new Service({
    name:'adminnodeBasicServer',
    description: 'Student project management portal admin',
    script:"C:\\Users\\DELL\\Desktop\\jeswin\\API-Student-Project-Management-Portal-TCE\\admin.js"
});

svc.on('install',function(){
    svc.start()
})

svc.install()