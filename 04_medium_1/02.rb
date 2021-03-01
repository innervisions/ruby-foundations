# 02 - Text Analyzer - Sandwich Code
class TextAnalyzer
  def process
    return unless block_given?
    file = File.open('sample_text.txt', 'r')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts text }
analyzer.process { |text| puts text.upcase }
analyzer.process { |text| puts text.size }
