execute store result score #perm_count gulce_id run data get storage mc:handler data.permissions
execute as @a if score @s gulce_id = #perm_count gulce_id run tag @s add gulce_permitted
