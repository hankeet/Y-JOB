
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/07/2017 13:11:34
-- Generated from EDMX file: F:\Appmanager\App-manager\App-manager.Model\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [JianZhi];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[fk_gongzuoqiuzhi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengQiuZhi] DROP CONSTRAINT [fk_gongzuoqiuzhi];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengshoucanggongzuo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShouCangGongZuo] DROP CONSTRAINT [fk_xueshengshoucanggongzuo];
GO
IF OBJECT_ID(N'[dbo].[fk_zuduigongzuo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HaoYouXinXi] DROP CONSTRAINT [fk_zuduigongzuo];
GO
IF OBJECT_ID(N'[dbo].[fk_shangjiajiaoyijilu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShangJiaJiaoYiJiLu] DROP CONSTRAINT [fk_shangjiajiaoyijilu];
GO
IF OBJECT_ID(N'[dbo].[fk_shangjiaqiuzhi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengQiuZhi] DROP CONSTRAINT [fk_shangjiaqiuzhi];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengshoucangshangjia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShouCangShangJia] DROP CONSTRAINT [fk_xueshengshoucangshangjia];
GO
IF OBJECT_ID(N'[dbo].[fk_haoyou]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HaoYouXinXi] DROP CONSTRAINT [fk_haoyou];
GO
IF OBJECT_ID(N'[dbo].[fk_shangjiajiaoyijilu1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShangJiaJiaoYiJiLu] DROP CONSTRAINT [fk_shangjiajiaoyijilu1];
GO
IF OBJECT_ID(N'[dbo].[fk_shangjiaqiuzhi1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengQiuZhi] DROP CONSTRAINT [fk_shangjiaqiuzhi1];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengshoucangshangjia1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShouCangShangJia] DROP CONSTRAINT [fk_xueshengshoucangshangjia1];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengshoucangz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShouCangGongZuo] DROP CONSTRAINT [fk_xueshengshoucangz];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengshoucangs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ShouCangShangJia] DROP CONSTRAINT [fk_xueshengshoucangs];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengjiaoyijilu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengJiaoYiJiLu] DROP CONSTRAINT [fk_xueshengjiaoyijilu];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengkecheng]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengKeCheng] DROP CONSTRAINT [fk_xueshengkecheng];
GO
IF OBJECT_ID(N'[dbo].[fk_xueshengqiuzhi]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[XueShengQiuZhi] DROP CONSTRAINT [fk_xueshengqiuzhi];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[GongZuoLeiXing]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GongZuoLeiXing];
GO
IF OBJECT_ID(N'[dbo].[GongZuoXinXi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GongZuoXinXi];
GO
IF OBJECT_ID(N'[dbo].[HaoYouXinXi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HaoYouXinXi];
GO
IF OBJECT_ID(N'[dbo].[ShangJiaJiaoYiJiLu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShangJiaJiaoYiJiLu];
GO
IF OBJECT_ID(N'[dbo].[ShangJiaXinXi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShangJiaXinXi];
GO
IF OBJECT_ID(N'[dbo].[ShouCangGongZuo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShouCangGongZuo];
GO
IF OBJECT_ID(N'[dbo].[ShouCangShangJia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShouCangShangJia];
GO
IF OBJECT_ID(N'[dbo].[XueShengJiaoYiJiLu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[XueShengJiaoYiJiLu];
GO
IF OBJECT_ID(N'[dbo].[XueShengKeCheng]', 'U') IS NOT NULL
    DROP TABLE [dbo].[XueShengKeCheng];
GO
IF OBJECT_ID(N'[dbo].[XueShengQiuZhi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[XueShengQiuZhi];
GO
IF OBJECT_ID(N'[dbo].[ZhaoPinZheLeiXing]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ZhaoPinZheLeiXing];
GO
IF OBJECT_ID(N'[dbo].[ShangJiaXinXi2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ShangJiaXinXi2];
GO
IF OBJECT_ID(N'[dbo].[XueShengXinXi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[XueShengXinXi];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'GongZuoLeiXing'
CREATE TABLE [dbo].[GongZuoLeiXing] (
    [id] int IDENTITY(1,1) NOT NULL,
    [gongzuoleixing1] varchar(50)  NOT NULL
);
GO

-- Creating table 'GongZuoXinXi'
CREATE TABLE [dbo].[GongZuoXinXi] (
    [id] int IDENTITY(1,1) NOT NULL,
    [zhaopinbiaoti] nvarchar(50)  NULL,
    [zhaoPinZheLeiXingid] nvarchar(50)  NULL,
    [gongZuoLeiXing] nvarchar(50)  NULL,
    [sex] nvarchar(max)  NULL,
    [zhouMoJianZhi] nvarchar(10)  NULL,
    [xinChouShuLiang] nvarchar(50)  NULL,
    [zhaoPinRenShu] nvarchar(50)  NULL,
    [kaiShiShiJian] nvarchar(50)  NULL,
    [jieZhiShiJian] nvarchar(50)  NULL,
    [chengShiQuYu] nvarchar(50)  NULL,
    [gongZuoDiZhi] nvarchar(max)  NULL,
    [xiangQing] nvarchar(max)  NULL,
    [lianXiFangShi] nvarchar(50)  NULL,
    [faBuShiJian] datetime  NULL,
    [yingPinXueShengid] int  NULL,
    [yingPinQingKuang] nvarchar(50)  NULL,
    [luYongXueShengid] int  NULL,
    [luYongQingKuang] nvarchar(50)  NULL,
    [yunXuFaBu] varchar(2)  NULL,
    [zhaoMan] varchar(2)  NULL
);
GO

-- Creating table 'HaoYouXinXi'
CREATE TABLE [dbo].[HaoYouXinXi] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NULL,
    [xueSheng1id] int  NULL,
    [xueSheng2id] int  NULL,
    [liaotian] varchar(max)  NULL,
    [jiaoYouShiJian] datetime  NULL,
    [zuDuiCiShu] int  NULL,
    [zuduigongzuo] int  NULL
);
GO

-- Creating table 'ShangJiaJiaoYiJiLu'
CREATE TABLE [dbo].[ShangJiaJiaoYiJiLu] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [shangJiaid] int  NOT NULL,
    [jiLu] varchar(max)  NULL,
    [wanCheng] varchar(2)  NOT NULL,
    [pingJia] varchar(max)  NULL,
    [wanChengJiaoYiShiJian] datetime  NULL
);
GO

-- Creating table 'ShangJiaXinXi'
CREATE TABLE [dbo].[ShangJiaXinXi] (
    [id] int IDENTITY(1,1) NOT NULL,
    [gongSi] nvarchar(50)  NULL,
    [fuZeRen] nvarchar(50)  NULL,
    [zhengJianHao] nvarchar(50)  NULL,
    [head_image] varbinary(50)  NULL,
    [phone] nvarchar(50)  NULL,
    [pass] nvarchar(50)  NULL,
    [xuKeZheng] varbinary(50)  NULL,
    [huiYuan] nvarchar(50)  NULL,
    [diZhi] nvarchar(50)  NULL,
    [tongGuo] nvarchar(50)  NULL,
    [leiXing] nvarchar(50)  NULL,
    [zaoPinCiShu] nvarchar(50)  NULL,
    [xinYong] nvarchar(50)  NULL,
    [qq] nchar(10)  NULL,
    [weixin] nvarchar(50)  NULL,
    [day_login] datetime  NULL,
    [zhaoPinCiShi] nvarchar(50)  NULL
);
GO

-- Creating table 'ShouCangGongZuo'
CREATE TABLE [dbo].[ShouCangGongZuo] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [xueShengid] int  NOT NULL,
    [gongZuoid] int  NOT NULL,
    [shiJian] datetime  NOT NULL,
    [shiXiao] varchar(2)  NOT NULL
);
GO

-- Creating table 'ShouCangShangJia'
CREATE TABLE [dbo].[ShouCangShangJia] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [xueShengid] int  NOT NULL,
    [shangJiaid] int  NOT NULL,
    [shiJian] datetime  NOT NULL,
    [shiXiao] varchar(2)  NOT NULL
);
GO

-- Creating table 'XueShengJiaoYiJiLu'
CREATE TABLE [dbo].[XueShengJiaoYiJiLu] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [xueShengid] int  NOT NULL,
    [jiLu] varchar(max)  NULL,
    [wanCheng] varchar(2)  NOT NULL,
    [pingJia] varchar(max)  NULL,
    [wanChengJiaoYiShiJian] datetime  NULL,
    [keJian] varchar(2)  NOT NULL
);
GO

-- Creating table 'XueShengKeCheng'
CREATE TABLE [dbo].[XueShengKeCheng] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NOT NULL,
    [xueshengid] int  NOT NULL,
    [xuexiao] varchar(50)  NOT NULL,
    [xuehao] varchar(30)  NOT NULL,
    [xuehaopass] varchar(50)  NOT NULL,
    [yi] varchar(max)  NULL,
    [er] varchar(max)  NULL,
    [san] varchar(max)  NULL,
    [si] varchar(max)  NULL,
    [wu] varchar(max)  NULL,
    [liu] varchar(max)  NULL,
    [qi] varchar(max)  NULL
);
GO

-- Creating table 'XueShengQiuZhi'
CREATE TABLE [dbo].[XueShengQiuZhi] (
    [id] int IDENTITY(1,1) NOT NULL,
    [gongZuoLeiXingid] int  NOT NULL,
    [name] varchar(30)  NOT NULL,
    [titie] varchar(50)  NOT NULL,
    [xinXi] varchar(max)  NOT NULL,
    [faBuShiJian] datetime  NOT NULL,
    [xueShengid] int  NOT NULL,
    [shangJiaid] int  NOT NULL,
    [zhongyishangjia] varchar(max)  NULL,
    [xuanze商家] varchar(max)  NULL,
    [chengLiShiJian] datetime  NULL
);
GO

-- Creating table 'ZhaoPinZheLeiXing'
CREATE TABLE [dbo].[ZhaoPinZheLeiXing] (
    [id] int  NOT NULL,
    [zhaoPinZheLeiXing1] int  NOT NULL,
    [zhaoPinZheXinXiid] int  NOT NULL
);
GO

-- Creating table 'ShangJiaXinXi2'
CREATE TABLE [dbo].[ShangJiaXinXi2] (
    [id] int IDENTITY(1,1) NOT NULL,
    [gongSi] nvarchar(50)  NULL,
    [fuZeRen] nvarchar(50)  NULL,
    [zhengJianHao] nvarchar(50)  NULL,
    [head_image] varbinary(max)  NULL,
    [phone] nvarchar(50)  NULL,
    [pass] nvarchar(50)  NULL,
    [xuKeZheng] varbinary(max)  NULL,
    [huiYuan] nvarchar(50)  NULL,
    [diZhi] nvarchar(50)  NULL,
    [tongGuo] nvarchar(50)  NULL,
    [leiXing] nvarchar(50)  NULL,
    [zaoPinCiShu] nvarchar(50)  NULL,
    [xinYong] nvarchar(50)  NULL,
    [qq] nvarchar(50)  NULL,
    [weixin] nvarchar(50)  NULL,
    [day_login] datetime  NULL
);
GO

-- Creating table 'XueShengXinXi'
CREATE TABLE [dbo].[XueShengXinXi] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(30)  NULL,
    [head_image] varbinary(max)  NULL,
    [phone] varchar(11)  NULL,
    [pass] varchar(30)  NULL,
    [huiYuan] varchar(2)  NULL,
    [diZhi] varchar(100)  NULL,
    [chuShengRiQi] datetime  NULL,
    [nianJi] varchar(200)  NULL,
    [shouCangShangJia] varchar(max)  NULL,
    [shouCangGongZuo] varchar(max)  NULL,
    [ciShu] int  NULL,
    [xinYong] int  NULL,
    [shangJia] varchar(2)  NULL,
    [zhaoPinZheid] int  NULL,
    [qq] varchar(20)  NULL,
    [weixin] varchar(20)  NULL,
    [day_login] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'GongZuoLeiXing'
ALTER TABLE [dbo].[GongZuoLeiXing]
ADD CONSTRAINT [PK_GongZuoLeiXing]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'GongZuoXinXi'
ALTER TABLE [dbo].[GongZuoXinXi]
ADD CONSTRAINT [PK_GongZuoXinXi]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'HaoYouXinXi'
ALTER TABLE [dbo].[HaoYouXinXi]
ADD CONSTRAINT [PK_HaoYouXinXi]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShangJiaJiaoYiJiLu'
ALTER TABLE [dbo].[ShangJiaJiaoYiJiLu]
ADD CONSTRAINT [PK_ShangJiaJiaoYiJiLu]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShangJiaXinXi'
ALTER TABLE [dbo].[ShangJiaXinXi]
ADD CONSTRAINT [PK_ShangJiaXinXi]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShouCangGongZuo'
ALTER TABLE [dbo].[ShouCangGongZuo]
ADD CONSTRAINT [PK_ShouCangGongZuo]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShouCangShangJia'
ALTER TABLE [dbo].[ShouCangShangJia]
ADD CONSTRAINT [PK_ShouCangShangJia]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'XueShengJiaoYiJiLu'
ALTER TABLE [dbo].[XueShengJiaoYiJiLu]
ADD CONSTRAINT [PK_XueShengJiaoYiJiLu]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'XueShengKeCheng'
ALTER TABLE [dbo].[XueShengKeCheng]
ADD CONSTRAINT [PK_XueShengKeCheng]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'XueShengQiuZhi'
ALTER TABLE [dbo].[XueShengQiuZhi]
ADD CONSTRAINT [PK_XueShengQiuZhi]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ZhaoPinZheLeiXing'
ALTER TABLE [dbo].[ZhaoPinZheLeiXing]
ADD CONSTRAINT [PK_ZhaoPinZheLeiXing]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ShangJiaXinXi2'
ALTER TABLE [dbo].[ShangJiaXinXi2]
ADD CONSTRAINT [PK_ShangJiaXinXi2]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'XueShengXinXi'
ALTER TABLE [dbo].[XueShengXinXi]
ADD CONSTRAINT [PK_XueShengXinXi]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------