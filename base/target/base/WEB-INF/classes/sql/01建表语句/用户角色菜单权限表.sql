drop table if exists CB_GROUP;

drop table if exists CB_MENU;

drop table if exists CB_MENU_OPTS;

drop table if exists CB_ROLE;

drop table if exists CB_ROLE_MENU;

drop table if exists CB_ROLE_OPTS;

drop table if exists CB_USER;

drop table if exists CB_USER_ROLE;

/*==============================================================*/
/* Table: CB_GROUP                                              */
/*==============================================================*/
create table CB_GROUP
(
   ID                   varchar(32) comment '主键ID',
   PARENT_ID            varchar(32) comment '父ID',
   GROUP_NAME           varchar(20) not null comment '组名称',
   CREATE_TIME          timestamp comment '创建时间'
);

alter table CB_GROUP comment '分组表';

/*==============================================================*/
/* Table: CB_MENU                                               */
/*==============================================================*/
create table CB_MENU
(
   ID                   varchar(32) not null comment '主键ID',
   PARENT_ID            varchar(32) comment '父ID',
   MENU_CODE            varchar(20) not null comment '菜单编码',
   MENU_NAME            varchar(20) not null comment '菜单名称',
   MENU_URL             varchar(100) comment '菜单地址',
   MENU_SORT            int comment '菜单顺序',
   IS_USE               tinyint default 1 comment '是否启用（0 不启用，1 启用）',
   CREATE_TIME          timestamp comment '创建时间',
   primary key (ID)
);

alter table CB_MENU comment '菜单表';

/*==============================================================*/
/* Table: CB_MENU_OPTS                                          */
/*==============================================================*/
create table CB_MENU_OPTS
(
   ID                   varchar(32) not null comment '主键ID',
   MENU_ID              varchar(32) not null comment '菜单表主键ID',
   OPTS_CODE            varchar(20) not null comment '操作编码',
   OPTS_NAME            varchar(10) not null comment '操作名称',
   OPTS_METHOD          varchar(50) comment '操作方法',
   OPTS_SORT            int comment '操作顺序',
   IS_USE               tinyint default 1 comment '是否启用：0 不启用，1 启用',
   CREATE_TIME          timestamp comment '创建时间',
   primary key (ID)
);

alter table CB_MENU_OPTS comment '菜单操作表';

/*==============================================================*/
/* Table: CB_ROLE                                               */
/*==============================================================*/
create table CB_ROLE
(
   ID                   varchar(32) not null comment '主键ID',
   ROLE_NAME            varchar(20) not null comment '角色名称',
   CREATE_TIME          timestamp comment '创建时间',
   primary key (ID)
);

alter table CB_ROLE comment '角色表';

/*==============================================================*/
/* Table: CB_ROLE_MENU                                          */
/*==============================================================*/
create table CB_ROLE_MENU
(
   ID                   varchar(32) not null comment '主键ID',
   ROLE_ID              varchar(32) not null comment '角色ID',
   MENU_ID              varchar(32) not null comment '菜单ID',
   primary key (ID)
);

alter table CB_ROLE_MENU comment '角色与菜单中间表';

/*==============================================================*/
/* Table: CB_ROLE_OPTS                                          */
/*==============================================================*/
create table CB_ROLE_OPTS
(
   ID                   varchar(32) not null comment '主键ID',
   ROLE_ID              varchar(32) not null comment '角色表主键ID',
   OPTS_ID              varchar(32) not null comment '操作表主键ID',
   primary key (ID)
);

alter table CB_ROLE_OPTS comment '角色操作表';

/*==============================================================*/
/* Table: CB_USER                                               */
/*==============================================================*/
create table CB_USER
(
   ID                   varchar(32) not null comment '主键',
   GROUP_ID             varchar(32) comment '组表主键ID',
   ACCOUNT              varchar(50) not null comment '登录账号',
   USER_NAME            varchar(50) comment '用户名',
   PASSWORD             varchar(32) not null comment '密码',
   NIKE_NAME            varchar(50) comment '昵称',
   SEX                  tinyint default 2 comment '性别（0 男，1 女，2 保密）',
   MOBILE               int comment '手机号',
   EMAIL                varchar(50) comment '电子邮箱',
   HEAD_URL             varchar(100) comment '头像地址',
   CREATE_TIME          timestamp comment '创建时间',
   primary key (ID)
);

alter table CB_USER comment '用户表';

/*==============================================================*/
/* Table: CB_USER_ROLE                                          */
/*==============================================================*/
create table CB_USER_ROLE
(
   ID                   varchar(32) not null comment '主键ID',
   USER_ID              varchar(32) not null comment '用户ID',
   ROLE_ID              varchar(32) not null comment '角色ID',
   primary key (ID)
);

alter table CB_USER_ROLE comment '用户与角色中间表';
