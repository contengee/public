parseInt(x) = parse(Int, x)
parseMap(x::Array{SubString{String},1}) = map(parseInt, x)
a1,a2,a3=parseMap(split(readline()))
f(a,b,c)=min(abs(a-b)+abs(b-c),abs(a-c)+abs(c-b))
ans=min(f(a1,a2,a3),f(a2,a1,a3),f(a3,a1,a2))
print(ans)