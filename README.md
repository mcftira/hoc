# hoc — magyar OpenShift CLI 🐑

Az `oc` parancssor végre magyarul. A `hoc` egy vékony wrapper az OpenShift
`oc` eszköz fölé: a magyar parancsokat lefordítja angolra, minden mást
változatlanul továbbad — tehát a megszokott angol parancsok is ugyanúgy
működnek rajta keresztül.

A szókincs első felét a [Racka-4B](https://huggingface.co/elte-nlp/Racka-4B)
magyar nyelvmodell javasolta, a végleges lista emberi kurálás.

## Telepítés

```bash
git clone https://github.com/mcftira/hoc.git
# tedd PATH-ra, pl:
ln -s "$PWD/hoc/hoc" ~/.local/bin/hoc
```

Előfeltétel: egy működő `oc` a PATH-on.

## Használat

```bash
hoc podok                 # oc get pods
hoc kivagyok              # oc whoami
hoc belépek               # oc login
hoc törlöm podok          # oc delete pods
hoc napló telepítések web # oc logs deploy web
hoc leírom podok xy       # oc describe pods xy
hoc magyarázd podok.spec  # oc explain pods.spec
hoc bogarászom podok/xyz  # oc debug pods/xyz
hoc ürítem csomópontok1   # oc drain nodes1  (na jó, ez már túlzás)
```

A teljes lista: `hoc segítség`.

## A szókincs

Főnevek önmagukban `get`-et jelentenek (`podok` → `get pods`), az igék
első számú egyes számban állnak, ahogy az a jó magyar szakmányban illik:
`kivagyok`, `belépek`, `törlöm`, `alkalmazom`, `futtatom`, `benezek`,
`méretezem`, `kigurítom`, `átfurakodom`, `címkézem`, `ürítem`, `lezárom`,
`feloldom`, `bogarászom`…

Az erőforrás-szavakat az igék után is érti, összetett alakban is:
`hoc törlöm podok --all`, `hoc magyarázd podok.spec.containers`,
`hoc bogarászom podok/xy-123`.

## Elvek

- **Nem blokkol:** amit nem ismer fel, szó szerint továbbadja az `oc`-nek.
- **Egy fájl:** bash, nulla függőség, másold és megy.
- **Bééé.**

## Licenc

MIT — lásd `LICENSE`. (A klaszterért felelősséget nem vállalunk, a `hoc ürítem`
parancsot érettségi után ajánljuk.)
