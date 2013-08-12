#
Rails.application.config.middleware.use JQuery::FileUpload::Rails::Middleware
Qiniu::RS.establish_connection! :access_key => "CsYEw1QBZAIPqp4q6wxb3s5Y6AIIuMIgGLW1MEIH",
                                :secret_key => "avkqArZO-O3O736X_hf9-eL5CE2o-nlznwLq4Bzc"
