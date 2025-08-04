use korea_db;

### select 가능 - 권한 있음 ###
select * from members;

### insert 불가 - 권한 없음 ###
insert into members
	(name, gender, area_code, grade, contact, join_date)
values
	('TEST', 'Male', 'JEJU', 'Bronze', '010-0000-0000', '2025-08-04');

update members
set
	grade = 'Gold'
where
	name = 'TEST';
    
delete from members
where
	name = 'TEST';
    
--
delete from purchases
where
	purchase_id = 1;
# Error Code: 1142. DELETE command denied to user 'readonly_user'@'localhost' for table 'purchases'
