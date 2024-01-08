#define score_holder surrender


function ui:null

item replace entity @s enderchest.0 with red_stained_glass_pane{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate": "...","color":"gray"}'}}
item replace entity @s enderchest.9 with barrier{ui:{id:"back",sound:"click"},CustomModelData:1,display:{Name:'{"translate":"返回","color": "red","italic": false}'}}
item replace entity @s enderchest.18 with red_stained_glass_pane{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate": "...","color":"gray"}'}}



function ui:actions/settings/get_surrender
