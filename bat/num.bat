@echo off
set DEBUG=1
if %DEBUG% == 0 (set trace=echo.) else (set trace=rem )
%trace%����
REM �����ӳٻ���������չ
setlocal enabledelayedexpansion
REM �������������С�����ֵ�Լ���ģ�õı���
set min=10
set max=20
set /a mod=!max!-!min!+1

for /l %%i in (1,1,5) do (
	REM ����[min,max]֮��������
	set /a cc=!random!%%!mod!+!min!
	set /a aa=!random!%%!cc!
	set /a sign = !random!%%2
	set /a bb = !cc! - !aa!
	echo.
	if !sign! == 0 (
		REM echo %%i: !aa!+!bb!=
		set /p dd=%%i: !aa!+!bb!=
		if !dd! == !cc! (
          echo ��
        ) else (
	      echo ����ȷ��!cc!
        )
	) else (
		set /p ee=%%i: !cc!-!aa!=
		if !ee! == !bb! (
			echo ��
		) else (
			echo ����ȷ��!bb!
		)
	)
)
