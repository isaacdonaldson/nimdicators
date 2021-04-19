import nimdicators/[fnFactory], sequtils


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


#Vector Arctangent 
#Type: simple 
#Input arrays: 1    Options: 0    Output arrays: 1 
#Inputs: real 
#Options: none 
#Outputs: atan 
let atan* = fnFactoryOneInNoOptOneOut("atan")


#Average True Range 
#Type: indicator 
#Input arrays: 3    Options: 1    Output arrays: 1 
#Inputs: high, low, close 
#Options: period 
#Outputs: atr 
let atr* = fnFactoryThreeInOneOptOneOut("atr")


#Average Price 
#Type: overlay 
#Input arrays: 4    Options: 0    Output arrays: 1 
#Inputs: open, high, low, close 
#Options: none 
#Outputs: avgprice 
let avgprice* = fnFactoryFourInNoOptOneOut("avgprice")


#Bollinger Bands 
#Type: overlay 
#Input arrays: 1    Options: 2    Output arrays: 3 
#Inputs: real 
#Options: period, stddev 
#Outputs: bbands_lower, bbands_middle, bbands_upper 
let bbands* = fnFactoryOneInTwoOptThreeOut("bbands")


#Balance of Power 
#Type: indicator 
#Input arrays: 4    Options: 0    Output arrays: 1 
#Inputs: open, high, low, close 
#Options: none 
#Outputs: bop 
let bop* = fnFactoryFourInNoOptOneOut("bop")

#Commodity Channel Index 
#Type: indicator 
#Input arrays: 3    Options: 1    Output arrays: 1 
#Inputs: high, low, close 
#Options: period 
#Outputs: cci 
let cci* = fnFactoryThreeInOneOptOneOut("cci")


#Vector Ceiling 
#Type: simple 
#Input arrays: 1    Options: 0    Output arrays: 1 
#Inputs: real 
#Options: none 
#Outputs: ceil 
let ceil* = fnFactoryOneInNoOptOneOut("ceil")


#Chande Momentum Oscillator 
#Type: indicator 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: cmo 
let cmo* = fnFactoryOneInOneOptOneOut("cmo")


#Vector Cosine 
#Type: simple 
#Input arrays: 1    Options: 0    Output arrays: 1 
#Inputs: real 
#Options: none 
#Outputs: cos 
let cos* = fnFactoryOneInNoOptOneOut("cos")


#Vector Hyperbolic Cosine 
#Type: simple 
#Input arrays: 1    Options: 0    Output arrays: 1 
#Inputs: real 
#Options: none 
#Outputs: cosh 
let cosh* = fnFactoryOneInNoOptOneOut("cosh")


#Crossany 
#Type: math 
#Input arrays: 2    Options: 0    Output arrays: 1 
#Inputs: real, real 
#Options: none 
#Outputs: crossany 
let crossany* = fnFactoryTwoInNoOptOneOut("crossany")


#Crossover 
#Type: math 
#Input arrays: 2    Options: 0    Output arrays: 1 
#Inputs: real, real 
#Options: none 
#Outputs: crossover 
let crossover* = fnFactoryTwoInNoOptOneOut("crossover")


#Chaikins Volatility 
#Type: indicator 
#Input arrays: 2    Options: 1    Output arrays: 1 
#Inputs: high, low 
#Options: period 
#Outputs: cvi 
let cvi* = fnFactoryTwoInOneOptOneOut("cvi")


#Linear Decay 
#Type: math 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: decay 
let decay* = fnFactoryOneInOneOptOneOut("decay")


#Double Exponential Moving Average 
#Type: overlay 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: dema 
let dema* = fnFactoryOneInOneOptOneOut("dema")


#Directional Indicator 
#Type: indicator 
#Input arrays: 3    Options: 1    Output arrays: 2 
#Inputs: high, low, close 
#Options: period 
#Outputs: plus_di, minus_di 
let di* = fnFactoryThreeInOneOptTwoOut("di")


#Vector Division 
#Type: simple 
#Input arrays: 2    Options: 0    Output arrays: 1 
#Inputs: real, real 
#Options: none 
#Outputs: div 
let `div`* = fnFactoryTwoInNoOptOneOut("div")


#Directional Movement 
#Type: indicator 
#Input arrays: 2    Options: 1    Output arrays: 2 
#Inputs: high, low 
#Options: period 
#Outputs: plus_dm, minus_dm 
let dm* = fnFactoryTwoInOneOptTwoOut("dm")


#Detrended Price Oscillator 
#Type: indicator 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: dpo 
let dpo* = fnFactoryOneInOneOptOneOut("dpo")


#Directional Movement Index 
#Type: indicator 
#Input arrays: 3    Options: 1    Output arrays: 1 
#Inputs: high, low, close 
#Options: period 
#Outputs: dx 
let dx* = fnFactoryThreeInOneOptOneOut("dx")


#Exponential Decay 
#Type: math 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: edecay 
let edecay* = fnFactoryOneInOneOptOneOut("edecay")


#Exponential Moving Average 
#Type: overlay 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: ema 
let ema* = fnFactoryOneInOneOptOneOut("ema")


#Ease of Movement 
#Type: indicator 
#Input arrays: 3    Options: 0    Output arrays: 1 
#Inputs: high, low, volume 
#Options: none 
#Outputs: emv 
let emv* = fnFactoryThreeInNoOptOneOut("emv")


#Vector Exponential 
#Type: simple 
#Input arrays: 1    Options: 0    Output arrays: 1 
#Inputs: real 
#Options: none 
#Outputs: exp 
let exp* = fnFactoryOneInNoOptOneOut("exp")


#Fisher Transform 
#Type: indicator 
#Input arrays: 2    Options: 1    Output arrays: 2 
#Inputs: high, low 
#Options: period 
#Outputs: fisher, fisher_signal 
let fisher* = fnFactoryTwoInOneOptTwoOut("fisher")


#Vector Floor 
#Type: simple 
#Input arrays: 1    Options: 0    Output arrays: 1 
#Inputs: real 
#Options: none 
#Outputs: floor 
let floor* = fnFactoryOneInNoOptOneOut("floor")


#Forecast Oscillator 
#Type: indicator 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: fosc 
let fosc* = fnFactoryOneInOneOptOneOut("fosc")


#Hull Moving Average 
#Type: overlay 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: hma 
let hma* = fnFactoryOneInOneOptOneOut("hma")


#Kaufman Adaptive Moving Average 
#Type: overlay 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: kama 
let kama* = fnFactoryOneInOneOptOneOut("kama")


#Klinger Volume Oscillator 
#Type: indicator 
#Input arrays: 4    Options: 2    Output arrays: 1 
#Inputs: high, low, close, volume 
#Options: short period, long period 
#Outputs: kvo 
let kvo* = fnFactoryFourInTwoOptOneOut("kvo")


#Lag 
#Type: math 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: lag 
let lag* = fnFactoryOneInOneOptOneOut("lag")


#Linear Regression 
#Type: overlay 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: linreg 
let linreg* = fnFactoryOneInOneOptOneOut("linreg")


#Linear Regression Intercept 
#Type: indicator 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: linregintercept 
let linregintercept* = fnFactoryOneInOneOptOneOut("linregintercept")


#Linear Regression Slope 
#Type: indicator 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: linregslope 
let linregslope* = fnFactoryOneInOneOptOneOut("linregslope")


#Vector Natural Log 
#Type: simple 
#Input arrays: 1    Options: 0    Output arrays: 1 
#Inputs: real 
#Options: none 
#Outputs: ln 
let ln* = fnFactoryOneInNoOptOneOut("ln")


#Vector Base-10 Log 
#Type: simple 
#Input arrays: 1    Options: 0    Output arrays: 1 
#Inputs: real 
#Options: none 
#Outputs: log10 
let log10* = fnFactoryOneInNoOptOneOut("log10")


#Moving Average ConvergenceDivergence 
#Type: indicator 
#Input arrays: 1    Options: 3    Output arrays: 3 
#Inputs: real 
#Options: short period, long period, signal period 
#Outputs: macd, macd_signal, macd_histogram 
let macd* = fnFactoryOneInThreeOptThreeOut("macd")



#Market Facilitation Index 
#Type: indicator 
#Input arrays: 3    Options: 0    Output arrays: 1 
#Inputs: high, low, volume 
#Options: none 
#Outputs: marketfi 
let marketfi* = fnFactoryThreeInNoOptOneOut("marketfi")


#Mass Index 
#Type: indicator 
#Input arrays: 2    Options: 1    Output arrays: 1 
#Inputs: high, low 
#Options: period 
#Outputs: mass 
let mass* = fnFactoryTwoInOneOptOneOut("mass")


#Maximum In Period 
#Type: math 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: max 
let max* = fnFactoryOneInOneOptOneOut("max")


#Mean Deviation Over Period 
#Type: math 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: md 
let md* = fnFactoryOneInOneOptOneOut("md")


#Median Price 
#Type: overlay 
#Input arrays: 2    Options: 0    Output arrays: 1 
#Inputs: high, low 
#Options: none 
#Outputs: medprice 
let medprice* = fnFactoryTwoInNoOptOneOut("medprice")


#Money Flow Index 
#Type: indicator 
#Input arrays: 4    Options: 1    Output arrays: 1 
#Inputs: high, low, close, volume 
#Options: period 
#Outputs: mfi 
let mfi* = fnFactoryFourInOneOptOneOut("mfi")


#Minimum In Period 
#Type: math 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: min 
let min* = fnFactoryOneInOneOptOneOut("min")


#Momentum 
#Type: indicator 
#Input arrays: 1    Options: 1    Output arrays: 1 
#Inputs: real 
#Options: period 
#Outputs: mom 
let mom* = fnFactoryOneInOneOptOneOut("mom")


#Mesa Sine Wave 
#Type: indicator 
#Input arrays: 1    Options: 1    Output arrays: 2 
#Inputs: real 
#Options: period 
#Outputs: msw_sine, msw_lead 
let msw* = fnFactoryOneInOneOptTwoOut("msw")


#Vector Multiplication 
#Type: simple 
#Input arrays: 2    Options: 0    Output arrays: 1 
#Inputs: real, real 
#Options: none 
#Outputs: mul 
let mul* = fnFactoryTwoInNoOptOneOut("mul")


#Normalized Average True Range 
#Type: indicator 
#Input arrays: 3    Options: 1    Output arrays: 1 
#Inputs: high, low, close 
#Options: period 
#Outputs: natr 
let natr* = fnFactoryThreeInOneOptOneOut("natr")


#Negative Volume Index 
#Type: indicator 
#Input arrays: 2    Options: 0    Output arrays: 1 
#Inputs: close, volume 
#Options: none 
#Outputs: nvi 
let nvi* = fnFactoryTwoInNoOptOneOut("nvi")


#On Balance Volume 
#Type: indicator 
#Input arrays: 2    Options: 0    Output arrays: 1 
#Inputs: close, volume 
#Options: none 
#Outputs: obv 
let obv* = fnFactoryTwoInNoOptOneOut("obv")


#Percentage Price Oscillator 
#Type: indicator 
#Input arrays: 1    Options: 2    Output arrays: 1 
#Inputs: real 
#Options: short period, long period 
#Outputs: ppo 
let ppo* = fnFactoryOneInTwoOptOneOut("ppo")


#Parabolic SAR 
#Type: overlay 
#Input arrays: 2    Options: 2    Output arrays: 1 
#Inputs: high, low 
#Options: acceleration factor step, acceleration factor maximum 
#Outputs: psar 
let psar* = fnFactoryTwoInTwoOptOneOut("psar")


#Positive Volume Index 
#Type: indicator 
#Input arrays: 2    Options: 0    Output arrays: 1 
#Inputs: close, volume 
#Options: none 
#Outputs: pvi 
let pvi* = fnFactoryTwoInNoOptOneOut("pvi")


#Qstick 
#Type: indicator 
#Input arrays: 2    Options: 1    Output arrays: 1 
#Inputs: open, close 
#Options: period 
#Outputs: qstick 
let qstick* = fnFactoryTwoInOneOptOneOut("qstick")







####################################################################
#seq of cdouble(float64)
let dataIn = @[float 0.2, 0.3, 0.4, -0.5]  

let highIn = @[float 82.15, 81.89, 83.03, 83.30, 83.85, 83.90, 83.33, 84.30, 84.84, 85.00, 85.90, 86.58, 86.98, 88.00, 87.87]
let lowIn = @[float 81.29, 80.64, 81.31, 82.65, 83.07, 83.11, 82.49, 82.30, 84.15, 84.11, 84.03, 85.39, 85.76, 87.17, 87.01]
let close = @[float 81.59, 81.06, 82.87, 83.00, 83.61, 83.15, 82.84, 83.99, 84.55, 84.36, 85.53, 86.54, 86.89, 87.77, 87.29]
let open = @[float 81.85, 81.20, 81.55, 82.91, 83.10, 83.41, 82.71, 82.70, 84.20, 84.25, 84.03, 85.45, 86.18, 88.00, 87.60]
let volume = @[float 5653100.0, 6447400.0, 7690900.0, 3831400.0, 4455100.0, 3798000.0, 3936200.0, 4732000.0, 4841300.0, 3915300.0, 6830800.0, 6694100.0, 5293600.0, 7985800.0, 4807900.0 ]




when isMainModule:
#Not Right Numbers:
#psar
#pvi
#qstick
  echo ppo(close, 2, 5)



