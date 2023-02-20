echo "clean outputs..."
if (Test-Path "./out/") {
    rm -r ./out/
}
$null = mkdir ./out/

$main = "main.c"
$hex = "./out/main.hex"
$bin = "./out/main.bin"

$code = 0x0000
$code_size = 0x8000
$data = 0x8000

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
        makebin -s 32768 $hex $bin

        echo "hex file at: $hex"
        echo "bin file at: $bin"
    }
}
