if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function mkgraph(n::Int,m::Int)
  g=Array{Int64,1}[Int[] for i=1:n]
  for i=1:m
    a,b=pM(split(readline()))
    push!(g[a],b); push!(g[b],a)
  end
  return g
end
function bfs(g,f::Int)
  n=length(g)
  q=Int[f]
  dist=zeros(Int,n)
  goto=zeros(Int,n)
  while !isempty(q)
    v=popfirst!(q);
    for nv=g[v];
      if dist[nv]!=0; continue; end
      dist[nv]=dist[v]+1
      goto[nv]=v
      push!(q,nv)
    end
  end
  dist[f]=0;goto[f]=0
  return dist,goto
end
function main()
  println("Yes")
  @show g=mkgraph(pM(split(readline()))...)
  foreach(println,(bfs(g,1)[2][2:end]))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
