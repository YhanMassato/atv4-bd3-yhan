use atv4_bd3_yhan;

delimiter $$$
	
create procedure contagem_alunos(out total_alunos int (10))
	begin
		
        select count(id_aluno) into total_alunos from tb_aluno;
        
    end
$$$    

call contagem_alunos(@total_alunos);
select @total_alunos;