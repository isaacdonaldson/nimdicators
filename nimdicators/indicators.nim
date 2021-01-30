import cImports, strformat

type
  indicator_info*  = object
    name*: string
    full_name*: string
    start*: ti_indicator_start_function
    indicator*: ti_indicator_function
    `type`*: int
    inputs*: int
    options*: int
    outputs*: int

proc ind(name: string, full_name: string, start: ti_indicator_start_function, indicator: ti_indicator_function, typeC: int, inputs: int, options: int, outputs: int): indicator_info =
  return indicator_info(name: name, full_name: full_name, start: start, indicator: indicator, `type`: typeC, inputs: inputs, options: options, outputs: outputs)


proc `$`*(indicator: indicator_info): string =
  let name = indicator.name
  let fullName = indicator.full_name
  let inputs = indicator.inputs
  let options = indicator.options
  let outputs = indicator.outputs
  return fmt("function: [{name}] {fullName}\ninputs: {inputs}\noptions: {options}\noutputs: {outputs}\n===========================")


#make into a table for constant access
let ti_indicators*: seq[indicator_info] = @[
    ind("abs", "Vector Absolute Value", ti_abs_start, ti_abs, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("acos", "Vector Arccosine", ti_acos_start, ti_acos, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("ad", "Accumulation/Distribution Line", ti_ad_start, ti_ad, TI_TYPE_INDICATOR, 4, 0, 1),
    ind("add", "Vector Addition", ti_add_start, ti_add, TI_TYPE_SIMPLE, 2, 0, 1),
    ind("adosc", "Accumulation/Distribution Oscillator", ti_adosc_start, ti_adosc, TI_TYPE_INDICATOR, 4, 2, 1),
    ind("adx", "Average Directional Movement Index", ti_adx_start, ti_adx, TI_TYPE_INDICATOR, 3, 1, 1),
    ind("adxr", "Average Directional Movement Rating", ti_adxr_start, ti_adxr, TI_TYPE_INDICATOR, 3, 1, 1),
    ind("ao", "Awesome Oscillator", ti_ao_start, ti_ao, TI_TYPE_INDICATOR, 2, 0, 1),
    ind("apo", "Absolute Price Oscillator", ti_apo_start, ti_apo, TI_TYPE_INDICATOR, 1, 2, 1),
    ind("aroon", "Aroon", ti_aroon_start, ti_aroon, TI_TYPE_INDICATOR, 2, 1, 2),
    ind("aroonosc", "Aroon Oscillator", ti_aroonosc_start, ti_aroonosc, TI_TYPE_INDICATOR, 2, 1, 1),
    ind("asin", "Vector Arcsine", ti_asin_start, ti_asin, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("atan", "Vector Arctangent", ti_atan_start, ti_atan, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("atr", "Average True Range", ti_atr_start, ti_atr, TI_TYPE_INDICATOR, 3, 1, 1),
    ind("avgprice", "Average Price", ti_avgprice_start, ti_avgprice, TI_TYPE_OVERLAY, 4, 0, 1),
    ind("bbands", "Bollinger Bands", ti_bbands_start, ti_bbands, TI_TYPE_OVERLAY, 1, 2, 3),
    ind("bop", "Balance of Power", ti_bop_start, ti_bop, TI_TYPE_INDICATOR, 4, 0, 1),
    ind("cci", "Commodity Channel Index", ti_cci_start, ti_cci, TI_TYPE_INDICATOR, 3, 1, 1),
    ind("ceil", "Vector Ceiling", ti_ceil_start, ti_ceil, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("cmo", "Chande Momentum Oscillator", ti_cmo_start, ti_cmo, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("cos", "Vector Cosine", ti_cos_start, ti_cos, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("cosh", "Vector Hyperbolic Cosine", ti_cosh_start, ti_cosh, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("crossany", "Crossany", ti_crossany_start, ti_crossany, TI_TYPE_MATH, 2, 0, 1),
    ind("crossover", "Crossover", ti_crossover_start, ti_crossover, TI_TYPE_MATH, 2, 0, 1),
    ind("cvi", "Chaikins Volatility", ti_cvi_start, ti_cvi, TI_TYPE_INDICATOR, 2, 1, 1),
    ind("decay", "Linear Decay", ti_decay_start, ti_decay, TI_TYPE_MATH, 1, 1, 1),
    ind("dema", "Double Exponential Moving Average", ti_dema_start, ti_dema, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("di", "Directional Indicator", ti_di_start, ti_di, TI_TYPE_INDICATOR, 3, 1, 2),
    ind("div", "Vector Division", ti_div_start, ti_div, TI_TYPE_SIMPLE, 2, 0, 1),
    ind("dm", "Directional Movement", ti_dm_start, ti_dm, TI_TYPE_INDICATOR, 2, 1, 2),
    ind("dpo", "Detrended Price Oscillator", ti_dpo_start, ti_dpo, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("dx", "Directional Movement Index", ti_dx_start, ti_dx, TI_TYPE_INDICATOR, 3, 1, 1),
    ind("edecay", "Exponential Decay", ti_edecay_start, ti_edecay, TI_TYPE_MATH, 1, 1, 1),
    ind("ema", "Exponential Moving Average", ti_ema_start, ti_ema, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("emv", "Ease of Movement", ti_emv_start, ti_emv, TI_TYPE_INDICATOR, 3, 0, 1),
    ind("exp", "Vector Exponential", ti_exp_start, ti_exp, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("fisher", "Fisher Transform", ti_fisher_start, ti_fisher, TI_TYPE_INDICATOR, 2, 1, 2),
    ind("floor", "Vector Floor", ti_floor_start, ti_floor, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("fosc", "Forecast Oscillator", ti_fosc_start, ti_fosc, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("hma", "Hull Moving Average", ti_hma_start, ti_hma, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("kama", "Kaufman Adaptive Moving Average", ti_kama_start, ti_kama, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("kvo", "Klinger Volume Oscillator", ti_kvo_start, ti_kvo, TI_TYPE_INDICATOR, 4, 2, 1),
    ind("lag", "Lag", ti_lag_start, ti_lag, TI_TYPE_MATH, 1, 1, 1),
    ind("linreg", "Linear Regression", ti_linreg_start, ti_linreg, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("linregintercept", "Linear Regression Intercept", ti_linregintercept_start, ti_linregintercept, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("linregslope", "Linear Regression Slope", ti_linregslope_start, ti_linregslope, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("ln", "Vector Natural Log", ti_ln_start, ti_ln, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("log10", "Vector Base-10 Log", ti_log10_start, ti_log10, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("macd", "Moving Average Convergence/Divergence", ti_macd_start, ti_macd, TI_TYPE_INDICATOR, 1, 3, 3),
    ind("marketfi", "Market Facilitation Index", ti_marketfi_start, ti_marketfi, TI_TYPE_INDICATOR, 3, 0, 1),
    ind("mass", "Mass Index", ti_mass_start, ti_mass, TI_TYPE_INDICATOR, 2, 1, 1),
    ind("max", "Maximum In Period", ti_max_start, ti_max, TI_TYPE_MATH, 1, 1, 1),
    ind("md", "Mean Deviation Over Period", ti_md_start, ti_md, TI_TYPE_MATH, 1, 1, 1),
    ind("medprice", "Median Price", ti_medprice_start, ti_medprice, TI_TYPE_OVERLAY, 2, 0, 1),
    ind("mfi", "Money Flow Index", ti_mfi_start, ti_mfi, TI_TYPE_INDICATOR, 4, 1, 1),
    ind("min", "Minimum In Period", ti_min_start, ti_min, TI_TYPE_MATH, 1, 1, 1),
    ind("mom", "Momentum", ti_mom_start, ti_mom, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("msw", "Mesa Sine Wave", ti_msw_start, ti_msw, TI_TYPE_INDICATOR, 1, 1, 2),
    ind("mul", "Vector Multiplication", ti_mul_start, ti_mul, TI_TYPE_SIMPLE, 2, 0, 1),
    ind("natr", "Normalized Average True Range", ti_natr_start, ti_natr, TI_TYPE_INDICATOR, 3, 1, 1),
    ind("nvi", "Negative Volume Index", ti_nvi_start, ti_nvi, TI_TYPE_INDICATOR, 2, 0, 1),
    ind("obv", "On Balance Volume", ti_obv_start, ti_obv, TI_TYPE_INDICATOR, 2, 0, 1),
    ind("ppo", "Percentage Price Oscillator", ti_ppo_start, ti_ppo, TI_TYPE_INDICATOR, 1, 2, 1),
    ind("psar", "Parabolic SAR", ti_psar_start, ti_psar, TI_TYPE_OVERLAY, 2, 2, 1),
    ind("pvi", "Positive Volume Index", ti_pvi_start, ti_pvi, TI_TYPE_INDICATOR, 2, 0, 1),
    ind("qstick", "Qstick", ti_qstick_start, ti_qstick, TI_TYPE_INDICATOR, 2, 1, 1),
    ind("roc", "Rate of Change", ti_roc_start, ti_roc, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("rocr", "Rate of Change Ratio", ti_rocr_start, ti_rocr, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("round", "Vector Round", ti_round_start, ti_round, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("rsi", "Relative Strength Index", ti_rsi_start, ti_rsi, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("sin", "Vector Sine", ti_sin_start, ti_sin, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("sinh", "Vector Hyperbolic Sine", ti_sinh_start, ti_sinh, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("sma", "Simple Moving Average", ti_sma_start, ti_sma, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("sqrt", "Vector Square Root", ti_sqrt_start, ti_sqrt, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("stddev", "Standard Deviation Over Period", ti_stddev_start, ti_stddev, TI_TYPE_MATH, 1, 1, 1),
    ind("stderr", "Standard Error Over Period", ti_stderr_start, ti_stderr, TI_TYPE_MATH, 1, 1, 1),
    ind("stoch", "Stochastic Oscillator", ti_stoch_start, ti_stoch, TI_TYPE_INDICATOR, 3, 3, 2),
    ind("stochrsi", "Stochastic RSI", ti_stochrsi_start, ti_stochrsi, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("sub", "Vector Subtraction", ti_sub_start, ti_sub, TI_TYPE_SIMPLE, 2, 0, 1),
    ind("sum", "Sum Over Period", ti_sum_start, ti_sum, TI_TYPE_MATH, 1, 1, 1),
    ind("tan", "Vector Tangent", ti_tan_start, ti_tan, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("tanh", "Vector Hyperbolic Tangent", ti_tanh_start, ti_tanh, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("tema", "Triple Exponential Moving Average", ti_tema_start, ti_tema, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("todeg", "Vector Degree Conversion", ti_todeg_start, ti_todeg, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("torad", "Vector Radian Conversion", ti_torad_start, ti_torad, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("tr", "True Range", ti_tr_start, ti_tr, TI_TYPE_INDICATOR, 3, 0, 1),
    ind("trima", "Triangular Moving Average", ti_trima_start, ti_trima, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("trix", "Trix", ti_trix_start, ti_trix, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("trunc", "Vector Truncate", ti_trunc_start, ti_trunc, TI_TYPE_SIMPLE, 1, 0, 1),
    ind("tsf", "Time Series Forecast", ti_tsf_start, ti_tsf, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("typprice", "Typical Price", ti_typprice_start, ti_typprice, TI_TYPE_OVERLAY, 3, 0, 1),
    ind("ultosc", "Ultimate Oscillator", ti_ultosc_start, ti_ultosc, TI_TYPE_INDICATOR, 3, 3, 1),
    ind("var", "Variance Over Period", ti_var_start, ti_var, TI_TYPE_MATH, 1, 1, 1),
    ind("vhf", "Vertical Horizontal Filter", ti_vhf_start, ti_vhf, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("vidya", "Variable Index Dynamic Average", ti_vidya_start, ti_vidya, TI_TYPE_OVERLAY, 1, 3, 1),
    ind("volatility", "Annualized Historical Volatility", ti_volatility_start, ti_volatility, TI_TYPE_INDICATOR, 1, 1, 1),
    ind("vosc", "Volume Oscillator", ti_vosc_start, ti_vosc, TI_TYPE_INDICATOR, 1, 2, 1),
    ind("vwma", "Volume Weighted Moving Average", ti_vwma_start, ti_vwma, TI_TYPE_OVERLAY, 2, 1, 1),
    ind("wad", "Williams Accumulation/Distribution", ti_wad_start, ti_wad, TI_TYPE_INDICATOR, 3, 0, 1),
    ind("wcprice", "Weighted Close Price", ti_wcprice_start, ti_wcprice, TI_TYPE_OVERLAY, 3, 0, 1),
    ind("wilders", "Wilders Smoothing", ti_wilders_start, ti_wilders, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("willr", "Williams %R", ti_willr_start, ti_willr, TI_TYPE_INDICATOR, 3, 1, 1),
    ind("wma", "Weighted Moving Average", ti_wma_start, ti_wma, TI_TYPE_OVERLAY, 1, 1, 1),
    ind("zlema", "Zero-Lag Exponential Moving Average", ti_zlema_start, ti_zlema, TI_TYPE_OVERLAY, 1, 1, 1)
]


proc getIndicator*(fn: string): indicator_info =
  for ind in ti_indicators:
    if ind.name == fn:
      return ind