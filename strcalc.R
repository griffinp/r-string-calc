compute = function(input_string) {
  # Perform simple arithmetic encoded in input string
  # e.g. '1 + 2' -> 3, or '1 - 2' -> -1
  values = unlist(strsplit(input_string, ' '))
  num0 = as.numeric(values[1])
  operator = values[2]
  num1 = as.numeric(values[3])
  result = switch(operator,
                  '+' = num0 + num1,
                  '-' = num0 - num1,
                  '/' = num0 / num1,
                  '*' = num0 * num1,
                  NA)
  if (is.na(result)) {
    print('unknown operator!')
  }
  return(result)
}
