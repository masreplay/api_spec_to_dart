// Currency
// {
//     "properties": {},
//     "type": "object",
//     "enum": [
//         "AED",
//         "AFN",
//         "ALL",
//         "AMD",
//         "ANG",
//         "AOA",
//         "ARS",
//         "AUD",
//         "AWG",
//         "AZN",
//         "BAM",
//         "BBD",
//         "BDT",
//         "BGN",
//         "BHD",
//         "BIF",
//         "BMD",
//         "BND",
//         "BOB",
//         "BOV",
//         "BRL",
//         "BSD",
//         "BTN",
//         "BWP",
//         "BYN",
//         "BZD",
//         "CAD",
//         "CDF",
//         "CHE",
//         "CHF",
//         "CHW",
//         "CLF",
//         "CLP",
//         "CNY",
//         "COP",
//         "COU",
//         "CRC",
//         "CUC",
//         "CUP",
//         "CVE",
//         "CZK",
//         "DJF",
//         "DKK",
//         "DOP",
//         "DZD",
//         "EGP",
//         "ERN",
//         "ETB",
//         "EUR",
//         "FJD",
//         "FKP",
//         "GBP",
//         "GEL",
//         "GHS",
//         "GIP",
//         "GMD",
//         "GNF",
//         "GTQ",
//         "GYD",
//         "HKD",
//         "HNL",
//         "HRK",
//         "HTG",
//         "HUF",
//         "IDR",
//         "ILS",
//         "INR",
//         "IQD",
//         "IRR",
//         "ISK",
//         "JMD",
//         "JOD",
//         "JPY",
//         "KES",
//         "KGS",
//         "KHR",
//         "KMF",
//         "KPW",
//         "KRW",
//         "KWD",
//         "KYD",
//         "KZT",
//         "LAK",
//         "LBP",
//         "LKR",
//         "LRD",
//         "LSL",
//         "LYD",
//         "MAD",
//         "MDL",
//         "MGA",
//         "MKD",
//         "MMK",
//         "MNT",
//         "MOP",
//         "MRU",
//         "MUR",
//         "MVR",
//         "MWK",
//         "MXN",
//         "MXV",
//         "MYR",
//         "MZN",
//         "NAD",
//         "NGN",
//         "NIO",
//         "NOK",
//         "NPR",
//         "NZD",
//         "OMR",
//         "PAB",
//         "PEN",
//         "PGK",
//         "PHP",
//         "PKR",
//         "PLN",
//         "PYG",
//         "QAR",
//         "RON",
//         "RSD",
//         "RUB",
//         "RWF",
//         "SAR",
//         "SBD",
//         "SCR",
//         "SDG",
//         "SEK",
//         "SGD",
//         "SHP",
//         "SLE",
//         "SLL",
//         "SOS",
//         "SRD",
//         "SSP",
//         "STN",
//         "SVC",
//         "SYP",
//         "SZL",
//         "THB",
//         "TJS",
//         "TMT",
//         "TND",
//         "TOP",
//         "TRY",
//         "TTD",
//         "TWD",
//         "TZS",
//         "UAH",
//         "UGX",
//         "USD",
//         "USN",
//         "UYI",
//         "UYU",
//         "UYW",
//         "UZS",
//         "VED",
//         "VES",
//         "VND",
//         "VUV",
//         "WST",
//         "XAF",
//         "XCD",
//         "XOF",
//         "XPF",
//         "XSU",
//         "XUA",
//         "YER",
//         "ZAR",
//         "ZMW",
//         "ZWL"
//     ]
// }

library currency;

import 'exports.dart';
part 'currency.g.dart';

@JsonEnum(alwaysCreate: true)
enum Currency {
  @JsonValue("AED")
  aed,
  @JsonValue("AFN")
  afn,
  @JsonValue("ALL")
  all,
  @JsonValue("AMD")
  amd,
  @JsonValue("ANG")
  ang,
  @JsonValue("AOA")
  aoa,
  @JsonValue("ARS")
  ars,
  @JsonValue("AUD")
  aud,
  @JsonValue("AWG")
  awg,
  @JsonValue("AZN")
  azn,
  @JsonValue("BAM")
  bam,
  @JsonValue("BBD")
  bbd,
  @JsonValue("BDT")
  bdt,
  @JsonValue("BGN")
  bgn,
  @JsonValue("BHD")
  bhd,
  @JsonValue("BIF")
  bif,
  @JsonValue("BMD")
  bmd,
  @JsonValue("BND")
  bnd,
  @JsonValue("BOB")
  bob,
  @JsonValue("BOV")
  bov,
  @JsonValue("BRL")
  brl,
  @JsonValue("BSD")
  bsd,
  @JsonValue("BTN")
  btn,
  @JsonValue("BWP")
  bwp,
  @JsonValue("BYN")
  byn,
  @JsonValue("BZD")
  bzd,
  @JsonValue("CAD")
  cad,
  @JsonValue("CDF")
  cdf,
  @JsonValue("CHE")
  che,
  @JsonValue("CHF")
  chf,
  @JsonValue("CHW")
  chw,
  @JsonValue("CLF")
  clf,
  @JsonValue("CLP")
  clp,
  @JsonValue("CNY")
  cny,
  @JsonValue("COP")
  cop,
  @JsonValue("COU")
  cou,
  @JsonValue("CRC")
  crc,
  @JsonValue("CUC")
  cuc,
  @JsonValue("CUP")
  cup,
  @JsonValue("CVE")
  cve,
  @JsonValue("CZK")
  czk,
  @JsonValue("DJF")
  djf,
  @JsonValue("DKK")
  dkk,
  @JsonValue("DOP")
  dop,
  @JsonValue("DZD")
  dzd,
  @JsonValue("EGP")
  egp,
  @JsonValue("ERN")
  ern,
  @JsonValue("ETB")
  etb,
  @JsonValue("EUR")
  eur,
  @JsonValue("FJD")
  fjd,
  @JsonValue("FKP")
  fkp,
  @JsonValue("GBP")
  gbp,
  @JsonValue("GEL")
  gel,
  @JsonValue("GHS")
  ghs,
  @JsonValue("GIP")
  gip,
  @JsonValue("GMD")
  gmd,
  @JsonValue("GNF")
  gnf,
  @JsonValue("GTQ")
  gtq,
  @JsonValue("GYD")
  gyd,
  @JsonValue("HKD")
  hkd,
  @JsonValue("HNL")
  hnl,
  @JsonValue("HRK")
  hrk,
  @JsonValue("HTG")
  htg,
  @JsonValue("HUF")
  huf,
  @JsonValue("IDR")
  idr,
  @JsonValue("ILS")
  ils,
  @JsonValue("INR")
  inr,
  @JsonValue("IQD")
  iqd,
  @JsonValue("IRR")
  irr,
  @JsonValue("ISK")
  isk,
  @JsonValue("JMD")
  jmd,
  @JsonValue("JOD")
  jod,
  @JsonValue("JPY")
  jpy,
  @JsonValue("KES")
  kes,
  @JsonValue("KGS")
  kgs,
  @JsonValue("KHR")
  khr,
  @JsonValue("KMF")
  kmf,
  @JsonValue("KPW")
  kpw,
  @JsonValue("KRW")
  krw,
  @JsonValue("KWD")
  kwd,
  @JsonValue("KYD")
  kyd,
  @JsonValue("KZT")
  kzt,
  @JsonValue("LAK")
  lak,
  @JsonValue("LBP")
  lbp,
  @JsonValue("LKR")
  lkr,
  @JsonValue("LRD")
  lrd,
  @JsonValue("LSL")
  lsl,
  @JsonValue("LYD")
  lyd,
  @JsonValue("MAD")
  mad,
  @JsonValue("MDL")
  mdl,
  @JsonValue("MGA")
  mga,
  @JsonValue("MKD")
  mkd,
  @JsonValue("MMK")
  mmk,
  @JsonValue("MNT")
  mnt,
  @JsonValue("MOP")
  mop,
  @JsonValue("MRU")
  mru,
  @JsonValue("MUR")
  mur,
  @JsonValue("MVR")
  mvr,
  @JsonValue("MWK")
  mwk,
  @JsonValue("MXN")
  mxn,
  @JsonValue("MXV")
  mxv,
  @JsonValue("MYR")
  myr,
  @JsonValue("MZN")
  mzn,
  @JsonValue("NAD")
  nad,
  @JsonValue("NGN")
  ngn,
  @JsonValue("NIO")
  nio,
  @JsonValue("NOK")
  nok,
  @JsonValue("NPR")
  npr,
  @JsonValue("NZD")
  nzd,
  @JsonValue("OMR")
  omr,
  @JsonValue("PAB")
  pab,
  @JsonValue("PEN")
  pen,
  @JsonValue("PGK")
  pgk,
  @JsonValue("PHP")
  php,
  @JsonValue("PKR")
  pkr,
  @JsonValue("PLN")
  pln,
  @JsonValue("PYG")
  pyg,
  @JsonValue("QAR")
  qar,
  @JsonValue("RON")
  ron,
  @JsonValue("RSD")
  rsd,
  @JsonValue("RUB")
  rub,
  @JsonValue("RWF")
  rwf,
  @JsonValue("SAR")
  sar,
  @JsonValue("SBD")
  sbd,
  @JsonValue("SCR")
  scr,
  @JsonValue("SDG")
  sdg,
  @JsonValue("SEK")
  sek,
  @JsonValue("SGD")
  sgd,
  @JsonValue("SHP")
  shp,
  @JsonValue("SLE")
  sle,
  @JsonValue("SLL")
  sll,
  @JsonValue("SOS")
  sos,
  @JsonValue("SRD")
  srd,
  @JsonValue("SSP")
  ssp,
  @JsonValue("STN")
  stn,
  @JsonValue("SVC")
  svc,
  @JsonValue("SYP")
  syp,
  @JsonValue("SZL")
  szl,
  @JsonValue("THB")
  thb,
  @JsonValue("TJS")
  tjs,
  @JsonValue("TMT")
  tmt,
  @JsonValue("TND")
  tnd,
  @JsonValue("TOP")
  top,
  @JsonValue("TRY")
  tryaa,
  @JsonValue("TTD")
  ttd,
  @JsonValue("TWD")
  twd,
  @JsonValue("TZS")
  tzs,
  @JsonValue("UAH")
  uah,
  @JsonValue("UGX")
  ugx,
  @JsonValue("USD")
  usd,
  @JsonValue("USN")
  usn,
  @JsonValue("UYI")
  uyi,
  @JsonValue("UYU")
  uyu,
  @JsonValue("UYW")
  uyw,
  @JsonValue("UZS")
  uzs,
  @JsonValue("VED")
  ved,
  @JsonValue("VES")
  ves,
  @JsonValue("VND")
  vnd,
  @JsonValue("VUV")
  vuv,
  @JsonValue("WST")
  wst,
  @JsonValue("XAF")
  xaf,
  @JsonValue("XCD")
  xcd,
  @JsonValue("XOF")
  xof,
  @JsonValue("XPF")
  xpf,
  @JsonValue("XSU")
  xsu,
  @JsonValue("XUA")
  xua,
  @JsonValue("YER")
  yer,
  @JsonValue("ZAR")
  zar,
  @JsonValue("ZMW")
  zmw,
  @JsonValue("ZWL")
  zwl;

  factory Currency.fromJson(String json) => Currency.values.firstWhere(
    (e) => e.toJson() == json,
    orElse: () => Currency.values.first,
  );

  String toJson() => _$CurrencyEnumMap[this]!;
}
