import cImports, indicators, sequtils


proc toCarray(input: seq[float]): seq[cdouble] =
  var result = newSeq[cdouble]()
  for idx, item in input:
    result.add(cdouble(item))
  return result

proc fromCarray(input: seq[cdouble]): seq[float] =
  var result = newSeq[float]()
  for idx, item in input:
    result.add(float(item))
  return result


########################################################
#Function Factories go here

#factory for functions that take in 1 input, 0 options and 1 output
proc fnFactoryOneInNoOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(fInput: seq[float]): seq[float] =
    let 
      input = toCarray(fInput)
      options = cast[cdouble](0.0)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = input.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(input.len), inputAddr.addr, options.unsafeAddr, outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)


#factory for functions that take in 4 inputs, 0 options and 1 output
proc fnFactoryFourInNoOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(highInput: seq[float], lowInput: seq[float], close: seq[float], volume: seq[float]): seq[float] =
    let 
      hIn = toCarray(highInput)
      lIn = toCarray(lowInput)
      cIn = toCarray(close)
      vIn = toCarray(volume)

      input = @[hIn[0].unsafeAddr, lIn[0].unsafeAddr, cIn[0].unsafeAddr, vIn[0].unsafeAddr]
      options = cast[cdouble](0.0)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = close.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(close.len), inputAddr, options.unsafeAddr, outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)


#factory for functions that take in 2 inputs, 0 options and 1 output
proc fnFactoryTwoInNoOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(uInput: seq[float], vInput: seq[float]): seq[float] =
    let 
      uIn = toCarray(uInput)
      vIn = toCarray(uInput)

      input = @[uIn[0].unsafeAddr, vIn[0].unsafeAddr]
      options = cast[cdouble](0.0)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = uIn.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(uIn.len), inputAddr, options.unsafeAddr, outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)



#factory for functions that take in 3 inputs, 1 options and 1 output
proc fnFactoryThreeInOneOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(highInput: seq[float], lowInput: seq[float], close: seq[float], period: float): seq[float] =
    let 
      hIn = toCarray(highInput)
      lIn = toCarray(lowInput)
      cIn = toCarray(close)

      input = @[hIn[0].unsafeAddr, lIn[0].unsafeAddr, cIn[0].unsafeAddr]
      options = cdouble(period)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = close.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(close.len), inputAddr, options.unsafeAddr, outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)



#factory for functions that take in 1 input, 2 options and 1 output
proc fnFactoryOneInTwoOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(fInput: seq[float], optOne: float, optTwo: float): seq[float] =
    let 
      input = toCarray(fInput)
      aOpt = cdouble(optOne)
      bOpt = cdouble(optTwo)
      options = @[aOpt.unsafeAddr, bOpt.unsafeAddr]

    let
     start = startFunc(options[0])                     
     outputLen = input.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(input.len), inputAddr.addr, options[0], outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)



#factory for functions that take in 2 inputs, 1 options and 2 output
proc fnFactoryTwoInOneOptTwoOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(highInput: seq[float], lowInput: seq[float], period: float): seq[seq[float]] =
    let 
      hIn = toCarray(highInput)
      lIn = toCarray(lowInput)

      input = @[hIn[0].unsafeAddr, lIn[0].unsafeAddr]
      options = cdouble(period)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = lowInput.len - start

    var firstResult = newSeq[cdouble](outputLen) 
    var secondResult = newSeq[cdouble](outputLen)

    var resBoth = @[firstResult[0].unsafeAddr, secondResult[0].unsafeAddr]

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = resBoth[0].unsafeAddr


    let res = calcFunc(cint(lowInput.len), inputAddr, options.unsafeAddr, outputAddr)
    assert(res == TI_OKAY)

    let
      resOne = fromCarray(firstResult)
      resTwo = fromCarray(secondResult)
    return @[resOne, resTwo]



#factory for functions that take in 2 inputs, 1 options and 1 output
proc fnFactoryTwoInOneOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(uInput: seq[float], vInput: seq[float], option: float): seq[float] =
    let 
      uIn = toCarray(uInput)
      vIn = toCarray(uInput)

      input = @[uIn[0].unsafeAddr, vIn[0].unsafeAddr]
      options = cast[cdouble](option)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = uIn.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(uIn.len), inputAddr, options.unsafeAddr, outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)



proc fnFactoryOneInTwoOptThreeOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(fInput: seq[float], optOne: float, optTwo: float): seq[seq[float]] =
    let 
      input = toCarray(fInput)
      aOpt = cdouble(optOne)
      bOpt = cdouble(optTwo)
      options = @[aOpt.unsafeAddr, bOpt.unsafeAddr]

    let
     start = startFunc(options[0])                     
     outputLen = input.len - start

    var firstResult = newSeq[cdouble](outputLen) 
    var secondResult = newSeq[cdouble](outputLen)
    var thirdResult = newSeq[cdouble](outputLen)

    var resAll = @[firstResult[0].unsafeAddr, secondResult[0].unsafeAddr, thirdResult[0].unsafeAddr]

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = resAll[0].unsafeAddr

    let res = calcFunc(cint(input.len), inputAddr.addr, options[0], outputAddr)
    assert(res == TI_OKAY)

    let
      resOne = fromCarray(firstResult)
      resTwo = fromCarray(secondResult)
      resThree = fromCarray(thirdResult)
    return @[resOne, resTwo, resThree]



proc fnFactoryOneInOneOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(fInput: seq[float], option: float): seq[float] =
    let 
      input = toCarray(fInput)
      options = cast[cdouble](option)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = input.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(input.len), inputAddr.addr, options.unsafeAddr, outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)



proc fnFactoryThreeInOneOptTwoOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(highInput: seq[float], lowInput: seq[float], close: seq[float], period: float): seq[seq[float]] =
    let 
      hIn = toCarray(highInput)
      lIn = toCarray(lowInput)
      cIn = toCarray(close)

      input = @[hIn[0].unsafeAddr, lIn[0].unsafeAddr, cIn[0].unsafeAddr]
      options = cdouble(period)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = close.len - start


    var firstResult = newSeq[cdouble](outputLen) 
    var secondResult = newSeq[cdouble](outputLen)

    var resBoth = @[firstResult[0].unsafeAddr, secondResult[0].unsafeAddr]

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = resBoth[0].unsafeAddr

    let res = calcFunc(cint(close.len), inputAddr, options.unsafeAddr, outputAddr)

    assert(res == TI_OKAY)

    let
      resOne = fromCarray(firstResult)
      resTwo = fromCarray(secondResult)
    return @[resOne, resTwo]




proc fnFactoryThreeInNoOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(highInput: seq[float], lowInput: seq[float], close: seq[float]): seq[float] =
    let 
      hIn = toCarray(highInput)
      lIn = toCarray(lowInput)
      cIn = toCarray(close)

      input = @[hIn[0].unsafeAddr, lIn[0].unsafeAddr, cIn[0].unsafeAddr]
      options = cast[cdouble](0.0)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = close.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(close.len), inputAddr, options.unsafeAddr, outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)




proc fnFactoryFourInTwoOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(highInput: seq[float], lowInput: seq[float], close: seq[float], volume: seq[float], optOne: float, optTwo: float): seq[float] =
    let 
      hIn = toCarray(highInput)
      lIn = toCarray(lowInput)
      cIn = toCarray(close)
      vIn = toCarray(volume)

      input = @[hIn[0].unsafeAddr, lIn[0].unsafeAddr, cIn[0].unsafeAddr, vIn[0].unsafeAddr]

      aOpt = cdouble(optOne)
      bOpt = cdouble(optTwo)
      options = @[aOpt.unsafeAddr, bOpt.unsafeAddr]

    let
     start = startFunc(options[0])                     
     outputLen = close.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(close.len), inputAddr, options[0], outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)



proc fnFactoryOneInThreeOptThreeOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(fInput: seq[float], optOne: float, optTwo: float, optThree: float): seq[seq[float]] =
    let 
      input = toCarray(fInput)
      aOpt = cdouble(optOne)
      bOpt = cdouble(optTwo)
      cOpt = cdouble(optThree)
      options = @[aOpt.unsafeAddr, bOpt.unsafeAddr, cOpt.unsafeAddr]

    let
     start = startFunc(options[0])                     
     outputLen = input.len - start

    var firstResult = newSeq[cdouble](outputLen) 
    var secondResult = newSeq[cdouble](outputLen)
    var thirdResult = newSeq[cdouble](outputLen)

    var resAll = @[firstResult[0].unsafeAddr, secondResult[0].unsafeAddr, thirdResult[0].unsafeAddr]

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = resAll[0].unsafeAddr

    let res = calcFunc(cint(input.len), inputAddr.addr, options[0], outputAddr)
    assert(res == TI_OKAY)

    let
      resOne = fromCarray(firstResult)
      resTwo = fromCarray(secondResult)
      resThree = fromCarray(thirdResult)
    return @[resOne, resTwo, resThree]




proc fnFactoryFourInOneOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(highInput: seq[float], lowInput: seq[float], close: seq[float], volume: seq[float], option: float): seq[float] =
    let 
      hIn = toCarray(highInput)
      lIn = toCarray(lowInput)
      cIn = toCarray(close)
      vIn = toCarray(volume)

      input = @[hIn[0].unsafeAddr, lIn[0].unsafeAddr, cIn[0].unsafeAddr, vIn[0].unsafeAddr]
      options = cdouble(option)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = close.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(close.len), inputAddr, options.unsafeAddr, outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)



proc fnFactoryOneInOneOptTwoOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(fInput: seq[float], option: float): seq[seq[float]] =
    let 
      input = toCarray(fInput)
      options = cast[cdouble](option)

    let
     start = startFunc(options.unsafeAddr)                     
     outputLen = input.len - start

    var firstResult = newSeq[cdouble](outputLen) 
    var secondResult = newSeq[cdouble](outputLen)


    var resBoth = @[firstResult[0].unsafeAddr, secondResult[0].unsafeAddr]

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = resBoth[0].unsafeAddr

    let res = calcFunc(cint(input.len), inputAddr.addr, options.unsafeAddr, outputAddr)
    assert(res == TI_OKAY)

    let
      resOne = fromCarray(firstResult)
      resTwo = fromCarray(secondResult)
    return @[resOne, resTwo]


proc fnFactoryTwoInTwoOptOneOut*(fn: string): proc =
  let 
    indicator = getIndicator(fn)
    startFunc = indicator.start
    calcFunc = indicator.indicator

  return proc(uInput: seq[float], vInput: seq[float], optOne: float, optTwo: float): seq[float] =
    let 
      uIn = toCarray(uInput)
      vIn = toCarray(uInput)
      input = @[uIn[0].unsafeAddr, vIn[0].unsafeAddr]

      aOpt = cdouble(optOne)
      bOpt = cdouble(optTwo)
      options = @[aOpt.unsafeAddr, bOpt.unsafeAddr]

    let
     start = startFunc(options[0])                     
     outputLen = uIn.len - start

    result.setLen(outputLen)                                                              

    var
      inputAddr = input[0].unsafeAddr
      outputAddr = result[0].addr

    let res = calcFunc(cint(uIn.len), inputAddr, options[0], outputAddr.addr)
    assert(res == TI_OKAY)
    return fromCarray(result)



