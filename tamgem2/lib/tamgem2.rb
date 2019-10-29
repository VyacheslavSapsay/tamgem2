class TamagochiGem2

  attr_accessor :sourse, :bypass_html, :char

  def initialize(sourse = "index.html", bypass_html = false, char)
    @sourse = sourse
    @char = char
    @bypass_html = bypass_html
  end

  def status()
    unless @bypass_html
      if @char.include?("<") or @char.include?(">")
        @char.gsub!(/[<>]/,"")
        end
      end
      f = File.new(sourse, "w")
      f.puts("<body>\n")
      f.write(char)
      f.write("\n<body>")
      f.close
    end
  end

a="greg"

obj = TamagochiGem2.new("super.txt", false, a)

obj.status
