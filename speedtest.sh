
Function_Speedtest_Full() {
    mkdir -p ${WorkDir}/Speedtest/ >/dev/null 2>&1
    echo -e "\n ${Font_Yellow}-> Speedtest.net Network Speed Test${Font_Suffix}\n"
    echo -e "\n -> Speedtest.net Network Speed Test\n" >>${WorkDir}/Speedtest/result.txt
    Check_JSONQuery
    Check_Speedtest
    echo -e " ${Font_Yellow}Node Name\t\t\tUpload Speed\tDownload Speed\tPing Latency${Font_Suffix}"
    echo -e " Node Name\t\t\tUpload Speed\tDownload Speed\tPing Latency" >>${WorkDir}/Speedtest/result.txt
    # 默认测试
    Run_Speedtest "default" "Speedtest Default"
    # 国内测试 - 联通组
    Run_Speedtest "9484" "China, Jilin CU"
    Run_Speedtest "17184" "China, Shandong CU"
    Run_Speedtest "13704" "China, Nanjing CU"
    Run_Speedtest "24447" "China, Shanghai CU"
    Run_Speedtest "4690" "China, Lanzhou CU"
    # 国内测试 - 电信组
    Run_Speedtest "27377" "China, Beijing CT"
    Run_Speedtest "7509" "China, Hangzhou CT"
    Run_Speedtest "26352" "China, Nanjing CT"
    Run_Speedtest "27594" "China, Guangzhou CT"
    Run_Speedtest "23844" "China, Wuhan CT"
    # 国内测试 - 移动组
    Run_Speedtest "16167" "China, Shenyang CM"
    Run_Speedtest "4647" "China, Hangzhou CM"
    Run_Speedtest "15863" "China, Nanning CM"
    Run_Speedtest "16145" "China, Lanzhou CM"
    # 海外测试
    Run_Speedtest "16176" "Hong Kong, HGC"
    Run_Speedtest "13538" "Hong Kong, CSL"
    Run_Speedtest "1536" "Hong Kong, PCCW"
    Run_Speedtest "6527" "Korea, SK [Kdatacenter]"
    Run_Speedtest "28910" "Japan, NTT [fdcservers]"
    Run_Speedtest "21569" "Japan, NTT [i3d]"
    Run_Speedtest "6087" "Japan GLBB"
    Run_Speedtest "24333" "Japan Rakuten"
    Run_Speedtest "17205" "Taiwan, Seednet"
    Run_Speedtest "4938" "Taiwan, HiNet"
    Run_Speedtest "11702" "Taiwan, TFN"
    Run_Speedtest "13623" "Singapore, Singtel"
    Run_Speedtest "7311" "Singapore, M1"
    Run_Speedtest "367" "Singapore, NME"
    Run_Speedtest "8864" "United States, Century Link"
    Run_Speedtest "29623" "United States, Verizon"
    # 执行完成, 标记FLAG
    LBench_Flag_FinishSpeedtestFull="1"
    sleep 1
}
