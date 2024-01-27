setblock ~1 ~ ~ air
function lobby:tutorial/green_left

data modify storage lobby:data tutorial append value {data:{func:"lobby:tutorial/opening/ticker",posX:-15,posY:43,posZ:-78,time:0},name:"opening"}