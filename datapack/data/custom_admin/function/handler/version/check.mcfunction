# Storage'da versiyon yok → ilk kurulum
execute unless data storage mc:handler data.meta run function custom_admin:handler/version/init
# Versiyon yanlışsa düzelt
execute if data storage mc:handler data.meta run execute unless data storage mc:handler data.meta{version:"1.0.0"} run function custom_admin:handler/version/migrate
