@echo off
REM Set console size
mode con: cols=120 lines=30

REM Only compile if the exe is missing
if not exist StrongholdSim.exe (
    REM Compile the code
    echo Compiling
    g++ StrongholdSim.cpp robot.cpp utils/graph.cpp field/fieldnode.cpp game.cpp utils/utils.cpp field/field.cpp ui/console.cpp ui/interface.cpp -o "StrongholdSim.exe"  -ISDL2 -LSDL2 -lmingw32 -lSDL2main -lSDL2
    cls
)

REM Run the code
echo Running
StrongholdSim.exe
pause