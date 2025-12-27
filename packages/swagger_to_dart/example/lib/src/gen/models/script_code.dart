// ScriptCode
// {
//     "properties": {},
//     "type": "object",
//     "enum": [
//         "Adlm",
//         "Afak",
//         "Aghb",
//         "Ahom",
//         "Arab",
//         "Aran",
//         "Armi",
//         "Armn",
//         "Avst",
//         "Bali",
//         "Bamu",
//         "Bass",
//         "Batk",
//         "Beng",
//         "Bhks",
//         "Blis",
//         "Bopo",
//         "Brah",
//         "Brai",
//         "Bugi",
//         "Buhd",
//         "Cakm",
//         "Cans",
//         "Cari",
//         "Cham",
//         "Cher",
//         "Cirt",
//         "Copt",
//         "Cprt",
//         "Cyrl",
//         "Cyrs",
//         "Deva",
//         "Dsrt",
//         "Dupl",
//         "Egyd",
//         "Egyh",
//         "Egyp",
//         "Elba",
//         "Ethi",
//         "Geok",
//         "Geor",
//         "Glag",
//         "Goth",
//         "Gran",
//         "Grek",
//         "Gujr",
//         "Guru",
//         "Hanb",
//         "Hang",
//         "Hani",
//         "Hano",
//         "Hans",
//         "Hant",
//         "Hatr",
//         "Hebr",
//         "Hira",
//         "Hluw",
//         "Hmng",
//         "Hrkt",
//         "Hung",
//         "Inds",
//         "Ital",
//         "Jamo",
//         "Java",
//         "Jpan",
//         "Jurc",
//         "Kali",
//         "Kana",
//         "Khar",
//         "Khmr",
//         "Khoj",
//         "Kitl",
//         "Kits",
//         "Knda",
//         "Kore",
//         "Kpel",
//         "Kthi",
//         "Lana",
//         "Laoo",
//         "Latf",
//         "Latg",
//         "Latn",
//         "Leke",
//         "Lepc",
//         "Limb",
//         "Lina",
//         "Linb",
//         "Lisu",
//         "Loma",
//         "Lyci",
//         "Lydi",
//         "Mahj",
//         "Mand",
//         "Mani",
//         "Marc",
//         "Maya",
//         "Mend",
//         "Merc",
//         "Mero",
//         "Mlym",
//         "Modi",
//         "Mong",
//         "Moon",
//         "Mroo",
//         "Mtei",
//         "Mult",
//         "Mymr",
//         "Narb",
//         "Nbat",
//         "Newa",
//         "Nkgb",
//         "Nkoo",
//         "Nshu",
//         "Ogam",
//         "Olck",
//         "Orkh",
//         "Orya",
//         "Osge",
//         "Osma",
//         "Palm",
//         "Pauc",
//         "Perm",
//         "Phag",
//         "Phli",
//         "Phlp",
//         "Phlv",
//         "Phnx",
//         "Piqd",
//         "Plrd",
//         "Prti",
//         "Qaaa",
//         "Qabx",
//         "Rjng",
//         "Roro",
//         "Runr",
//         "Samr",
//         "Sara",
//         "Sarb",
//         "Saur",
//         "Sgnw",
//         "Shaw",
//         "Shrd",
//         "Sidd",
//         "Sind",
//         "Sinh",
//         "Sora",
//         "Sund",
//         "Sylo",
//         "Syrc",
//         "Syre",
//         "Syrj",
//         "Syrn",
//         "Tagb",
//         "Takr",
//         "Tale",
//         "Talu",
//         "Taml",
//         "Tang",
//         "Tavt",
//         "Telu",
//         "Teng",
//         "Tfng",
//         "Tglg",
//         "Thaa",
//         "Thai",
//         "Tibt",
//         "Tirh",
//         "Ugar",
//         "Vaii",
//         "Visp",
//         "Wara",
//         "Wole",
//         "Xpeo",
//         "Xsux",
//         "Yiii",
//         "Zinh",
//         "Zmth",
//         "Zsye",
//         "Zsym",
//         "Zxxx",
//         "Zyyy",
//         "Zzzz"
//     ]
// }

library script_code;

import 'exports.dart';
part 'script_code.g.dart';

@JsonEnum(alwaysCreate: true)
enum ScriptCode {
  @JsonValue("Adlm")
  adlm,
  @JsonValue("Afak")
  afak,
  @JsonValue("Aghb")
  aghb,
  @JsonValue("Ahom")
  ahom,
  @JsonValue("Arab")
  arab,
  @JsonValue("Aran")
  aran,
  @JsonValue("Armi")
  armi,
  @JsonValue("Armn")
  armn,
  @JsonValue("Avst")
  avst,
  @JsonValue("Bali")
  bali,
  @JsonValue("Bamu")
  bamu,
  @JsonValue("Bass")
  bass,
  @JsonValue("Batk")
  batk,
  @JsonValue("Beng")
  beng,
  @JsonValue("Bhks")
  bhks,
  @JsonValue("Blis")
  blis,
  @JsonValue("Bopo")
  bopo,
  @JsonValue("Brah")
  brah,
  @JsonValue("Brai")
  brai,
  @JsonValue("Bugi")
  bugi,
  @JsonValue("Buhd")
  buhd,
  @JsonValue("Cakm")
  cakm,
  @JsonValue("Cans")
  cans,
  @JsonValue("Cari")
  cari,
  @JsonValue("Cham")
  cham,
  @JsonValue("Cher")
  cher,
  @JsonValue("Cirt")
  cirt,
  @JsonValue("Copt")
  copt,
  @JsonValue("Cprt")
  cprt,
  @JsonValue("Cyrl")
  cyrl,
  @JsonValue("Cyrs")
  cyrs,
  @JsonValue("Deva")
  deva,
  @JsonValue("Dsrt")
  dsrt,
  @JsonValue("Dupl")
  dupl,
  @JsonValue("Egyd")
  egyd,
  @JsonValue("Egyh")
  egyh,
  @JsonValue("Egyp")
  egyp,
  @JsonValue("Elba")
  elba,
  @JsonValue("Ethi")
  ethi,
  @JsonValue("Geok")
  geok,
  @JsonValue("Geor")
  geor,
  @JsonValue("Glag")
  glag,
  @JsonValue("Goth")
  goth,
  @JsonValue("Gran")
  gran,
  @JsonValue("Grek")
  grek,
  @JsonValue("Gujr")
  gujr,
  @JsonValue("Guru")
  guru,
  @JsonValue("Hanb")
  hanb,
  @JsonValue("Hang")
  hang,
  @JsonValue("Hani")
  hani,
  @JsonValue("Hano")
  hano,
  @JsonValue("Hans")
  hans,
  @JsonValue("Hant")
  hant,
  @JsonValue("Hatr")
  hatr,
  @JsonValue("Hebr")
  hebr,
  @JsonValue("Hira")
  hira,
  @JsonValue("Hluw")
  hluw,
  @JsonValue("Hmng")
  hmng,
  @JsonValue("Hrkt")
  hrkt,
  @JsonValue("Hung")
  hung,
  @JsonValue("Inds")
  inds,
  @JsonValue("Ital")
  ital,
  @JsonValue("Jamo")
  jamo,
  @JsonValue("Java")
  java,
  @JsonValue("Jpan")
  jpan,
  @JsonValue("Jurc")
  jurc,
  @JsonValue("Kali")
  kali,
  @JsonValue("Kana")
  kana,
  @JsonValue("Khar")
  khar,
  @JsonValue("Khmr")
  khmr,
  @JsonValue("Khoj")
  khoj,
  @JsonValue("Kitl")
  kitl,
  @JsonValue("Kits")
  kits,
  @JsonValue("Knda")
  knda,
  @JsonValue("Kore")
  kore,
  @JsonValue("Kpel")
  kpel,
  @JsonValue("Kthi")
  kthi,
  @JsonValue("Lana")
  lana,
  @JsonValue("Laoo")
  laoo,
  @JsonValue("Latf")
  latf,
  @JsonValue("Latg")
  latg,
  @JsonValue("Latn")
  latn,
  @JsonValue("Leke")
  leke,
  @JsonValue("Lepc")
  lepc,
  @JsonValue("Limb")
  limb,
  @JsonValue("Lina")
  lina,
  @JsonValue("Linb")
  linb,
  @JsonValue("Lisu")
  lisu,
  @JsonValue("Loma")
  loma,
  @JsonValue("Lyci")
  lyci,
  @JsonValue("Lydi")
  lydi,
  @JsonValue("Mahj")
  mahj,
  @JsonValue("Mand")
  mand,
  @JsonValue("Mani")
  mani,
  @JsonValue("Marc")
  marc,
  @JsonValue("Maya")
  maya,
  @JsonValue("Mend")
  mend,
  @JsonValue("Merc")
  merc,
  @JsonValue("Mero")
  mero,
  @JsonValue("Mlym")
  mlym,
  @JsonValue("Modi")
  modi,
  @JsonValue("Mong")
  mong,
  @JsonValue("Moon")
  moon,
  @JsonValue("Mroo")
  mroo,
  @JsonValue("Mtei")
  mtei,
  @JsonValue("Mult")
  mult,
  @JsonValue("Mymr")
  mymr,
  @JsonValue("Narb")
  narb,
  @JsonValue("Nbat")
  nbat,
  @JsonValue("Newa")
  newa,
  @JsonValue("Nkgb")
  nkgb,
  @JsonValue("Nkoo")
  nkoo,
  @JsonValue("Nshu")
  nshu,
  @JsonValue("Ogam")
  ogam,
  @JsonValue("Olck")
  olck,
  @JsonValue("Orkh")
  orkh,
  @JsonValue("Orya")
  orya,
  @JsonValue("Osge")
  osge,
  @JsonValue("Osma")
  osma,
  @JsonValue("Palm")
  palm,
  @JsonValue("Pauc")
  pauc,
  @JsonValue("Perm")
  perm,
  @JsonValue("Phag")
  phag,
  @JsonValue("Phli")
  phli,
  @JsonValue("Phlp")
  phlp,
  @JsonValue("Phlv")
  phlv,
  @JsonValue("Phnx")
  phnx,
  @JsonValue("Piqd")
  piqd,
  @JsonValue("Plrd")
  plrd,
  @JsonValue("Prti")
  prti,
  @JsonValue("Qaaa")
  qaaa,
  @JsonValue("Qabx")
  qabx,
  @JsonValue("Rjng")
  rjng,
  @JsonValue("Roro")
  roro,
  @JsonValue("Runr")
  runr,
  @JsonValue("Samr")
  samr,
  @JsonValue("Sara")
  sara,
  @JsonValue("Sarb")
  sarb,
  @JsonValue("Saur")
  saur,
  @JsonValue("Sgnw")
  sgnw,
  @JsonValue("Shaw")
  shaw,
  @JsonValue("Shrd")
  shrd,
  @JsonValue("Sidd")
  sidd,
  @JsonValue("Sind")
  sind,
  @JsonValue("Sinh")
  sinh,
  @JsonValue("Sora")
  sora,
  @JsonValue("Sund")
  sund,
  @JsonValue("Sylo")
  sylo,
  @JsonValue("Syrc")
  syrc,
  @JsonValue("Syre")
  syre,
  @JsonValue("Syrj")
  syrj,
  @JsonValue("Syrn")
  syrn,
  @JsonValue("Tagb")
  tagb,
  @JsonValue("Takr")
  takr,
  @JsonValue("Tale")
  tale,
  @JsonValue("Talu")
  talu,
  @JsonValue("Taml")
  taml,
  @JsonValue("Tang")
  tang,
  @JsonValue("Tavt")
  tavt,
  @JsonValue("Telu")
  telu,
  @JsonValue("Teng")
  teng,
  @JsonValue("Tfng")
  tfng,
  @JsonValue("Tglg")
  tglg,
  @JsonValue("Thaa")
  thaa,
  @JsonValue("Thai")
  thai,
  @JsonValue("Tibt")
  tibt,
  @JsonValue("Tirh")
  tirh,
  @JsonValue("Ugar")
  ugar,
  @JsonValue("Vaii")
  vaii,
  @JsonValue("Visp")
  visp,
  @JsonValue("Wara")
  wara,
  @JsonValue("Wole")
  wole,
  @JsonValue("Xpeo")
  xpeo,
  @JsonValue("Xsux")
  xsux,
  @JsonValue("Yiii")
  yiii,
  @JsonValue("Zinh")
  zinh,
  @JsonValue("Zmth")
  zmth,
  @JsonValue("Zsye")
  zsye,
  @JsonValue("Zsym")
  zsym,
  @JsonValue("Zxxx")
  zxxx,
  @JsonValue("Zyyy")
  zyyy,
  @JsonValue("Zzzz")
  zzzz;

  factory ScriptCode.fromJson(String json) => ScriptCode.values.firstWhere(
    (e) => e.toJson() == json,
    orElse: () => ScriptCode.values.first,
  );

  String toJson() => _$ScriptCodeEnumMap[this]!;
}
