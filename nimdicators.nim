import nimdicators/[cImports, indicators], sequtils


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
proc fnFactoryOneInNoOptOneOut(fn: string): proc =
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
proc fnFactoryFourInNoOptOneOut(fn: string): proc =
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
proc fnFactoryTwoInNoOptOneOut(fn: string): proc =
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
proc fnFactoryThreeInOneOptOneOut(fn: string): proc =
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
proc fnFactoryOneInTwoOptOneOut(fn: string): proc =
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
proc fnFactoryTwoInOneOptTwoOut(fn: string): proc =
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
proc fnFactoryTwoInOneOptOneOut(fn: string): proc =
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










#######################################################




# Vector Absolute Value 
# Type: simple 
# Input arrays: 1    Options: 0    Output arrays: 1 
# Inputs: real 
# Options: none 
# Outputs: abs 
let abs* = fnFactoryOneInNoOptOneOut("abs")


#Vector Arccosine
#Type: simple
#Input arrays: 1    Options: 0    Output arrays: 1
#Inputs: real
#Options: none
#Outputs: acos
let acos* = fnFactoryOneInNoOptOneOut("acos")


#Accumulation/Distribution Line
#Type: indicator
#Input arrays: 4    Options: 0    Output arrays: 1
#Inputs: high, low, close, volume
#Options: none
#Outputs: ad
let ad* = fnFactoryFourInNoOptOneOut("ad")


#Vector Addition
#Type: simple
#Input arrays: 2    Options: 0    Output arrays: 1
#Inputs: real, real
#Options: none
#Outputs: add
let add* = fnFactoryTwoInNoOptOneOut("add")


#Average Directional Movement Index
#Type: indicator
#Input arrays: 3    Options: 1    Output arrays: 1
#Inputs: high, low, close
#Options: period
#Outputs: dx
let adx* = fnFactoryThreeInOneOptOneOut("adx")


#Average Directional Movement Rating
#Type: indicator
#Input arrays: 3    Options: 1    Output arrays: 1
#Inputs: high, low, close
#Options: period
#Outputs: dx
let adxr* = fnFactoryThreeInOneOptOneOut("adxr")


#Awesome Oscillator
#Type: indicator
#Input arrays: 2    Options: 0    Output arrays: 1
#Inputs: high, low
#Options: none
#Outputs: ao
let ao* = fnFactoryTwoInNoOptOneOut("ao")


#Absolute Price Oscillator
#Type: indicator
#Input arrays: 1    Options: 2    Output arrays: 1
#Inputs: real
#Options: short period, long period
#Outputs: apo
let apo* = fnFactoryOneInTwoOptOneOut("apo")


#Aroon
#Type: indicator
#Input arrays: 2    Options: 1    Output arrays: 2
#Inputs: high, low
#Options: period
#Outputs: aroon_down, aroon_up
let aroon* = fnFactoryTwoInOneOptTwoOut("aroon")


#Aroon Oscillator
#Type: indicator
#Input arrays: 2    Options: 1    Output arrays: 1
#Inputs: high, low
#Options: period
#Outputs: aroonosc
let aroonosc* = fnFactoryTwoInOneOptOneOut("aroonosc")


#Vector Arcsine
#Type: simple
#Input arrays: 1    Options: 0    Output arrays: 1
#Inputs: real
#Options: none
#Outputs: asin
let asin* = fnFactoryOneInNoOptOneOut("asin")







####################################################################
#seq of cdouble(float64)
let dataIn = @[float 0.2, 0.3, 0.4, -0.5]  

let highIn = @[float 82.15, 81.89, 83.03, 83.30, 83.85, 83.90, 83.33, 84.30, 84.84, 85.00, 85.90, 86.58, 86.98, 88.00, 87.87]
let lowIn = @[float 81.29, 80.64, 81.31, 82.65, 83.07, 83.11, 82.49, 82.30, 84.15, 84.11, 84.03, 85.39, 85.76, 87.17, 87.01]
let close = @[float 81.59, 81.06, 82.87, 83.00, 83.61, 83.15, 82.84, 83.99, 84.55, 84.36]
let volume = @[float 5653100.0, 6447400.0, 7690900.0, 3831400.0, 4455100.0]



#options param passed into tulip indicator functions
let options: cdouble = 3                            


proc ema*(input: seq[cdouble], options: cdouble): seq[cdouble] =  
  #calculates the length of the resulting seq
  let
   start = ti_sma_start(options.unsafeAddr)                     
   outputLen = input.len - start
      
  result.setLen(outputLen)                                                              
                 
  #getting the adresses of the first elem in start/finish arrays
  var
    inputAddr = input[0].unsafeAddr
    outputAddr = result[0].addr

  #the res variable will return error messages that should map to   
  let res = ti_sma(cint(input.len), inputAddr.addr, options.unsafeAddr, outputAddr.addr)
  assert(res == TI_OKAY)

when isMainModule:
  echo asin(dataIn)