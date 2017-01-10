library(dplyr)
#54940
ternopil <- distinct(ternopil)
ternopil$id <- rep("Тернопіль",42546)
#264267
kharkiv <- distinct(kharkiv)
kharkiv$id <- rep("Харків",206593)
#242073
odesa_schk <- distinct(odesa_schk)
odesa_schk$id <- rep("Одеса",189449)

#234437
donetsk <- distinct(donetsk)
donetsk$id <- rep("Донецьк",178811)

#203861
lviv <- distinct(lviv)
lviv$id <- rep("Львів",161721)

#192514
zaporizha <- distinct(zaporizha)
zaporizha$id <- rep("Запоріжжя",148498)

#179321
k_rig <- distinct(k_rig)
k_rig$id <- rep("Кривий ріг",134336)

#106988
lugansk <- distinct(lugansk)
lugansk$id <- rep("Луганськ",80706)

#101132
mariupol <- distinct(mariupol)
mariupol$id <- rep("Маріуполь",74920)

#93804
simferopol <- distinct(simferopol)
simferopol$id <- rep("Сімферополь",71922)

#94205
mykolaiv <- distinct(mykolaiv)
mykolaiv$id <- rep("Миколаїв",71871)

#174790
charkivska_obl <- distinct(charkivska_obl)
charkivska_obl$id <- rep("Харківська область",131898)

#153626
sumy_obl <- distinct(sumy_obl)
sumy_obl$id <- rep("Сумська область",114190)

#136081
if_obl <- distinct(if_obl)
if_obl$id <- rep("Івано-Франківська область",100720)

#140213
zakar_obl <- distinct(zakar_obl)
zakar_obl$id <- rep("Закарпатська область",107378)

#128670
kirovograd_obl <- distinct(kirovograd_obl)
kirovograd_obl$id <- rep("Кіровоградська область",95270)

#110390
volyn_obl <- distinct(volyn_obl)
volyn_obl$id <- rep("Волинська область",81476)

#106933
poltavska_obl <- distinct(poltavska_obl)
poltavska_obl$id <- rep("Полтавська область",79319)

#106348
vinnytska_obl <- distinct(vinnytska_obl)
vinnytska_obl$id <- rep("Вінницька область",78598)

#99326
chernigivska_obl <- distinct(chernigivska_obl)
chernigivska_obl <- rep("Чернігівська область",74476)

#95649
khmelnytska_obl <- distinct(khmelnytska_obl)
khmelnytska_obl$id <- rep("Хмельницька область",72142)

#95505
ternopilska_obl <- distinct(ternopilska_obl)
ternopilska_obl$id <- rep("Тернопільська область",70102)

library(gtools)
all_user <- smartbind(all_user,charkivska_obl,sumy_obl,if_obl,zakar_obl,kirovograd_obl,volyn_obl,poltavska_obl,vinnytska_obl,khmelnytska_obl,ternopilska_obl)
ggplot(all_user, aes(dmy(bdate))) + geom_histogram()

ternopil_tbl <- copy_to(sc, ternopil)
