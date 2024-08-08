---
Generator: Microsoft Word 15
lang: KO
Originator: Microsoft Word 15
ProgId: Word.Document
---

::: WordSection1
[디지털논리회로 [Verilog
]{lang="EN-US"}과제[]{lang="EN-US"}]{style="font-size:12.0pt;line-height:107%"}

[2018202046 ]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[이준휘[]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}

 

[[1.[    
]{style="font:7.0pt \"Times New Roman\""}]{style="mso-list:Ignore"}]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%;mso-fareast-font-family:
\"맑은 고딕\";mso-fareast-theme-font:minor-latin;mso-bidi-font-family:\"맑은 고딕\";
mso-bidi-theme-font:minor-latin"}[문제
설명[]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[해당 문제는 [32bit]{lang="EN-US"}의[ Ripple Carry Adder(RCA),
]{lang="EN-US"}즉 [32]{lang="EN-US"}비트끼리의 덧셈 가산기를 [Verilog
]{lang="EN-US"}상에서 구현하는 것을 목표로 한다[.
]{lang="EN-US"}모듈명[(RCA32)]{lang="EN-US"}과 모듈에 들어가는 기본적인
인자는 제시되고있으며[, ]{lang="EN-US"}필자는 해당 변수를 가지고 코드를
작성하여 [RCA32]{lang="EN-US"}를 완성하고[, testbench]{lang="EN-US"}를
통해 이를 시연해본다[.]{lang="EN-US"}]{style="mso-bidi-font-size:
10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;
line-height:107%"}

 

[[2.[    
]{style="font:7.0pt \"Times New Roman\""}]{style="mso-list:Ignore"}]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%;mso-fareast-font-family:
\"맑은 고딕\";mso-fareast-theme-font:minor-latin;mso-bidi-font-family:\"맑은 고딕\";
mso-bidi-theme-font:minor-latin"}[해결과정[]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[[-[      
]{style="font:7.0pt \"Times New Roman\""}]{style="mso-list:Ignore"}]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%;mso-ascii-font-family:
\"맑은 고딕\";mso-fareast-font-family:\"맑은 고딕\";mso-hansi-font-family:\"맑은 고딕\";
mso-bidi-font-family:\"맑은 고딕\""}![](디지털논리회로%20Verilog%20과제.fld/image001.png){width="184"
height="132" align="right" hspace="12" v:shapes="그림_x0020_1"}[module
adder1bit(1-bit full adder)]{lang="EN-US" style="mso-bidi-font-size:
10.0pt;line-height:107%"}

[해당 모델의 경우 [1-bit full adder]{lang="EN-US"}의 역할을 수행한다[.
input a, b]{lang="EN-US"}는 해당 자리에서 덧셈을 하는 인자다[.
]{lang="EN-US"}그리고 [input cin]{lang="EN-US"}은 이전 자리에서 올림으로
오는 인자다[. output s]{lang="EN-US"}는 해당 자리의 덧셈의 결과이고[,
output cout]{lang="EN-US"}은 해당 자리에서 나오는
올림수다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[-\>full adder ]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[기호[]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[s]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}[의
값은[ a, b, cin]{lang="EN-US"}의 값이 홀수개만 [true]{lang="EN-US"}여야
[true]{lang="EN-US"}로 나와야 한다[. ]{lang="EN-US"}해당 부분의 논리식은
[s = a
]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}[+]{lang="EN-US"
style="mso-bidi-font-size:
10.0pt;line-height:107%"}[ b ]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[+]{lang="EN-US"
style="mso-bidi-font-size:
10.0pt;line-height:107%"}[ cin]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[로 표현할 수 있다[.
]{lang="EN-US"}하지만 베릴로그에는 [XOR gate ]{lang="EN-US"}논리곱이
존재하지 않음으로 이를 [s = a b' cin' + a' b cin' + a' b' cin + a b
cin]{lang="EN-US"}으로 풀어서
표현한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}

 

[cout]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[의 값은[ a, b,
cin]{lang="EN-US"}의 값 중 [2]{lang="EN-US"}개 이상이
[true]{lang="EN-US"}일 경우 [true]{lang="EN-US"}여야 한다[.
]{lang="EN-US"}해당 부분의 논[-]{lang="EN-US"}리식은 [cout = a b + b
cin + cin a]{lang="EN-US"}로 표현할 수
있다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[]{lang="EN-US"}

 

[![](디지털논리회로%20Verilog%20과제.fld/image002.png){width="452"
height="284" v:shapes="그림_x0020_3"}]{lang="EN-US"
style="mso-no-proof:yes"}

[-\>1-bit full adder ]{lang="EN-US" style="mso-bidi-font-size:10.0pt;
line-height:107%"}[회로도[]{lang="EN-US"}]{style="mso-bidi-font-size:
10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;
line-height:107%"}

 

[[-[      
]{style="font:7.0pt \"Times New Roman\""}]{style="mso-list:Ignore"}]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%;mso-ascii-font-family:
\"맑은 고딕\";mso-fareast-font-family:\"맑은 고딕\";mso-hansi-font-family:\"맑은 고딕\";
mso-bidi-font-family:\"맑은 고딕\""}[module adder4bit(4-bit
RCA)]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}

[해당 모델은 [1bit]{lang="EN-US"}의 [full adder 4]{lang="EN-US"}개를
병렬로 배치한 회로다[. ]{lang="EN-US"}해당 회로를 통해
[4bit]{lang="EN-US"}끼리의 덧셈 연산을 수행할 수 있다[.
]{lang="EN-US"}해당 회로는 [input \[3:0\]]{lang="EN-US"}으로
[a4]{lang="EN-US"}와[, b4]{lang="EN-US"}를 받는다[.
]{lang="EN-US"}그리고 이전 자리에서 올라오는 자리수인 [output
cin4]{lang="EN-US"}를 받는다[. output]{lang="EN-US"}으로는 각 자리의
출력인 [output \[3:0\] s4]{lang="EN-US"}와 [MSB]{lang="EN-US"}자리에서
나오는 올림수인 [output cout4]{lang="EN-US"}가 있다[.
]{lang="EN-US"}마지막으로 [MSB]{lang="EN-US"}를 각각의 [full
adder]{lang="EN-US"}를 연결할[ wire \[2:0\] w]{lang="EN-US"}가
있다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[![](디지털논리회로%20Verilog%20과제.fld/image003.png){width="369"
height="92" v:shapes="그림_x0020_4"}]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%;mso-no-proof:yes"}[]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}

[-\>4-bit RCA ]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[형태[]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}

 

[우선[ adder1bit]{lang="EN-US"}인 [first]{lang="EN-US"}를 선언한다[.
]{lang="EN-US"}해당 모듈에서는 [a4\[0\], b4\[0\], cin4]{lang="EN-US"}를
인자로 받아 덧셈을 진행하여 [s4\[0\]]{lang="EN-US"}를 출력하고 올림수를
[w\[0\]]{lang="EN-US"}에
전달한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[second]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[는 해당[ a4\[1\],
b4\[1\], ]{lang="EN-US"}그리고 올림수인 [w\[0\]]{lang="EN-US"}를 인자로
받아 덧셈을 진행하여 [s4\[1\]]{lang="EN-US"}을 출력하고 올림수를
[w\[1\]]{lang="EN-US"}에
전달한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[third]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[는 해당[ a4\[2\],
b4\[2\], ]{lang="EN-US"}그리고 올림수인 [w\[1\]]{lang="EN-US"}를 인자로
받아 덧셈을 진행하여 [s4\[2\]]{lang="EN-US"}을 출력하고 올림수를
[w\[2\]]{lang="EN-US"}에
전달한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[마지막으로[ fourth]{lang="EN-US"}에서는 해당[ a4\[3\], b4\[3\],
]{lang="EN-US"}그리고 올림수인 [w\[2\]]{lang="EN-US"}를 인자로 받아
덧셈을 진행하여 [s4\[3\]]{lang="EN-US"}을 출력하고 올림수[
cout4]{lang="EN-US"}를
출력한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}

 

[[-[      
]{style="font:7.0pt \"Times New Roman\""}]{style="mso-list:Ignore"}]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%;mso-ascii-font-family:
\"맑은 고딕\";mso-fareast-font-family:\"맑은 고딕\";mso-hansi-font-family:\"맑은 고딕\";
mso-bidi-font-family:\"맑은 고딕\""}[adder2byte(16-bit
RCA)]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}

[해당 모델은 [4-bit RCA 4]{lang="EN-US"}개를 이용하여 [16-bit
RCA]{lang="EN-US"}를 구현한다[. ]{lang="EN-US"}해당 회로를 통해
[16]{lang="EN-US"}비트끼리의 덧셈 연산을 수행할 수 있다[. input \[15:0\]
a2b, b2b]{lang="EN-US"}를 받고 [LSB]{lang="EN-US"}에 더하는 인자인
[input cin2b]{lang="EN-US"}를 받는다[. ]{lang="EN-US"}이를 [output
\[15:0\] s2b]{lang="EN-US"}과 다음 회로의 [LSB]{lang="EN-US"}에 넘길
[output cout2b ]{lang="EN-US"}값으로 반환한다[. wire
\[2:0\]]{lang="EN-US"}를 통해 각 자리마다 넘어가는 올림수를
전달한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[![](디지털논리회로%20Verilog%20과제.fld/image004.png){width="406"
height="106" v:shapes="그림_x0020_5"}]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%;mso-no-proof:yes"}[]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}

[-\>16-bit RCA ]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[형태[]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}

 

[우선[ adder4bit]{lang="EN-US"}인[ byte1]{lang="EN-US"}를 선언한다[.
]{lang="EN-US"}해당 모듈에서는 [a2b\[3:0\], b2b\[3:0\],
cin2b]{lang="EN-US"}를 인자로 받아 덧셈을 진행하여
[s2b\[3:0\]]{lang="EN-US"}를 출력하고 올림수를 [wb\[0\]]{lang="EN-US"}에
전달한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[byte2]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[는 해당 [a2b\[7:4\],
b2b\[7:4\], ]{lang="EN-US"}그리고 올림수인 [wb\[0\]]{lang="EN-US"}를
인자로 받아 덧셈을 진행하여 [s2b\[7:4\]]{lang="EN-US"}를 출력하고
올림수를 [wb\[1\]]{lang="EN-US"}에
전달한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[byte3]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[는 해당
[a2b\[11:8\], b2b\[11:8\], ]{lang="EN-US"}그리고 올림수인[
wb\[1\]]{lang="EN-US"}를 인자로 받아 덧셈을 진행하여
[s2b\[11:8\]]{lang="EN-US"}를 출력하고 올림수를
[wb\[2\]]{lang="EN-US"}에
전달한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[마지막으로[ byte4]{lang="EN-US"}에서는 해당 [a2b\[15:12\],
b2b\[15:12\], ]{lang="EN-US"}그리고 올림수인[ wb\[2\]]{lang="EN-US"}를
인자로 받아 덧셈을 진행하여 [s2b\[15:12\]]{lang="EN-US"}를 출력하고
올림수를 [wb\[0\]]{lang="EN-US"}에
전달한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}

 

[[-[      
]{style="font:7.0pt \"Times New Roman\""}]{style="mso-list:Ignore"}]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%;mso-ascii-font-family:
\"맑은 고딕\";mso-fareast-font-family:\"맑은 고딕\";mso-hansi-font-family:\"맑은 고딕\";
mso-bidi-font-family:\"맑은 고딕\""}[model RCA32]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}

[해당 모델은 [adder2byte ]{lang="EN-US"}모델 [2]{lang="EN-US"}개를
이용하여
구현된다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[[ ]{style="mso-spacerun:yes"}input \[31:0\] A]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[와[ B,
]{lang="EN-US"}그리고 [LSB]{lang="EN-US"}에 더해지는 올림수인 [input
Cin]{lang="EN-US"}이 있다[. Cin]{lang="EN-US"}이 존재하는 이유는 만약
[Cin]{lang="EN-US"}이 없도록 회로를 짤 경우[ LSB]{lang="EN-US"}를 더하는
과정은 [half adder]{lang="EN-US"}를 이용해야만 하기 때문에 회로도가
통일이 되지 않아 복잡해질 수 있다[. ]{lang="EN-US"}이에 [full
adder]{lang="EN-US"}를 사용하는 대신 [Cin]{lang="EN-US"}에
[0]{lang="EN-US"}을 넣음으로써 [half adder]{lang="EN-US"}의 역할을
수행할 수 있다[. output \[31:0\] S]{lang="EN-US"}는 [A,
B]{lang="EN-US"}의 합을 출력되는 곳이다[. output Cout]{lang="EN-US"}은[
MSB]{lang="EN-US"}의 연산 결과로 생기는 올림수를 나타내는 출력이다[.
]{lang="EN-US"}]{style="mso-bidi-font-size:
10.0pt;line-height:107%"}

[Cin]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[과
[Cout]{lang="EN-US"}이 있음으로 인해 회로는 확장성에서 용이해진다[.
]{lang="EN-US"}만약 [64]{lang="EN-US"}비트의 [RCA]{lang="EN-US"}를
구현하고 싶은 경우 [RCA32]{lang="EN-US"}를 병렬로 연결함으로써 해당
회로를 구현할 수
있다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[![](디지털논리회로%20Verilog%20과제.fld/image005.png){width="393"
height="186" v:shapes="그림_x0020_6"}]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%;mso-no-proof:yes"}[]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}

[-\>RCA32]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[의 블록
다이어그램[]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}

 

[우선[ adder2byte]{lang="EN-US"}인 [add1]{lang="EN-US"}를 선언한다[.
]{lang="EN-US"}해당 모듈에서는 [A\[15:0\], B\[15:0\],
Cin]{lang="EN-US"}를 인자로 받아 덧셈을 진행하여
[S\[15:0\]]{lang="EN-US"}를 출력하고 올림수를 [w1(wire)]{lang="EN-US"}에
전달한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[byte2]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[는 해당 [A\[31:16\],
B\[31:16\], ]{lang="EN-US"}그리고 올림수인[ w1]{lang="EN-US"}를 인자로
받아 덧셈을 진행하여 [S\[31:16\]]{lang="EN-US"}를 출력하고 올림수를
[Cout]{lang="EN-US"}에
전달한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;line-height:107%"}

 

[[3.[    
]{style="font:7.0pt \"Times New Roman\""}]{style="mso-list:Ignore"}]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%;mso-fareast-font-family:
\"맑은 고딕\";mso-fareast-theme-font:minor-latin;mso-bidi-font-family:\"맑은 고딕\";
mso-bidi-theme-font:minor-latin"}[결과
검증[]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[test bench]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}[에서는[ integer
i]{lang="EN-US"}와[ j]{lang="EN-US"}를 활용하여 검증을
진행한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;line-height:107%"}

[![](디지털논리회로%20Verilog%20과제.fld/image006.png){width="443"
height="254" v:shapes="그림_x0020_7"}]{lang="EN-US"
style="mso-no-proof:yes"}[]{lang="EN-US"
style="mso-bidi-font-size:10.0pt;line-height:107%"}

[-\>testbench ]{lang="EN-US" style="mso-bidi-font-size:10.0pt;
line-height:107%"}[결과[]{lang="EN-US"}]{style="mso-bidi-font-size:10.0pt;
line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;
line-height:107%"}

 

[우선[ for]{lang="EN-US"}문 [2]{lang="EN-US"}개와 [i, j]{lang="EN-US"}를
활용하여 [0\~4]{lang="EN-US"}와 [0\~4]{lang="EN-US"}와의 덧셈
[16]{lang="EN-US"}가지 경우가 잘 적용되었는지 확인하였다[.
]{lang="EN-US"}위의 사진을 보면 [s]{lang="EN-US"}의 값이 해당 값에 따라
적절하게 바뀌는 것을 볼 수 있다[. ]{lang="EN-US"}이는 가장 작은 모듈
[full adder]{lang="EN-US"}가 정상적으로 구동된다는 것을
의미한다[.]{lang="EN-US"}]{style="mso-bidi-font-size:
10.0pt;line-height:107%"}

[그 후에 확인한 것은 [RCA4bit module ]{lang="EN-US"}안의[ full adder
]{lang="EN-US"}간의 자리수가 잘 전달되는지 확인하는 것이다[. a,
b]{lang="EN-US"}가 [4]{lang="EN-US"}일 때와 [8]{lang="EN-US"}일 때 모두
잘 전달되어 각각 [8, 16]{lang="EN-US"}을 잘 표현하는 것을 볼 수
있다[.]{lang="EN-US"}]{style="mso-bidi-font-size:
10.0pt;line-height:107%"}

[다음으로 확인한 것은 [RCA16bit module ]{lang="EN-US"}안의
[RCA4bit]{lang="EN-US"}끼리 값이 잘 전달되는지를 확인하는 것이다[. a,
b]{lang="EN-US"}가 각각 [2\^7, 2\^11, 2\^15]{lang="EN-US"}일 때 값이
[2\^8, 2\^12, 2\^16]{lang="EN-US"}으로 모듈 간 자리수 전달이 제대로
이루어지는 것을 확인할 수 있다[.
]{lang="EN-US"}]{style="mso-bidi-font-size:
10.0pt;line-height:107%"}

[마지막으로 확인할 것은 만약 [2\^31 + 2\^31]{lang="EN-US"}를 진행할 경우
[Cout]{lang="EN-US"}에 [1]{lang="EN-US"}이 전달되는지 확인하는 것이다[.
]{lang="EN-US"}이에 위의 사진에서는 [Cout ]{lang="EN-US"}값이
[1]{lang="EN-US"}로 올라가 있는 것을 보아 정상임을 알 수
있다[.]{lang="EN-US"}]{style="mso-bidi-font-size:
10.0pt;line-height:107%"}

[]{lang="EN-US" style="mso-bidi-font-size:10.0pt;
line-height:107%"}

 
:::
