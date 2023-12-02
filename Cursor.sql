
declare cur_biz_cursor cursor
	for select marca, ano from carro where modelo = 'kwid'

open cur_biz_cursor

declare @marca char(80), @ano int

while 0=0
begin
	fetch cur_biz_cursor into @marca, @ano

	if @@FETCH_STATUS <> 0
		break
end

close cur_biz_cursor
deallocate cur_biz_cursor