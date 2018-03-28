class Fumante
  attr_accessor :anos, :preco, :diario

  def initialize(anos, preco, diario)
    @anos, @preco, @diario = anos, preco, diario
  end

  def calcularGasto
    return (((@preco.to_f / 20.0) * @diario.to_f) * (@anos.to_f*365))
  end

  def to_s
    "O valor gasto em cigaros durante os #{@anos} anos de consumo, foi de R$ #{calcularGasto} reais"
  end
end

puts "Fumante a quantos anos? (Informe valores inteiros)"
anos = gets.chomp
puts "Quantos cigarros fuma por dia? (Informe valores inteiros)"
diario = gets.chomp
puts "Qual o valor pago pela carteira de cigarros?"
preco = gets.chomp

fumante = Fumante.new(anos, preco, diario)

puts fumante.to_s
