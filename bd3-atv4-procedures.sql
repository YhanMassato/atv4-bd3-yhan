use atv4_bd3_yhan;

delimiter $

create procedure turma_aluno()
	begin
		select 
			ta.nome,
			ta.tel_aluno,
			ta.tel_responsavel,
			ta.email,
			tt.sigla as sigla_turma,
			tt.nome as nome_turma
		from tb_aluno ta
		inner join tb_turma tt on
		ta.id_turma = tt.id_turma;
	end
$

delimiter $$

create procedure listagem_aluno(in id_aluno_param int)
	begin
		select 
				ta.nome,
				ta.tel_aluno,
				ta.tel_responsavel,
				ta.email,
				tt.sigla as sigla_turma,
				tt.nome as nome_turma
		from tb_aluno ta
		inner join tb_turma tt on
		ta.id_turma = tt.id_turma
		where ta.id_aluno = id_aluno_param;
	end
$$


#call turma_aluno();

#call listagem_aluno(5);
