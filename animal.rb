class Animal
  attr_accessor :nome

  def initialize(nome)
    self.nome = nome
  end

  def pergunta
    true
  end

  def avanca
    if pergunta
      self
    else
      insere_novo_animal
    end
  end

  def insere_novo_animal
    nome_caracteristica = pergunta_caracteristica
    nome_animal = pergunta_animal

    Caracteristica.new(nome_caracteristica, Animal.new(nome_animal), self)
  end
end




class Caracteristica
  attr_reader :nome, :sim, :nao

  def initialize(nome, sim, nao)
    @nome = nome
    @sim = sim
    @nao = nao
  end

  def pergunta
    true
  end

  def avanca
    if pergunta
      @sim = @sim.avanca
    else
      @nao = @nao.avanca
    end

    self
  end
end