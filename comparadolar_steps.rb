Dado(/^que esteja no site Google$/) do
  visit "http://google.com"
end

Quando(/^fizer uma busca pelo nome "([^"]*)"$/) do |arg1|
  fill_in("q", :with => "UOL")
  click_link("UOL - O melhor conteúdo")
  has_link?("https://economia.uol.com.br/")
  click_link("Economia")
end

Então(/^faço comparação do dólar$/) do
  dolar = find(:xpath, "//*[@id='cambio']/ul/li[1]/p[2]/span").text
  valor = "3,20"
  if dolar < valor
	puts "Executado com sucesso!"
 # 	next 
  else
  	puts "Erro!"
  	valor = valor / 0
  end
end