Dado('que o usuario consulte informacoes sobre o estabelecimento') do
    require 'httparty'
    HTTParty::Basement.default_options.update(verify: false)
    @getUrl = 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT'
  end
  
  Quando('for realizado o GET na api') do
    @list_estabeleciomento = HTTParty.get(@getUrl)

  end
  
  Entao('a chave typeOfEstablishment deve ser retornada') do
    expect(@list_estabeleciomento.code).to eq 200
    expect(@list_estabeleciomento["typeOfEstablishment"]).not_to be nil
    print @list_estabeleciomento["typeOfEstablishment"][8]
    
  end