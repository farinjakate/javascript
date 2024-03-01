use MYADONETDB

select * from Trainer

insert into Trainer values('Nazmin','pune',2)

delete from trainer where id=2



create proc uspInsertTrainer
@Name varchar(50),@City varchar(50),@Experience int
as
begin
    insert into Trainer values(@Name,@City,@Experience)
    return scope_identity()
end


execute uspInsertTrainer @Name ='nazmin',@City='pune',@Experience=3

select count(Id) from Trainer
