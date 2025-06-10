create table food_cat(fid serial primary key,category varchar(30))
insert into food_cat(category)values('veg')
insert into food_cat(category)values('nonveg')
insert into food_cat(category)values('snaks')
insert into food_cat(category)values('nonveg')
insert into food_cat(category)values('south_indian')
insert into food_cat(category)values('starter')
insert into food_cat(category)values('beakfast')
insert into food_cat(category)values('veg')
select * from food_cat

create table qty_mast(qid serial primary key,size varchar(40))
insert into qty_mast(size)values('half')
insert into qty_mast(size)values('half')
insert into qty_mast(size)values('1/4')
insert into qty_mast(size)values('full')
insert into qty_mast(size)values('1/8')
insert into qty_mast(size)values('1/5')
insert into qty_mast(size)values('1/2')
insert into qty_mast(size)values('full')
select * from qty_mast
create table menucard(menuid serial primary key,menuname varchar(30),price int,fid int,qid int)
insert into menucard(menuname,price,fid,qid)values('paneer',200,1,1)
insert into menucard(menuname,price,fid,qid)values('Biryani',150,2,2)
insert into menucard(menuname,price,fid,qid)values('Sandwitch',100,3,3)
insert into menucard(menuname,price,fid,qid)values('fried_rice',200,4,4)
insert into menucard(menuname,price,fid,qid)values('Dosa',100,5,5)
insert into menucard(menuname,price,fid,qid)values('soupe',60,6,6)
insert into menucard(menuname,price,fid,qid)values('pohe',50,7,7)
insert into menucard(menuname,price,fid,qid)values('dal_chaval',100,8,8)
select * from menucard


--join query
select menuname,price,category,size from menucard,food_cat,qty_mast where food_cat.fid=menucard.fid and qty_mast.qid=menucard.qid