--
-- Creating tables structure for `footballer`
--
SET FOREIGN_KEY_CHECKS = 0;
-- footballer table
DROP TABLE IF EXISTS `fm_assistant_scheme`.`footballer`;

CREATE TABLE `fm_assistant_scheme`.`footballer` (
-- General data about footballer
    `id` int(10) NOT NULL AUTO_INCREMENT,
    `name` varchar (30) DEFAULT null,
    `age` int(2) DEFAULT null,
    `country` varchar (20) DEFAULT null,
    `position` ENUM('GK','CB','RB','LB','CM','CAM','RW','LW','ST') DEFAULT null,
-- More specified data
    `club` varchar (20) DEFAULT null,
    `value` int (10) DEFAULT null,
    `wage` int (10) DEFAULT null,
    `contract` int(1) DEFAULT null,
    `pos_rating` double DEFAULT null,
    `hg_status` varchar (20) DEFAULT null,
    `years_to_hg` int(1) DEFAULT null,
    `shortList` boolean DEFAULT false,
    `team_status` varchar (20) DEFAULT null,
-- Primary key
    PRIMARY KEY (`id`)
)
-- More options
    ENGINE=InnoDB
    AUTO_INCREMENT=1
    DEFAULT CHARSET=latin1;


-- Footballer_attributes table
DROP TABLE IF EXISTS `fm_assistant_scheme`.`footballer_attributes`;

CREATE TABLE `fm_assistant_scheme`.`footballer_attributes` (
-- attributes
    `id` int (10) NOT NULL,
    `defending` double DEFAULT null,
    `passing` double DEFAULT null,
    `crossing` double DEFAULT null,
    `technique` double DEFAULT null,
    `shooting` double DEFAULT null,
    `endeavour` double DEFAULT null,
    `focus` double DEFAULT null,
    `creativity` double DEFAULT null,
    `movement` double DEFAULT null,
    `physical` double DEFAULT null,
    `aerial` double DEFAULT null,
    `mobility` double DEFAULT null,
    `fitness` double DEFAULT null,
-- ratings
    `GK_R` double DEFAULT null,
    `CB_R` double DEFAULT null,
    `BPD_R` double DEFAULT null,
    `FB_R` double DEFAULT null,
    `CDM_R` double DEFAULT null,
    `B2B_R` double DEFAULT null,
    `DLP_R` double DEFAULT null,
    `W_R` double DEFAULT null,
    `AM_R` double DEFAULT null,
    `FS_R` double DEFAULT null,
    `SS_R` double DEFAULT null,
    CONSTRAINT PK_FA PRIMARY KEY (id),
    CONSTRAINT FK_FA FOREIGN KEY (id)
        REFERENCES `footballer`(id)
    )
-- More options
    ENGINE=InnoDB
    AUTO_INCREMENT=1
    DEFAULT CHARSET=latin1;

-- Footballer_stats table
DROP TABLE IF EXISTS `fm_assistant_scheme`.`footballer_stats`;

CREATE TABLE `fm_assistant_scheme`.`footballer_stats` (

    `id` int (10) NOT NULL,
-- Recent season stats
    `first_team_apps` int (3) DEFAULT null,
    `sub_apps` int (3) DEFAULT null,
    `goals` int (3) DEFAULT null,
    `assists` int (3) DEFAULT null,
-- Total stats (in player's club)
    `ft_apps_total` int (3) DEFAULT null,
    `sub_apps_total` int (3) DEFAULT null,
    `goals_total` int (3) DEFAULT null,
    `assists_total` int (3) DEFAULT null,


    CONSTRAINT PK_FS PRIMARY KEY (id),
    CONSTRAINT FK_FS FOREIGN KEY (id)
        REFERENCES `footballer`(id)
    )
-- More options
    ENGINE=InnoDB
    AUTO_INCREMENT=1
    DEFAULT CHARSET=latin1;


    -- Insert data for testing purposes
    INSERT INTO `fm_assistant_scheme`.`footballer` VALUES
    (1,'Eryk',23,'Poland','CB','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'U23/Reserves'),
    (2,'Leno',23,'Poland','GK','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (3,'Mustafi',23,'Poland','CB','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (4,'Tierney',23,'Poland','LB','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (5,'Bellerin',23,'Poland','RB','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (6,'Sokratis',23,'Poland','CB','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (7,'Torreira',23,'Poland','CM','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (8,'Ceballos',23,'Poland','CM','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (9,'Pepe',23,'Poland','RW','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (10,'Ozil',23,'Poland','CAM','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (11,'Lacazette',23,'Poland','ST','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (12,'Aubameyang',23,'Poland','ST','Arsenal',1000000,20000,3,90.6,'club_hg',null,false,'First Team'),
    (13,'Martinelli',23,'Poland','RW','Arsenal',1000000,20000,3,70.6,'club_hg',null,false,'First Team'),
    (14,'Saka',23,'Poland','LW','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (15,'Holding',23,'Poland','CB','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team'),
    (16,'Nelson',23,'Poland','RW','Arsenal',1000000,20000,3,80.6,'club_hg',null,false,'First Team');

    INSERT INTO `fm_assistant_scheme`.`footballer_attributes` VALUES
    (1,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
    (2,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
    (3,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (4,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (5,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (6,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (7,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (8,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (9,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (10,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (11,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (12,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (13,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (14,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (15,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0),
            (16,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0);

    INSERT INTO `fm_assistant_scheme`.`footballer_stats` VALUES
    (1,20,2,1,2,120,40,10,10),
    (2,20,2,1,2,120,40,10,10),
    (3,20,2,1,2,120,40,10,10),
    (4,20,2,1,2,120,40,10,10),
    (5,20,2,1,2,120,40,10,10),
    (6,20,2,1,2,120,40,10,10),
    (7,20,2,1,2,120,40,10,10),
    (8,20,2,1,2,120,40,10,10),
    (9,20,2,1,2,120,40,10,10),
    (10,20,2,1,2,120,40,10,10),
    (11,20,2,1,2,120,40,10,10),
    (12,20,2,1,2,120,40,10,10),
    (13,20,2,1,2,120,40,10,10),
    (14,20,2,1,2,120,40,10,10),
    (15,20,2,1,2,120,40,10,10),
    (16,20,2,1,2,120,40,10,10);
