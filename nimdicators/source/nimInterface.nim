

{.compile: "/home/esak/work/vialactic/nimdicators/nimdicators/source/tiamagamation.c".}
# Importing /home/esak/work/vialactic/nimdicators/nimdicators/source/indicators.h
# Generated @ 2021-01-22T22:25:33-08:00
# Command line:
#   /home/esak/.nimble/pkgs/nimterop-0.5.9/nimterop/toast --preprocess -m:c --recurse --pnim --nim:/home/esak/.choosenim/toolchains/nim-1.4.2/bin/nim /home/esak/work/vialactic/nimdicators/nimdicators/source/indicators.h

import nimterop/types

{.push hint[ConvFromXtoItselfNotNeeded]: off.}

const
  headerindicators {.used.} = "/home/esak/work/vialactic/nimdicators/nimdicators/source/indicators.h"

  # 
  #  * Tulip Indicators
  #  * https:tulipindicators.org/
  #  * Copyright (c) 2010-2018 Tulip Charts LLC
  #  * Lewis Van Winkle (LV@tulipcharts.org)
  #  *
  #  * This file is part of Tulip Indicators.
  #  *
  #  * Tulip Indicators is free software: you can redistribute it and/or modify it
  #  * under the terms of the GNU Lesser General Public License as published by the
  #  * Free Software Foundation, either version 3 of the License, or (at your
  #  * option) any later version.
  #  *
  #  * Tulip Indicators is distributed in the hope that it will be useful, but
  #  * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
  #  * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
  #  * for more details.
  #  *
  #  * You should have received a copy of the GNU Lesser General Public License
  #  * along with Tulip Indicators.  If not, see <http:www.gnu.org/licenses/>.
  #  *
  # 
  # 
  #  *
  #  * Version 0.8.4
  #  * Header Build 1537377628
  #  *
  # 
  # 
  #   *
  #   * This file is generated. Do not modify directly.
  #   *
  # 
  TI_VERSION* = "0.8.4"
  TI_BUILD* = 1537377628
  TI_INDICATOR_COUNT* = 104
  TI_OKAY* = 0
  TI_INVALID_OPTION* = 1
  TI_TYPE_OVERLAY* = 1
  TI_TYPE_INDICATOR* = 2
  TI_TYPE_MATH* = 3
  TI_TYPE_SIMPLE* = 4
  TI_TYPE_COMPARATIVE* = 5
  TI_MAXINDPARAMS* = 10

{.pragma: impindicators, importc, header: headerindicators.}
{.pragma: impindicatorsC, impindicators, cdecl.}

type
  ti_indicator_start_function* {.impindicators.} = proc(options: ptr cdouble): cint {.cdecl.}
  ti_indicator_function* {.impindicators.} = proc(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.cdecl.}
  ti_indicator_info* {.importc: "struct ti_indicator_info", header: headerindicators, bycopy.} = object
    name*: cstring
    full_name*: cstring
    start*: ti_indicator_start_function
    indicator*: ti_indicator_function
    `type`*: cint
    inputs*: cint
    options*: cint
    outputs*: cint
    input_names*: array[10, cstring]
    option_names*: array[10, cstring]
    output_names*: array[10, cstring]


proc ti_version*(): cstring {.impindicatorsC.}
proc ti_build*(): clong {.impindicatorsC.}

# Complete array of all indicators. Last element is 0,0,0,0...
# Declaration 'ti_indicators' skipped

# Searches for an indicator by name. Returns 0 if not found.
proc ti_find_indicator*(name: cstring): ptr ti_indicator_info {.impindicatorsC.}

# 
#  *
#  *
#  *
#  *
#  *
#  *        All indicators below, sorted alphabetically.
#  *
#  *
#  *
#  *
#  *
# 
#  Vector Absolute Value
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: abs
proc ti_abs_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_abs*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Arccosine
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: acos
proc ti_acos_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_acos*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Accumulation/Distribution Line
#  Type: indicator
#  Input arrays: 4    Options: 0    Output arrays: 1
#  Inputs: high, low, close, volume
#  Options: none
#  Outputs: ad
proc ti_ad_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_ad*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Addition
#  Type: simple
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: real, real
#  Options: none
#  Outputs: add
proc ti_add_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_add*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Accumulation/Distribution Oscillator
#  Type: indicator
#  Input arrays: 4    Options: 2    Output arrays: 1
#  Inputs: high, low, close, volume
#  Options: short period, long period
#  Outputs: adosc
proc ti_adosc_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_adosc*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Average Directional Movement Index
#  Type: indicator
#  Input arrays: 3    Options: 1    Output arrays: 1
#  Inputs: high, low, close
#  Options: period
#  Outputs: dx
proc ti_adx_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_adx*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Average Directional Movement Rating
#  Type: indicator
#  Input arrays: 3    Options: 1    Output arrays: 1
#  Inputs: high, low, close
#  Options: period
#  Outputs: dx
proc ti_adxr_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_adxr*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Awesome Oscillator
#  Type: indicator
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: high, low
#  Options: none
#  Outputs: ao
proc ti_ao_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_ao*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Absolute Price Oscillator
#  Type: indicator
#  Input arrays: 1    Options: 2    Output arrays: 1
#  Inputs: real
#  Options: short period, long period
#  Outputs: apo
proc ti_apo_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_apo*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Aroon
#  Type: indicator
#  Input arrays: 2    Options: 1    Output arrays: 2
#  Inputs: high, low
#  Options: period
#  Outputs: aroon_down, aroon_up
proc ti_aroon_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_aroon*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Aroon Oscillator
#  Type: indicator
#  Input arrays: 2    Options: 1    Output arrays: 1
#  Inputs: high, low
#  Options: period
#  Outputs: aroonosc
proc ti_aroonosc_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_aroonosc*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Arcsine
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: asin
proc ti_asin_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_asin*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Arctangent
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: atan
proc ti_atan_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_atan*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Average True Range
#  Type: indicator
#  Input arrays: 3    Options: 1    Output arrays: 1
#  Inputs: high, low, close
#  Options: period
#  Outputs: atr
proc ti_atr_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_atr*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Average Price
#  Type: overlay
#  Input arrays: 4    Options: 0    Output arrays: 1
#  Inputs: open, high, low, close
#  Options: none
#  Outputs: avgprice
proc ti_avgprice_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_avgprice*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Bollinger Bands
#  Type: overlay
#  Input arrays: 1    Options: 2    Output arrays: 3
#  Inputs: real
#  Options: period, stddev
#  Outputs: bbands_lower, bbands_middle, bbands_upper
proc ti_bbands_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_bbands*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Balance of Power
#  Type: indicator
#  Input arrays: 4    Options: 0    Output arrays: 1
#  Inputs: open, high, low, close
#  Options: none
#  Outputs: bop
proc ti_bop_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_bop*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Commodity Channel Index
#  Type: indicator
#  Input arrays: 3    Options: 1    Output arrays: 1
#  Inputs: high, low, close
#  Options: period
#  Outputs: cci
proc ti_cci_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_cci*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Ceiling
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: ceil
proc ti_ceil_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_ceil*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Chande Momentum Oscillator
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: cmo
proc ti_cmo_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_cmo*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Cosine
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: cos
proc ti_cos_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_cos*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Hyperbolic Cosine
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: cosh
proc ti_cosh_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_cosh*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Crossany
#  Type: math
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: real, real
#  Options: none
#  Outputs: crossany
proc ti_crossany_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_crossany*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Crossover
#  Type: math
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: real, real
#  Options: none
#  Outputs: crossover
proc ti_crossover_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_crossover*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Chaikins Volatility
#  Type: indicator
#  Input arrays: 2    Options: 1    Output arrays: 1
#  Inputs: high, low
#  Options: period
#  Outputs: cvi
proc ti_cvi_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_cvi*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Linear Decay
#  Type: math
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: decay
proc ti_decay_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_decay*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Double Exponential Moving Average
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: dema
proc ti_dema_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_dema*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Directional Indicator
#  Type: indicator
#  Input arrays: 3    Options: 1    Output arrays: 2
#  Inputs: high, low, close
#  Options: period
#  Outputs: plus_di, minus_di
proc ti_di_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_di*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Division
#  Type: simple
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: real, real
#  Options: none
#  Outputs: div
proc ti_div_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_div*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Directional Movement
#  Type: indicator
#  Input arrays: 2    Options: 1    Output arrays: 2
#  Inputs: high, low
#  Options: period
#  Outputs: plus_dm, minus_dm
proc ti_dm_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_dm*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Detrended Price Oscillator
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: dpo
proc ti_dpo_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_dpo*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Directional Movement Index
#  Type: indicator
#  Input arrays: 3    Options: 1    Output arrays: 1
#  Inputs: high, low, close
#  Options: period
#  Outputs: dx
proc ti_dx_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_dx*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Exponential Decay
#  Type: math
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: edecay
proc ti_edecay_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_edecay*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Exponential Moving Average
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: ema
proc ti_ema_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_ema*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Ease of Movement
#  Type: indicator
#  Input arrays: 3    Options: 0    Output arrays: 1
#  Inputs: high, low, volume
#  Options: none
#  Outputs: emv
proc ti_emv_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_emv*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Exponential
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: exp
proc ti_exp_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_exp*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Fisher Transform
#  Type: indicator
#  Input arrays: 2    Options: 1    Output arrays: 2
#  Inputs: high, low
#  Options: period
#  Outputs: fisher, fisher_signal
proc ti_fisher_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_fisher*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Floor
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: floor
proc ti_floor_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_floor*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Forecast Oscillator
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: fosc
proc ti_fosc_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_fosc*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Hull Moving Average
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: hma
proc ti_hma_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_hma*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Kaufman Adaptive Moving Average
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: kama
proc ti_kama_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_kama*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Klinger Volume Oscillator
#  Type: indicator
#  Input arrays: 4    Options: 2    Output arrays: 1
#  Inputs: high, low, close, volume
#  Options: short period, long period
#  Outputs: kvo
proc ti_kvo_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_kvo*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Lag
#  Type: math
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: lag
proc ti_lag_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_lag*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Linear Regression
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: linreg
proc ti_linreg_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_linreg*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Linear Regression Intercept
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: linregintercept
proc ti_linregintercept_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_linregintercept*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Linear Regression Slope
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: linregslope
proc ti_linregslope_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_linregslope*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Natural Log
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: ln
proc ti_ln_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_ln*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Base-10 Log
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: log10
proc ti_log10_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_log10*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Moving Average Convergence/Divergence
#  Type: indicator
#  Input arrays: 1    Options: 3    Output arrays: 3
#  Inputs: real
#  Options: short period, long period, signal period
#  Outputs: macd, macd_signal, macd_histogram
proc ti_macd_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_macd*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Market Facilitation Index
#  Type: indicator
#  Input arrays: 3    Options: 0    Output arrays: 1
#  Inputs: high, low, volume
#  Options: none
#  Outputs: marketfi
proc ti_marketfi_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_marketfi*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Mass Index
#  Type: indicator
#  Input arrays: 2    Options: 1    Output arrays: 1
#  Inputs: high, low
#  Options: period
#  Outputs: mass
proc ti_mass_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_mass*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Maximum In Period
#  Type: math
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: max
proc ti_max_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_max*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Mean Deviation Over Period
#  Type: math
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: md
proc ti_md_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_md*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Median Price
#  Type: overlay
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: high, low
#  Options: none
#  Outputs: medprice
proc ti_medprice_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_medprice*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Money Flow Index
#  Type: indicator
#  Input arrays: 4    Options: 1    Output arrays: 1
#  Inputs: high, low, close, volume
#  Options: period
#  Outputs: mfi
proc ti_mfi_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_mfi*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Minimum In Period
#  Type: math
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: min
proc ti_min_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_min*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Momentum
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: mom
proc ti_mom_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_mom*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Mesa Sine Wave
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 2
#  Inputs: real
#  Options: period
#  Outputs: msw_sine, msw_lead
proc ti_msw_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_msw*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Multiplication
#  Type: simple
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: real, real
#  Options: none
#  Outputs: mul
proc ti_mul_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_mul*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Normalized Average True Range
#  Type: indicator
#  Input arrays: 3    Options: 1    Output arrays: 1
#  Inputs: high, low, close
#  Options: period
#  Outputs: natr
proc ti_natr_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_natr*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Negative Volume Index
#  Type: indicator
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: close, volume
#  Options: none
#  Outputs: nvi
proc ti_nvi_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_nvi*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  On Balance Volume
#  Type: indicator
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: close, volume
#  Options: none
#  Outputs: obv
proc ti_obv_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_obv*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Percentage Price Oscillator
#  Type: indicator
#  Input arrays: 1    Options: 2    Output arrays: 1
#  Inputs: real
#  Options: short period, long period
#  Outputs: ppo
proc ti_ppo_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_ppo*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Parabolic SAR
#  Type: overlay
#  Input arrays: 2    Options: 2    Output arrays: 1
#  Inputs: high, low
#  Options: acceleration factor step, acceleration factor maximum
#  Outputs: psar
proc ti_psar_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_psar*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Positive Volume Index
#  Type: indicator
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: close, volume
#  Options: none
#  Outputs: pvi
proc ti_pvi_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_pvi*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Qstick
#  Type: indicator
#  Input arrays: 2    Options: 1    Output arrays: 1
#  Inputs: open, close
#  Options: period
#  Outputs: qstick
proc ti_qstick_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_qstick*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Rate of Change
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: roc
proc ti_roc_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_roc*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Rate of Change Ratio
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: rocr
proc ti_rocr_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_rocr*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Round
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: round
proc ti_round_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_round*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Relative Strength Index
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: rsi
proc ti_rsi_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_rsi*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Sine
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: sin
proc ti_sin_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_sin*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Hyperbolic Sine
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: sinh
proc ti_sinh_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_sinh*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Simple Moving Average
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: sma
proc ti_sma_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_sma*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Square Root
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: sqrt
proc ti_sqrt_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_sqrt*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Standard Deviation Over Period
#  Type: math
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: stddev
proc ti_stddev_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_stddev*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Standard Error Over Period
#  Type: math
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: stderr
proc ti_stderr_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_stderr*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Stochastic Oscillator
#  Type: indicator
#  Input arrays: 3    Options: 3    Output arrays: 2
#  Inputs: high, low, close
#  Options: %k period, %k slowing period, %d period
#  Outputs: stoch_k, stoch_d
proc ti_stoch_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_stoch*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Stochastic RSI
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: stochrsi
proc ti_stochrsi_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_stochrsi*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Subtraction
#  Type: simple
#  Input arrays: 2    Options: 0    Output arrays: 1
#  Inputs: real, real
#  Options: none
#  Outputs: sub
proc ti_sub_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_sub*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Sum Over Period
#  Type: math
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: sum
proc ti_sum_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_sum*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Tangent
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: tan
proc ti_tan_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_tan*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Hyperbolic Tangent
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: tanh
proc ti_tanh_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_tanh*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Triple Exponential Moving Average
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: tema
proc ti_tema_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_tema*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Degree Conversion
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: degrees
proc ti_todeg_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_todeg*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Radian Conversion
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: radians
proc ti_torad_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_torad*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  True Range
#  Type: indicator
#  Input arrays: 3    Options: 0    Output arrays: 1
#  Inputs: high, low, close
#  Options: none
#  Outputs: tr
proc ti_tr_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_tr*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Triangular Moving Average
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: trima
proc ti_trima_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_trima*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Trix
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: trix
proc ti_trix_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_trix*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vector Truncate
#  Type: simple
#  Input arrays: 1    Options: 0    Output arrays: 1
#  Inputs: real
#  Options: none
#  Outputs: trunc
proc ti_trunc_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_trunc*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Time Series Forecast
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: tsf
proc ti_tsf_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_tsf*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Typical Price
#  Type: overlay
#  Input arrays: 3    Options: 0    Output arrays: 1
#  Inputs: high, low, close
#  Options: none
#  Outputs: typprice
proc ti_typprice_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_typprice*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Ultimate Oscillator
#  Type: indicator
#  Input arrays: 3    Options: 3    Output arrays: 1
#  Inputs: high, low, close
#  Options: short period, medium period, long period
#  Outputs: ultosc
proc ti_ultosc_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_ultosc*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Variance Over Period
#  Type: math
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: var
proc ti_var_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_var*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Vertical Horizontal Filter
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: vhf
proc ti_vhf_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_vhf*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Variable Index Dynamic Average
#  Type: overlay
#  Input arrays: 1    Options: 3    Output arrays: 1
#  Inputs: real
#  Options: short period, long period, alpha
#  Outputs: vidya
proc ti_vidya_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_vidya*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Annualized Historical Volatility
#  Type: indicator
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: volatility
proc ti_volatility_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_volatility*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Volume Oscillator
#  Type: indicator
#  Input arrays: 1    Options: 2    Output arrays: 1
#  Inputs: volume
#  Options: short period, long period
#  Outputs: vosc
proc ti_vosc_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_vosc*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Volume Weighted Moving Average
#  Type: overlay
#  Input arrays: 2    Options: 1    Output arrays: 1
#  Inputs: close, volume
#  Options: period
#  Outputs: vwma
proc ti_vwma_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_vwma*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Williams Accumulation/Distribution
#  Type: indicator
#  Input arrays: 3    Options: 0    Output arrays: 1
#  Inputs: high, low, close
#  Options: none
#  Outputs: wad
proc ti_wad_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_wad*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Weighted Close Price
#  Type: overlay
#  Input arrays: 3    Options: 0    Output arrays: 1
#  Inputs: high, low, close
#  Options: none
#  Outputs: wcprice
proc ti_wcprice_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_wcprice*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Wilders Smoothing
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: wilders
proc ti_wilders_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_wilders*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Williams %R
#  Type: indicator
#  Input arrays: 3    Options: 1    Output arrays: 1
#  Inputs: high, low, close
#  Options: period
#  Outputs: willr
proc ti_willr_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_willr*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Weighted Moving Average
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: wma
proc ti_wma_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_wma*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

#  Zero-Lag Exponential Moving Average
#  Type: overlay
#  Input arrays: 1    Options: 1    Output arrays: 1
#  Inputs: real
#  Options: period
#  Outputs: zlema
proc ti_zlema_start*(options: ptr cdouble): cint {.impindicatorsC.}
proc ti_zlema*(size: cint, inputs: ptr ptr cdouble, options: ptr cdouble, outputs: ptr ptr cdouble): cint {.impindicatorsC.}

{.pop.}
{.hint: "The legacy wrapper generation algorithm is deprecated and will be removed in the next release of Nimterop.".}
{.hint: "Refer to CHANGES.md for details on migrating to the new backend.".}
