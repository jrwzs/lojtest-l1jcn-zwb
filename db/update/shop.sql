alter table shop add EnchantLevel int(10) NOT NULL DEFAULT '0';


update shop set EnchantLevel = 0 ;

alter table shop add selling_count int(10) NOT NULL DEFAULT '0';
alter table shop add selling_max int(10) NOT NULL DEFAULT '0';

UPDATE shop SET pack_count = 1 WHERE pack_count = 0 ;