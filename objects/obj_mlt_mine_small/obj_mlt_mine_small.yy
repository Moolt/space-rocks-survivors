{
  "$GMObject":"",
  "%Name":"obj_mlt_mine_small",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_mlt_player","path":"objects/obj_mlt_player/obj_mlt_player.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_mlt_mine_small",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_mlt_enemy","path":"objects/obj_mlt_enemy/obj_mlt_enemy.yy",},"propertyId":{"name":"enemy_lives","path":"objects/obj_mlt_enemy/obj_mlt_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"3",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_mlt_enemy","path":"objects/obj_mlt_enemy/obj_mlt_enemy.yy",},"propertyId":{"name":"enemy_score","path":"objects/obj_mlt_enemy/obj_mlt_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"100",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_mlt_enemy","path":"objects/obj_mlt_enemy/obj_mlt_enemy.yy",},"propertyId":{"name":"move_speed","path":"objects/obj_mlt_enemy/obj_mlt_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"1.5",},
  ],
  "parent":{
    "name":"enemies",
    "path":"folders/Objects/enemies.yy",
  },
  "parentObjectId":{
    "name":"obj_mlt_enemy",
    "path":"objects/obj_mlt_enemy/obj_mlt_enemy.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"projectile_speed","filters":[],"listItems":[],"multiselect":false,"name":"projectile_speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"2","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"projectiles_amount","filters":[],"listItems":[],"multiselect":false,"name":"projectiles_amount","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_mlt_bomb_small",
    "path":"sprites/spr_mlt_bomb_small/spr_mlt_bomb_small.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}