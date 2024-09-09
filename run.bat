
@echo off
setlocal

REM 设置源文件和输出文件
set SRC_FILE=main.cpp
set OUTPUT_FILE=main.exe

REM 检查是否需要启用调试
:ask_debug
set /p DEBUG_OPTION="Enable GDB debugging? (y/n): "

if /i "%DEBUG_OPTION%"=="y" (
    echo Compiling with debugging enabled...
    g++ -g "%SRC_FILE%" -o "%OUTPUT_FILE%"
    if errorlevel 1 (
        echo Compilation failed!
        exit /b 1
    )
    @REM echo Compilation successful. Launching GDB...
    @REM gdb "%OUTPUT_FILE%"
) else if /i "%DEBUG_OPTION%"=="n" (
    echo Compiling without debugging...
    g++ "%SRC_FILE%" -o "%OUTPUT_FILE%"
    if errorlevel 1 (
        echo Compilation failed!
        exit /b 1
    )
    echo Compilation successful. Running the program...
    "%OUTPUT_FILE%"
) else (
    echo Invalid option. Please enter 'y' or 'n'.
    goto ask_debug
)

endlocal
