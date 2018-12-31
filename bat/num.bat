@echo off
set DEBUG=1
if %DEBUG% == 0 (set trace=echo.) else (set trace=rem )
%trace%代码
REM 启用延迟环境变量扩展
setlocal enabledelayedexpansion
REM 设置随机数的最小和最大值以及求模用的变量
set min=10
set max=20
set /a mod=!max!-!min!+1

for /l %%i in (1,1,5) do (
	REM 产生[min,max]之间的随机数
	set /a cc=!random!%%!mod!+!min!
	set /a aa=!random!%%!cc!
	set /a sign = !random!%%2
	set /a bb = !cc! - !aa!
	echo.
	if !sign! == 0 (
		REM echo %%i: !aa!+!bb!=
		set /p dd=%%i: !aa!+!bb!=
		if !dd! == !cc! (
          echo 对
        ) else (
	      echo 错，正确答案!cc!
        )
	) else (
		set /p ee=%%i: !cc!-!aa!=
		if !ee! == !bb! (
			echo 对
		) else (
			echo 错，正确答案!bb!
		)
	)
)
