# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Limpar o banco de dados
ChallengeDone.destroy_all
RewardGiven.destroy_all
User.destroy_all
Challenge.destroy_all
Reward.destroy_all

# Criar usuários
users = User.create!([
  { email: "robertobarros@gymfication.com", password: "123123", first_name: "Roberto", last_name: "Barros", points: 100, admin: false },
  { email: "rafaelincao2@gymgication.com", password: "123123", first_name: "Rafael", last_name: "Incao", points: 200, admin: false },
  { email: "r3@example.com", password: "123123", first_name: "", last_name: "Incao", points: 200, admin: false },
  { email: "admin@gymfication.com", password: "123123", first_name: "Admin", last_name: "User", points: 300, admin: true }
])

# Criar desafios
challenges = Challenge.create!([
  { title: "Assiduidade: faça um cliente cumprir seu treino 3 vezes na semana", points: 5, price: 250 },
  { title: "Avaliação Física: verifique a condição física e o progresso do cliente", points: 20, price: 100 },
  { title: "Feedback: receba um retorno positivo de um cliente", points: 10, price: 0 },  
  { title: "Convidar para Eventos: faça uma pessoa ir com seu convite no próximo evento (Máximo: lotação do local) ", points: 5, price: 0 },
  { title: "Horários Diversos: faça o expediente na academia em horário alternativo", points: 20, price: 0 },
  { title: "Venda de Aulas: Venda uma matrícula de aula para um cliente:", points: 25, price: 150 },
  { title: "Encaminhe para um Personal Trainer: Venda uma matrícula de acompanhamento com um personal para um cliente:", points: 25, price: 300 }, 
  { title: "Encaminhe para um Nutricionista: Venda uma consulta com um nutricionista para um cliente:", points: 25, price: 300 },
  { title: "Venda de Suplementos: Venda de um pacote de suplementos", points: 20, price: 150 },
  { title: "Encaminhe para o SPA: Venda uma matrícula de SPA para um cliente:", points: 50, price: 700},
  { title: "Encaminhe para um Fisioterapeuta: Venda uma matrícula de Fisioterapia para um cliente:", points: 25, price: 150 }, 
  { title: "Encaminhe para um Massagista: Venda uma consulta com um massagista para um cliente:", points: 25, price: 150 },
  { title: "Combo Wellness: Complete todos os desafios da trilha wellness uma vez:", points: 50, price: 350 },
  { title: "Combo Vendas 1: Complete os desafios Venda de Aulas e Encaminhe para um Personal Trainer", points: 90, price: 450 },
  { title: "Combo Vendas 2: Complete os desafios Venda de Aulas e Venda de Suplementos", points: 90, price: 300 },
  { title: "Combo Vendas 3: Complete os desafios Venda de Aulas e Encaminhe para um Nutricionista", points: 90, price: 450 },
  { title: "Combo Vendas 4: Complete os desafios Venda de Aulas e Encaminhe para o SPA", points: 90, price: 850 }, 
  { title: "Combo Vendas 5: Complete os desafios Venda de Aulas e Encaminhe para um Fisioterapeuta", points: 90, price: 300 },
  { title: "Combo Vendas 6: Complete os desafios Venda de Aulas e Encaminhe para um Massagista", points: 90, price: 300 },
  { title: "Combo Vendas 7: Complete os desafios Encaminhe para um Personal Trainer e Encaminhe para um Nutricionista", points: 90, price: 600 },
  { title: "Combo Vendas 8: Complete os desafios Encaminhe para um Personal Trainer e Venda de Suplementos", points: 90, price: 450 },
  { title: "Combo Vendas 9: Complete os desafios Encaminhe para um Personal Trainer e Encaminhe para o SPA", points: 90, price: 1000 },
  { title: "Combo Vendas 10: Complete os desafios Encaminhe para um Personal Trainer e Encaminhe para um Fisioterapeuta", points: 90, price: 450 }, 
  { title: "Combo Vendas 11: Complete os desafios Encaminhe para um Personal Trainer e Encaminhe para um Massagista", points: 90, price: 450 },
  { title: "Combo Vendas 12: Complete os desafios Encaminhe para um Nutricionista e Venda de Suplementos", points: 90, price: 450 },
  { title: "Combo Vendas 13: Complete os desafios Encaminhe para um Nutricionista e Encaminhe para o SPA", points: 90, price: 1000 },
  { title: "Combo Vendas 14: Complete os desafios Encaminhe para um Nutricionista e Encaminhe para um Fisioterapeuta", points: 90, price: 450 },
  { title: "Combo Vendas 15: Complete os desafios Encaminhe para um Nutricionista e e Encaminha para um Massagista", points: 90, price: 450 },
  { title: "Combo Vendas 16: Complete os desafios Venda de Suplementos e Encaminhe para o SPA", points: 90, price: 850 },
  { title: "Combo Vendas 17: Complete os desafios Venda de Suplementos e Encaminhe para um Fisioterapeuta", points: 90, price: 300 }, 
  { title: "Combo Vendas 18: Complete os desafios Venda de Suplementos e Encaminhe para um Massagista", points: 90, price: 300 },
  { title: "Combo Vendas 19: Complete os desafios Encaminhe para o SPA e Encaminhe para um Fisioterapeuta", points: 90, price: 850 },
  { title: "Combo Vendas 20: Complete os desafios Encaminhe para o SPA e Encaminhe para um Massagista", points: 90, price: 850 },
  { title: "Combo Vendas 21: Complete os desafios Encaminhe para um Fisioterapeuta e Encaminhe para um Massagista", points: 90, price: 300 },
  { title: "Combo Vendas 22: Complete os desafios Venda de Aulas, Encaminhe para um Personal Trainer e Encaminhe para um Nutricionista", points: 125, price: 750 },
  { title: "Combo Vendas 23: Complete os desafios Venda de Aulas, Encaminhe para um Personal Trainer e Venda de Suplementos", points: 125, price: 600 },
  { title: "Combo Vendas 24: Complete os desafios Venda de Aulas, Encaminhe para um Personal Trainer e Encaminhe para o SPA", points: 125, price: 1150 },
  { title: "Combo Vendas 25: Complete os desafios Venda de Aulas, Encaminhe para um Personal Trainer e Encaminhe para um Fisioterapeuta", points: 125, price: 600 },
  { title: "Combo Vendas 26: Complete os desafios Venda de Aulas, Encaminhe para um Personal Trainer e Encaminhe para um Massagista", points: 125, price: 600 },
  { title: "Combo Vendas 27: Complete os desafios Venda de Aulas, Encaminhe para um Nutricionista e Venda de Suplementos", points: 125, price: 600 },
  { title: "Combo Vendas 28: Complete os desafios Venda de Aulas, Encaminhe para um Nutricionista e Encaminhe para o SPA", points: 125, price: 1150 },
  { title: "Combo Vendas 29: Complete os desafios Venda de Aulas, Encaminhe para um Nutricionista e Encaminhe para um Fisioterapeuta", points: 125, price: 600 },
  { title: "Combo Vendas 30: Complete os desafios Venda de Aulas, Encaminhe para um Nutricionista e Encaminhe para um Massagista", points: 125, price: 600 },
  { title: "Combo Vendas 31: Complete os desafios Venda de Aulas, Venda de Suplementos e Encaminhe para o SPA", points: 125, price: 1150 },
  { title: "Combo Vendas 32: Complete os desafios Venda de Aulas, Venda de Suplementos e Encaminhe para um Fisioterapeuta", points: 125, price: 600 },
  { title: "Combo Vendas 33: Complete os desafios Venda de Aulas, Venda de Suplementos e Encaminhe para um Massagista", points: 125, price: 600 },
  { title: "Combo Vendas 34: Complete os desafios Venda de Aulas, Encaminhe para o SPA e Encaminhe para um Fisioterapeuta", points: 125, price: 1150 },
  { title: "Combo Vendas 35: Complete os desafios Venda de Aulas, Encaminhe para o SPA e Encaminhe para um Massagista", points: 125, price: 1150 },
  { title: "Combo Vendas 36: Complete os desafios Venda de Aulas, Encaminhe para um Fisioterapeuta e Encaminhe para um Massagista", points: 125, price: 600 },
  { title: "Combo Vendas 37: Complete os desafios Encaminhe para um Personal Trainer, Encaminhe para um Nutricionista e Venda de Suplementos", points: 125, price: 900 },
  { title: "Combo Vendas 38: Complete os desafios Encaminhe para um Personal Trainer, Encaminhe para um Nutricionista e Encaminhe para o SPA", points: 125, price: 1150 },
  { title: "Combo Vendas 39: Complete os desafios Encaminhe para um Personal Trainer, Encaminhe para um Nutricionista e Encaminhe para um Fisioterapeuta", points: 125, price: 900 },
  { title: "Combo Vendas 40: Complete os desafios Encaminhe para um Personal Trainer, Encaminhe para um Nutricionista e Encaminhe para um Massagista", points: 125, price: 900 },
  { title: "Combo Vendas 41: Complete os desafios Encaminhe para um Personal Trainer, Venda de Suplementos e Encaminhe para o SPA", points: 125, price: 1150 },
  { title: "Combo Vendas 42: Complete os desafios Encaminhe para um Personal Trainer, Venda de Suplementos e Encaminhe para um Fisioterapeuta", points: 125, price: 600 },
  { title: "Combo Vendas 43: Complete os desafios Encaminhe para um Personal Trainer, Venda de Suplementos e Encaminhe para um Massagista", points: 125, price: 600 },
  { title: "Combo Vendas 44: Complete os desafios Encaminhe para um Personal Trainer, Encaminhe para o SPA e Encaminhe para um Fisioterapeuta", points: 125, price: 1150 },
  { title: "Combo Vendas 45: Complete os desafios Encaminhe para um Personal Trainer, Encaminhe para o SPA e Encaminhe para um Massagista", points: 125, price: 1150 },
  { title: "Combo Vendas 46: Complete os desafios Encaminhe para um Personal Trainer, Encaminhe para um Fisioterapeuta e Encaminhe para um Massagista", points: 125, price: 600 },
  { title: "Combo Vendas 47: Complete os desafios Encaminhe para um Nutricionista, Venda de Suplementos e Encaminhe para o SPA", points: 125, price: 1150 },
  { title: "Combo Vendas 48: Complete os desafios Encaminhe para um Nutricionista, Venda de Suplementos e Encaminhe para um Fisioterapeuta", points: 125, price: 600 },
  { title: "Combo Vendas 49: Complete os desafios Encaminhe para um Nutricionista, Venda de Suplementos e Encaminhe para um Massagista", points: 125, price: 600 },
  { title: "Combo Vendas 50: Complete os desafios Encaminhe para um Nutricionista, Encaminhe para o SPA e Encaminhe para um Fisioterapeuta", points: 125, price: 1150 },
  { title: "Combo Vendas 51: Complete os desafios Encaminhe para um Nutricionista, Encaminhe para o SPA e Encaminhe para um Massagista", points: 125, price: 1150 },
  { title: "Combo Vendas 52: Complete os desafios Encaminhe para um Nutricionista, Encaminhe para um Fisioterapeuta e Encaminhe para um Massagista", points: 125, price: 600 },
  { title: "Combo Vendas 53: Complete os desafios Venda de Suplementos, Encaminhe para o SPA e Encaminhe para um Fisioterapeuta", points: 125, price: 1150 },
  { title: "Combo Vendas 54: Complete os desafios Venda de Suplementos, Encaminhe para o SPA e Encaminhe para um Massagista", points: 125, price: 1150 },
  { title: "Combo Vendas 55: Complete os desafios Venda de Suplementos, Encaminhe para um Fisioterapeuta e Encaminhe para um Massagista", points: 125, price: 600 },
  { title: "Combo Vendas 56: Complete os desafios Encaminhe para o SPA, Encaminhe para um Fisioterapeuta e Encaminhe para um Massagista", points: 125, price: 1150 }
])

# Criar recompensas
rewards = Reward.create!([
  { title: "Pacote de Whey Protein e Camiseta", points: 50 },
  { title: "Vale-Massagem", points: 150},
  { title: "Consulta com Nutricionista", points: 300},
  { title: "Equipamento de Ginastica", points: 300 },
  { title: "Vale-presente", points: 150},
  { title: "Folgas", points: 300},
  { title: "Ingresso para Evento", points: 600},
  { title: "Fone de Ouvidos", points: 300},
  { title: "Cupom", points: 50 },
  { title: "Viagem", points: 900}
])

# Associar desafios completos aos usuários
ChallengeDone.create!([
  { user: users[0], challenge: challenges[0] },
  { user: users[0], challenge: challenges[1] },
  { user: users[1], challenge: challenges[2] }
])

# Associar recompensas dadas aos usuários
RewardGiven.create!([
  { user: users[0], reward: rewards[0] },
  { user: users[1], reward: rewards[1] },
  { user: users[2], reward: rewards[2] }
])

puts "Dados de seed criados com sucesso!"
