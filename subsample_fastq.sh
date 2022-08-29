## Need to add in set functions, variables and maybe some file checking. Also usage, help and feedback for inputting a disallowed file.

paste HR0091_Rn1155_S1_R1.fastq HR0091_Rn1155_S1_R2.fastq | awk '{ printf("%s",$0); n++;
if(n%4==0) { printf("\n");} else { printf("\t");} }' | awk -v k=10000 'BEGIN{srand(systime() + PROCINFO["pid"]);}{s=x++<k?x1:int(rand()*x);if(s<k)R[s]=$0}END{for(i in R)print R[i]}' | awk -F"\t" '{print $1"\n"$3"\n"$5"\n"$7 > "HR0091_Rn1155_S1_R1_sub10k.fastq";print $2"\n"$4"\n"$6"\n"$8 > "HR0091_Rn1155_S1_R2_sub10k.fastq"}'
