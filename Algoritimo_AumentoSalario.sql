-----------------------ALGORITIMO AUMENTO DE SALARIO------------------------

Begin
	declare @salario smallmoney, @novoSalario smallmoney, @reajuste int

	set @salario = 400.00

	If @salario >= 0 and @salario <= 400.00
	Begin
		set @reajuste = 15
		set @novoSalario = @salario * @reajuste / 100 + @salario
		print 'Novo salario: ' + cast(@novoSalario as varchar(20))
	End
	Else if @salario >= 400.01 and @salario <= 800
	Begin
		set @reajuste = 12
		set @novoSalario = @salario * @reajuste / 100 + @salario
		print 'Novo salario: ' + cast(@novoSalario as varchar(20))
	End
	Else if @salario >= 800.01 and @salario <= 1200.00
	Begin
		set @reajuste = 10
		set @novoSalario = @salario * @reajuste / 100 + @salario
		print 'Novo salario: ' + cast(@novoSalario as varchar(20))
	End
	Else if @salario >= 1200.01 and @salario <= 2000.00
	Begin
		set @reajuste = 7
		set @novoSalario = @salario * @reajuste / 100 + @salario
		print 'Novo salario: ' + cast(@novoSalario as varchar(20))
	End
	Else if @salario > 2000.00
	Begin
		set @reajuste = 4
		set @novoSalario = @salario * @reajuste / 100 + @salario
		print 'Novo salario: ' + cast(@novoSalario as varchar(20))
	End
	Else
	Begin
		print 'intervalo nao testado'
	End
	print 'Reajuste ganho: ' + cast(@novoSalario - @salario as varchar (20))
	print 'Em percentual: ' + cast(@reajuste as varchar(20)) + '%'
End
Go
