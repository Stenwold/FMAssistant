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
    `position` varchar (20) DEFAULT null,
-- More specified data
    `club` varchar (20) DEFAULT null,
    `value` int (10) DEFAULT null,
    `wage` int (10) DEFAULT null,
    `contract` int(1) DEFAULT null,
    `hg_status` varchar (20) DEFAULT null,
    `years_to_hg` int(1) DEFAULT null,
    `shortList` boolean DEFAULT false,
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
    (1,'Eryk',23,'Poland','CD','Arsenal',1000000,20000,3,'club_hg',null,false);

    INSERT INTO `fm_assistant_scheme`.`footballer_attributes` VALUES
    (1,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,70.0,
            70.0,70.0,70.0);

    INSERT INTO `fm_assistant_scheme`.`footballer_stats` VALUES
    (1,20,2,1,2,120,40,10,10);
