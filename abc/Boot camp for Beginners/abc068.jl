if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  println(2^floor(Int,log2(pI(readline()))))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end