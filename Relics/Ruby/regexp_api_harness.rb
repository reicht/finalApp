Relic before parse

tokenfield = response.body.partition(/(?:"[t])\w+(":{"\$t":")+(\w*)/)[1]
@token = tokenfield.partition(/(\w*)+$/)[1]
