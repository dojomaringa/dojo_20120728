require_relative "animal"

describe Animal do
  it "Teste do Animal" do
    animal = Animal.new("cavalo")
    animal.nome.should == "cavalo"
  end
end

describe Caracteristica do
  it "Teste de resposta" do
    animal_sim = Animal.new("Andorinha")
    animal_nao = Animal.new("Cavalo")

    caracteristica = Caracteristica.new("Voa", animal_sim, animal_nao)

    caracteristica.sim.should == animal_sim
    caracteristica.nao.should == animal_nao
  end

  it "Usuario responde sim deve retornar filho sim" do
    animal_sim = Animal.new("Andorinha")
    animal_nao = Animal.new("Cavalo")

    caracteristica = Caracteristica.new("Voa", animal_sim, animal_nao)
    # caracteristica.stub(:pergunta).with(true)
    caracteristica.avanca.should == animal_sim
  end
end
