if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(BigFloat,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a,b=pM(split(readline()))
  print(Int(floor(a*b)))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
