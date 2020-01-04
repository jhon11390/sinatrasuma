require "sinatra"

datos = [0]

def aumentar(a)
    valor = a[0]+1
    a.delete_at(0)
    a.push(valor)
    puts valor
end


get "/" do
    @numero = datos[0]
    erb :index
end

post "/hola" do
    aumentar(datos)
    redirect "/"
end