if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  s=chomp(readline())
  println(join(unique(s),"")==s ? "yes" : "no")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
