def ftoc(temp_f)

temp_in_c = (temp_f.to_f - 32)*(5.0/9.0)
return temp_in_c

end

def ctof(temp_c)

temp_in_f = (temp_c.to_f)*(9.0/5.0) + 32
return temp_in_f

end

