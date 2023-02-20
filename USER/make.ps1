echo "clean outputs..."
if (Test-Path "./out/") {
    rm -r ./out/
}
$null = mkdir ./out/

$main = "main.c"
$hex = "./out/main.hex"
$bin = "./out/main.bin"
$user = "USER.BIN"

$code = 0x8800
$code_size = 0x3C00
$data = 0xC400

$sources = ls *.c
if ($sources -ne $null) {
    echo "compiling sources..."
    foreach ($s in $sources) {
        if ($s -match $main) {
            continue
        }
        echo "CC: $s"
        sdcc --std-c11 -mz80 --no-std-crt0 --code-loc $code --code-size $code_size --data-loc $data -c $s -o ./out/
    }
    
    $objs = ls ./out/*.rel
    if ($objs -ne $null) {
        echo "linking objects..."
        sdcc --std-c11 -mz80 --no-std-crt0 --code-loc $code --code-size $code_size --data-loc $data $main $objs -o $hex
        echo "making binary..."
        makebin -p -s 65536 $hex $bin
        ./trim $bin $code $user

        echo "bin file at: $user"
    }
}
