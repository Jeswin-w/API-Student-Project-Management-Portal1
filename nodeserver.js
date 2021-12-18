const Service = require('node-windows').Service
const svc =new Service({
    name:'nodeBasicServer',
    description: 'Student project management portal',
    script:"C:\\Users\\DELL\\Desktop\\jeswin\\API-Student-Project-Management-Portal-TCE\\ex.js"
});

svc.on('install',function(){
    svc.start()
})

svc.install()