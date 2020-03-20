# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Limpando tabela Question
puts "Limpando tabela Question..."
Question.destroy_all
puts "Tabela Question limpada..."

# Questão 1
puts "Criando 1ª questão..."
Question.create!(
  enunciated: 'Costumo visitar com regularidade pessoas relevantes em minha vida como amigos, parentes, filhos. ',
  category: 'I'
)
puts "1ª questão criada!"

# Questão 2
puts "Criando 2ª questão..."
Question.create!(
  enunciated: 'Costumo participar de reuniões sem saber direito o conteúdo, o porquê devo participar ou a que resultado aquele encontro pode levar.',
  category: 'C'
)
puts "2ª questão criada!"

# Questão 3
puts "Criando 3ª questão..."
Question.create!(
  enunciated: 'Posso afirmar que estou conseguindo realizar tudo que gostaria em minha vida e que o tempo está passando na velocidade correta.',
  category: 'I'
)
puts "3ª questão criada!"

# Questão 4
puts "Criando 4ª questão..."
Question.create!(
  enunciated: 'Nos dias de descanso, costumo passar boa parte do dia assistindo televisão, jogando ou acessando a Internet. ',
  category: 'C'
)
puts "4ª questão criada!"

# Questão 5
puts "Criando 5ª questão..."
Question.create!(
  enunciated: 'Fico muito tempo no whatsapp, vendo stories do instagram com piadas, correntes, propagandas, apresentações, produtos, etc. ',
  category: 'C'
)
puts "5ª questão criada!"

# Questão 6
puts "Criando 6ª questão..."
Question.create!(
  enunciated: 'É comum aparecerem problemas inesperados no meu dia a dia. ',
  category: 'U'
)
puts "6ª questão criada!"

# Questão 7
puts "Criando 7ª questão..."
Question.create!(
  enunciated: 'Faço esporte com regularidade, me alimento da forma adequada e tenho o lazer que gostaria. ',
  category: 'I'
)
puts "7ª questão criada!"

# Questão 8
puts "Criando 8ª questão..."
Question.create!(
  enunciated: 'Faço um planejamento por escrito de tudo que preciso fazer durante minha semana.  ',
  category: 'I'
)
puts "8ª questão criada!"

# Questão 9
puts "Criando 9ª questão..."
Question.create!(
  enunciated: 'Costumo deixar para fazer trabalhos, relatórios, estudar para provas, organizar minhas tarefas perto do prazo de entrega. ',
  category: 'U'
)
puts "9ª questão criada!"

# Questão 10
puts "Criando 10ª questão..."
Question.create!(
  enunciated: 'Assumo compromissos com outras pessoas ou aceito novas posições (faculdade, igreja, trabalho...), mesmo que não goste muito da nova atividade, se for para aumentar meu “status” ou obter algo em troca. ',
  category: 'C'
)
puts "10ª questão criada!"

# Questão 11
puts "Criando 11ª questão..."
Question.create!(
  enunciated: 'É comum reduzir meu horário de almoço ou até mesmo comer enquanto trabalho ou estudo para concluir projeto ou tarefa. ',
  category: 'U'
)
puts "11ª questão criada!"

# Questão 12
puts "Criando 12ª questão..."
Question.create!(
  enunciated: 'Quando quero alguma coisa, defino esse objetivo por escrito, estabeleço prazos em minha agenda, monitoro os resultados obtidos e os comparo com os esperados.  ',
  category: 'I'
)
puts "12ª questão criada!"

# Questão 13
puts "Criando 13ª questão..."
Question.create!(
  enunciated: 'Consigo melhores resultados e me sinto mais produtivo quando estou sob pressão ou com o prazo curto.  ',
  category: 'U'
)
puts "13ª questão criada!"

# Questão 14
puts "Criando 14ª questão..."
Question.create!(
  enunciated: 'Quando recebo novas mensagens, costumo dar uma olhada para checar o que me mandam. ',
  category: 'C'
)
puts "14ª questão criada!"

# Questão 15
puts "Criando 15ª questão..."
Question.create!(
  enunciated: 'Tenho um tempo definido para dedicar a mim mesmo e nele, posso fazer o que quiser.  ',
  category: 'I'
)
puts "15ª questão criada!"

# Questão 16
puts "Criando 16ª questão..."
Question.create!(
  enunciated: 'Estive atrasado com minhas tarefas (em casa, na igreja), trabalhos e reuniões nas últimas semanas. ',
  category: 'U'
)
puts "16ª questão criada!"

# Questão 17
puts "Criando 17ª questão..."
Question.create!(
  enunciated: 'Costumo ir a eventos, festas ou cursos, mesmo sem ter muita vontade, para agradar meu chefe, meus amigos ou família.  ',
  category: 'C'
)
puts "17ª questão criada!"

# Questão 18
puts "Criando 18ª questão..."
Question.create!(
  enunciated: 'Não consigo realizar tudo que me propus a fazer no dia e acabo deixando minha rotina espiritual de lado, pois levo afazeres (estudos, trabalhos) para casa. ',
  category: 'U'
)
puts "18ª questão criada!"