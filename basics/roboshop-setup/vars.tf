variable "ALL_COMPONENTS" {



    default =  {
mongodb   =  {
            app_version  =  "null"
        },
        catalogue   =  {
            app_version  =  "0.0.2"
        },
        redis   =  {
            app_version  =  "null"
        },
        cart   =  {
            app_version  =  "0.0.2"
        },
        user   =  {
            app_version  =  "0.0.2"
        },
        mysql   =  {
            app_version  =  "null"
        },
        shipping   =  {
            app_version  =  "0.0.1"
        },
        rabbitmq   =  {
            app_version  =  "null"
        },
        payment   =  {
            app_version  =  "0.0.2"
        },
        frontend   =  {
            app_version  =  "0.0.3"
        }
    }
}