# 说明

作业结果基于伪分布式环境运行得出。环境搭建方法，请参考：[Hadoop环境搭建](http://123.56.21.232:8212/#docs/install#伪分布模式安装步骤)。


# 代码

## 统计首字母单词和长度

streaming程序：

```
first_letter_mapper.sh
first_letter_reducer.sh
```

运行脚本：

```
run_first_letter.sh
```


## 统计尾字母单词和长度

streaming程序：

```
last_letter_mapper.sh
last_letter_reducer.sh
```

运行脚本：

```
run_last_letter.sh
```


## 统计首尾字母组合单词和长度

streaming程序：

```
combine_letter_mapper.sh
combine_letter_reducer.sh
```

运行脚本：

```
run_combine_letter.sh
```


# 步骤

## 执行部署脚本

```bash
$ sh deploy.sh
$ cd $HADOOP_HOME
```


## 执行运行脚本

在$HADOOP_HOME目录下执行。

### 统计首字母单词

```bash
$ sh run_first_letter.sh
```


### 统计尾字母单词

```bash
$ sh run_first_letter.sh
```


### 统计首尾字母组合单词

```bash
$ sh run_first_letter.sh
```


## 查看运行结果

运行脚本执行完成后，查看统计结果。各场景统计结果已手工拷贝至result目录下。

### 查看首字母单词统计结果

```
$ cd $HADOOP_HOME/hdfs_output/output
$ cat part-00000 
a       982     3.21
b       480     4.19
c       351     5.61
d       381     3.77
e       128     5.51
f       415     5.08
g       431     4.14
h       574     3.72
i       878     1.65
j       149     4.50
k       95      4.43
l       326     5.14
m       495     3.50
n       224     4.00
o       470     2.65
p       225     5.78
q       12      5.00
r       220     5.02
s       775     5.03
t       1241    3.64
u       83      3.57
v       51      5.60
w       724     3.76
y       455     3.31
```


### 查看尾字母单词统计结果

```
$ cd $HADOOP_HOME/hdfs_output/output
$ cat part-00000 
a       411     2.48
b       7       3.71
c       12      4.83
d       860     4.43
e       1761    3.83
f       188     2.46
g       380     6.33
h       124     4.56
i       473     1.04
k       162     3.96
l       278     4.64
m       134     4.35
n       724     3.77
o       573     2.19
p       178     4.11
q       3       1.00
r       531     4.26
s       839     4.35
t       1406    4.29
u       350     3.02
v       2       2.00
w       163     3.76
x       14      3.42
y       591     4.40
z       1       4.00
```


### 查看首尾字母组合单词统计结果

```
$ cd $HADOOP_HOME/hdfs_output/output
$ cat part-00000 
aa      268     1.49
ad      244     3.24
ae      81      3.76
ag      15      7.26
ah      2       4.00
ai      5       2.00
ak      4       3.75
al      81      3.11
am      12      2.66
an      34      5.05
ao      3       4.33
ar      27      5.29
as      69      4.33
at      92      4.17
ay      45      5.04
ba      31      5.00
bc      1       5.00
bd      25      4.92
be      122     3.59
bg      14      4.21
bh      13      4.76
bk      34      4.32
bl      9       6.88
bm      2       5.50
bn      25      4.36
bo      1       2.00
br      11      5.81
bs      46      5.36
bt      106     3.62
bu      6       5.00
bx      3       3.00
by      30      3.36
bz      1       4.00
ca      22      4.09
cb      2       4.50
cc      1       1.00
cd      50      5.80
ce      103     5.09
cg      9       8.22
ch      7       5.42
ck      4       5.00
cl      19      6.47
cm      5       5.20
cn      49      4.63
cr      16      5.56
cs      33      7.90
ct      9       5.66
cy      22      6.63
da      1       2.00
dd      74      3.68
de      16      5.25
dg      29      4.89
dh      2       5.00
dk      4       4.50
dl      5       5.00
dm      3       4.66
dn      69      3.49
do      86      2.00
dp      2       8.00
dr      11      4.36
ds      21      4.57
dt      10      7.70
dw      2       4.00
dy      46      4.65
ec      1       2.00
ed      8       5.12
ee      13      5.53
eg      14      9.78
eh      6       4.83
el      1       4.00
em      3       4.66
en      19      4.89
er      22      4.22
es      3       5.66
et      12      4.75
ey      26      5.65
fa      1       5.00
fd      37      5.37
fe      31      4.90
ff      4       1.00
fg      4       6.50
fh      3       5.33
fk      3       4.66
fl      14      5.57
fm      32      4.03
fn      4       4.50
fo      1       9.00
fr      91      3.20
fs      11      6.63
ft      153     6.34
fw      6       4.16
fx      1       4.00
fy      19      5.05
ga      12      6.00
gb      2       4.00
gd      54      3.81
ge      25      4.88
gg      49      5.30
gl      8       5.37
gm      1       6.00
gn      19      6.68
go      42      2.07
gp      57      4.00
gr      10      6.60
gs      27      4.74
gt      115     3.17
gw      8       8.00
gy      2       3.00
ha      1       9.00
hd      77      3.93
he      220     3.40
hf      5       5.80
hg      5       6.60
hh      2       2.50
hi      8       2.00
hk      1       7.00
hl      15      5.00
hm      20      3.00
hn      11      6.00
ho      9       4.77
hp      9       3.88
hr      61      3.55
hs      54      3.85
ht      14      4.64
hw      32      3.00
hy      30      4.13
ia      5       4.00
id      8       8.25
ie      7       4.57
if      26      2.00
ig      1       8.00
ii      459     1.00
il      2       10.50
im      1       4.00
in      117     2.05
io      8       4.00
is      76      2.01
it      167     2.11
iy      1       8.00
jb      2       3.00
jd      3       6.00
jk      1       4.00
jn      5       5.20
jr      1       6.00
js      7       5.14
jt      77      4.00
jy      53      5.03
ka      1       5.00
kd      7       4.85
ke      1       4.00
kg      4       5.50
kk      2       2.50
km      2       7.00
kn      5       5.60
ko      2       8.00
kp      11      4.00
kr      1       6.00
ks      3       5.00
kt      3       4.00
ku      1       2.00
kw      49      4.00
kx      1       4.00
ky      2       7.00
la      7       2.57
ld      12      5.00
le      114     4.43
lg      26      5.61
lh      1       5.00
lk      14      4.00
ll      2       5.00
ln      16      5.43
lp      2       3.50
lr      17      5.41
ls      28      4.82
lt      77      6.66
lw      1       3.00
ly      9       4.33
ma      56      3.89
mb      1       3.00
mc      3       5.00
md      7       4.28
me      184     2.95
mf      4       6.00
mg      6       6.50
mh      7       4.00
mi      1       11.00
ml      5       4.80
mm      1       7.00
mn      51      3.68
mo      1       5.00
mr      9       3.00
ms      24      5.37
mt      37      4.32
my      98      2.87
nd      16      4.87
ne      27      4.07
ng      8       6.87
nk      1       7.00
nl      8       7.12
nm      1       3.00
nn      6       5.50
no      34      2.00
np      1       3.00
nr      25      5.24
ns      8       5.50
nt      35      3.71
nw      50      3.00
ny      4       7.00
od      11      4.45
oe      35      3.25
of      141     2.12
og      1       11.00
oh      3       2.00
ok      32      2.00
ol      1       4.00
on      101     2.20
oo      3       1.00
or      69      3.21
os      4       6.75
ot      54      3.11
ou      1       2.00
oy      14      4.00
pa      1       5.00
pc      4       5.75
pd      14      5.78
pe      49      6.26
pg      41      4.48
ph      3       4.33
pk      1       4.00
pl      7       5.28
pm      5       6.00
pn      14      6.64
pp      1       11.00
pr      7       8.14
ps      19      6.10
pt      37      6.37
px      1       7.00
py      21      4.61
qn      2       8.00
qq      3       1.00
qr      1       7.00
qs      1       9.00
qt      4       4.50
qy      1       7.00
rd      21      5.66
re      16      3.68
rg      20      6.70
rh      1       5.00
rk      3       5.00
rl      12      4.33
rm      4       4.00
rn      70      3.81
rr      17      7.29
rs      16      6.75
rt      33      5.03
ry      7       5.85
sa      2       3.00
sc      1       8.00
sd      110     5.56
se      145     4.17
sf      3       5.00
sg      78      7.83
sh      5       6.00
sk      9       4.88
sl      28      6.00
sm      4       5.00
sn      38      4.13
so      63      2.01
sp      53      5.60
sr      32      4.00
ss      66      5.83
st      69      5.13
sw      12      4.16
sx      4       3.00
sy      53      5.16
ta      1       10.00
td      29      4.72
te      408     3.58
tg      31      6.41
th      11      6.09
tk      33      4.72
tl      18      4.05
tm      24      4.16
tn      31      4.51
to      300     2.07
tp      4       3.75
tr      16      6.25
ts      99      4.37
tt      173     4.28
tv      2       2.00
tw      2       8.00
tx      4       3.00
ty      55      4.18
ud      12      7.33
ue      6       3.33
ug      2       5.00
uh      1       10.00
uk      1       7.00
um      1       7.00
un      1       7.00
up      38      2.00
ur      2       5.00
us      15      2.40
ut      1       5.00
uu      1       1.00
uy      2       10.00
va      1       2.00
vc      1       4.00
ve      5       5.00
vg      1       7.00
vm      13      6.92
vn      5       7.60
vs      5       7.40
vt      4       4.75
vy      16      4.00
wa      1       4.00
wd      40      5.22
we      153     3.34
wg      15      7.06
wh      50      4.12
wk      13      4.00
wl      43      4.25
wn      32      4.21
wo      20      2.80
wr      23      4.21
ws      176     3.14
wt      123     4.02
ww      1       6.00
wy      34      3.20
yd      1       6.00
yf      5       8.00
yg      7       5.00
yh      7       4.00
yk      2       4.00
yr      62      4.00
ys      28      3.92
yt      1       3.00
yu      341     3.00
yy      1       9.00
```


