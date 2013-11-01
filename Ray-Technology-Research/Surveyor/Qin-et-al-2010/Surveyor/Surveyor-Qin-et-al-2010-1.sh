#PBS -S /bin/bash
#PBS -N Surveyor-Qin-et-al-2010-1
#PBS -o Surveyor-Qin-et-al-2010-1.stdout
#PBS -e Surveyor-Qin-et-al-2010-1.stderr
#PBS -A nne-790-ac
#PBS -l walltime=02:00:00:00
#PBS -l nodes=32:ppn=8

cd $PBS_O_WORKDIR

module use /rap/nne-790-ab/modulefiles
module load nne-790-ab/apps/ray/devel-daa3832c2ec27467fb95760aed379e4b70c98c48

mpiexec -n 256 \
Ray \
-k 31 \
-output Surveyor-Qin-et-al-2010-1 \
-run-surveyor \
 \
-read-sample-graph MH0001 Qin-et-al-2010/RayGraph-ERS006534-100/kmers.txt \
-read-sample-graph MH0002 Qin-et-al-2010/RayGraph-ERS006553-100/kmers.txt \
-read-sample-graph MH0003 Qin-et-al-2010/RayGraph-ERS006586-100/kmers.txt \
-read-sample-graph MH0004 Qin-et-al-2010/RayGraph-ERS006589-100/kmers.txt \
-read-sample-graph MH0005 Qin-et-al-2010/RayGraph-ERS006560-100/kmers.txt \
-read-sample-graph MH0006 Qin-et-al-2010/RayGraph-ERS006497-100/kmers.txt \
-read-sample-graph MH0007 Qin-et-al-2010/RayGraph-ERS006601-100/kmers.txt \
-read-sample-graph MH0008 Qin-et-al-2010/RayGraph-ERS006498-100/kmers.txt \
-read-sample-graph MH0009 Qin-et-al-2010/RayGraph-ERS006491-100/kmers.txt \
-read-sample-graph MH0010 Qin-et-al-2010/RayGraph-ERS006552-100/kmers.txt \
-read-sample-graph MH0011 Qin-et-al-2010/RayGraph-ERS006540-100/kmers.txt \
-read-sample-graph MH0012 Qin-et-al-2010/RayGraph-ERS006494-100/kmers.txt \
-read-sample-graph MH0013 Qin-et-al-2010/RayGraph-ERS006600-100/kmers.txt \
-read-sample-graph MH0014 Qin-et-al-2010/RayGraph-ERS006544-100/kmers.txt \
-read-sample-graph MH0015 Qin-et-al-2010/RayGraph-ERS006548-100/kmers.txt \
-read-sample-graph MH0016 Qin-et-al-2010/RayGraph-ERS006557-100/kmers.txt \
-read-sample-graph MH0017 Qin-et-al-2010/RayGraph-ERS006505-100/kmers.txt \
-read-sample-graph MH0018 Qin-et-al-2010/RayGraph-ERS006558-100/kmers.txt \
-read-sample-graph MH0019 Qin-et-al-2010/RayGraph-ERS006537-100/kmers.txt \
-read-sample-graph MH0020 Qin-et-al-2010/RayGraph-ERS006597-100/kmers.txt \
-read-sample-graph MH0021 Qin-et-al-2010/RayGraph-ERS006499-100/kmers.txt \
-read-sample-graph MH0022 Qin-et-al-2010/RayGraph-ERS006503-100/kmers.txt \
-read-sample-graph MH0023 Qin-et-al-2010/RayGraph-ERS006570-100/kmers.txt \
-read-sample-graph MH0024 Qin-et-al-2010/RayGraph-ERS006585-100/kmers.txt \
-read-sample-graph MH0025 Qin-et-al-2010/RayGraph-ERS006488-100/kmers.txt \
-read-sample-graph MH0026 Qin-et-al-2010/RayGraph-ERS006571-100/kmers.txt \
-read-sample-graph MH0027 Qin-et-al-2010/RayGraph-ERS006596-100/kmers.txt \
-read-sample-graph MH0028 Qin-et-al-2010/RayGraph-ERS006533-100/kmers.txt \
-read-sample-graph MH0030 Qin-et-al-2010/RayGraph-ERS006527-100/kmers.txt \
-read-sample-graph MH0031 Qin-et-al-2010/RayGraph-ERS006490-100/kmers.txt \
-read-sample-graph MH0032 Qin-et-al-2010/RayGraph-ERS006504-100/kmers.txt \
-read-sample-graph MH0033 Qin-et-al-2010/RayGraph-ERS006568-100/kmers.txt \
-read-sample-graph MH0034 Qin-et-al-2010/RayGraph-ERS006538-100/kmers.txt \
-read-sample-graph MH0035 Qin-et-al-2010/RayGraph-ERS006489-100/kmers.txt \
-read-sample-graph MH0036 Qin-et-al-2010/RayGraph-ERS006556-100/kmers.txt \
-read-sample-graph MH0037 Qin-et-al-2010/RayGraph-ERS006604-100/kmers.txt \
-read-sample-graph MH0038 Qin-et-al-2010/RayGraph-ERS006531-100/kmers.txt \
-read-sample-graph MH0039 Qin-et-al-2010/RayGraph-ERS006580-100/kmers.txt \
-read-sample-graph MH0040 Qin-et-al-2010/RayGraph-ERS006547-100/kmers.txt \
-read-sample-graph MH0041 Qin-et-al-2010/RayGraph-ERS006608-100/kmers.txt \
-read-sample-graph MH0042 Qin-et-al-2010/RayGraph-ERS006532-100/kmers.txt \
-read-sample-graph MH0043 Qin-et-al-2010/RayGraph-ERS006607-100/kmers.txt \
-read-sample-graph MH0044 Qin-et-al-2010/RayGraph-ERS006525-100/kmers.txt \
-read-sample-graph MH0045 Qin-et-al-2010/RayGraph-ERS006507-100/kmers.txt \
-read-sample-graph MH0046 Qin-et-al-2010/RayGraph-ERS006516-100/kmers.txt \
-read-sample-graph MH0047 Qin-et-al-2010/RayGraph-ERS006592-100/kmers.txt \
-read-sample-graph MH0048 Qin-et-al-2010/RayGraph-ERS006501-100/kmers.txt \
-read-sample-graph MH0049 Qin-et-al-2010/RayGraph-ERS006529-100/kmers.txt \
-read-sample-graph MH0050 Qin-et-al-2010/RayGraph-ERS006579-100/kmers.txt \
-read-sample-graph MH0051 Qin-et-al-2010/RayGraph-ERS006578-100/kmers.txt \
-read-sample-graph MH0052 Qin-et-al-2010/RayGraph-ERS006500-100/kmers.txt \
-read-sample-graph MH0053 Qin-et-al-2010/RayGraph-ERS006495-100/kmers.txt \
-read-sample-graph MH0054 Qin-et-al-2010/RayGraph-ERS006551-100/kmers.txt \
-read-sample-graph MH0055 Qin-et-al-2010/RayGraph-ERS006550-100/kmers.txt \
-read-sample-graph MH0056 Qin-et-al-2010/RayGraph-ERS006513-100/kmers.txt \
-read-sample-graph MH0057 Qin-et-al-2010/RayGraph-ERS006565-100/kmers.txt \
-read-sample-graph MH0058 Qin-et-al-2010/RayGraph-ERS006564-100/kmers.txt \
-read-sample-graph MH0059 Qin-et-al-2010/RayGraph-ERS006581-100/kmers.txt \
-read-sample-graph MH0060 Qin-et-al-2010/RayGraph-ERS006562-100/kmers.txt \
-read-sample-graph MH0061 Qin-et-al-2010/RayGraph-ERS006506-100/kmers.txt \
-read-sample-graph MH0062 Qin-et-al-2010/RayGraph-ERS006508-100/kmers.txt \
-read-sample-graph MH0063 Qin-et-al-2010/RayGraph-ERS006588-100/kmers.txt \
-read-sample-graph MH0064 Qin-et-al-2010/RayGraph-ERS006536-100/kmers.txt \
-read-sample-graph MH0065 Qin-et-al-2010/RayGraph-ERS006549-100/kmers.txt \
-read-sample-graph MH0066 Qin-et-al-2010/RayGraph-ERS006528-100/kmers.txt \
-read-sample-graph MH0067 Qin-et-al-2010/RayGraph-ERS006535-100/kmers.txt \
-read-sample-graph MH0068 Qin-et-al-2010/RayGraph-ERS006530-100/kmers.txt \
-read-sample-graph MH0069 Qin-et-al-2010/RayGraph-ERS006561-100/kmers.txt \
-read-sample-graph MH0070 Qin-et-al-2010/RayGraph-ERS006554-100/kmers.txt \
-read-sample-graph MH0071 Qin-et-al-2010/RayGraph-ERS006590-100/kmers.txt \
-read-sample-graph MH0072 Qin-et-al-2010/RayGraph-ERS006487-100/kmers.txt \
-read-sample-graph MH0073 Qin-et-al-2010/RayGraph-ERS006542-100/kmers.txt \
-read-sample-graph MH0074 Qin-et-al-2010/RayGraph-ERS006517-100/kmers.txt \
-read-sample-graph MH0075 Qin-et-al-2010/RayGraph-ERS006493-100/kmers.txt \
-read-sample-graph MH0076 Qin-et-al-2010/RayGraph-ERS006569-100/kmers.txt \
-read-sample-graph MH0077 Qin-et-al-2010/RayGraph-ERS006496-100/kmers.txt \
-read-sample-graph MH0078 Qin-et-al-2010/RayGraph-ERS006486-100/kmers.txt \
-read-sample-graph MH0079 Qin-et-al-2010/RayGraph-ERS006573-100/kmers.txt \
-read-sample-graph MH0080 Qin-et-al-2010/RayGraph-ERS006584-100/kmers.txt \
-read-sample-graph MH0081 Qin-et-al-2010/RayGraph-ERS006519-100/kmers.txt \
-read-sample-graph MH0082 Qin-et-al-2010/RayGraph-ERS006555-100/kmers.txt \
-read-sample-graph MH0083 Qin-et-al-2010/RayGraph-ERS006514-100/kmers.txt \
-read-sample-graph MH0084 Qin-et-al-2010/RayGraph-ERS006541-100/kmers.txt \
-read-sample-graph MH0085 Qin-et-al-2010/RayGraph-ERS006511-100/kmers.txt \
-read-sample-graph MH0086 Qin-et-al-2010/RayGraph-ERS006593-100/kmers.txt \
 \
-read-sample-graph O2.UC-1 Qin-et-al-2010/RayGraph-ERS006546-100/kmers.txt \
-read-sample-graph O2.UC-4 Qin-et-al-2010/RayGraph-ERS006509-100/kmers.txt \
-read-sample-graph O2.UC-11 Qin-et-al-2010/RayGraph-ERS006563-100/kmers.txt \
-read-sample-graph O2.UC-12 Qin-et-al-2010/RayGraph-ERS006567-100/kmers.txt \
-read-sample-graph O2.UC-13 Qin-et-al-2010/RayGraph-ERS006523-100/kmers.txt \
-read-sample-graph O2.UC-14 Qin-et-al-2010/RayGraph-ERS006520-100/kmers.txt \
-read-sample-graph O2.UC-16 Qin-et-al-2010/RayGraph-ERS006543-100/kmers.txt \
-read-sample-graph O2.UC-17 Qin-et-al-2010/RayGraph-ERS006591-100/kmers.txt \
-read-sample-graph O2.UC-18 Qin-et-al-2010/RayGraph-ERS006522-100/kmers.txt \
-read-sample-graph O2.UC-19 Qin-et-al-2010/RayGraph-ERS006512-100/kmers.txt \
-read-sample-graph O2.UC-20 Qin-et-al-2010/RayGraph-ERS006582-100/kmers.txt \
-read-sample-graph O2.UC-21 Qin-et-al-2010/RayGraph-ERS006521-100/kmers.txt \
-read-sample-graph O2.UC-22 Qin-et-al-2010/RayGraph-ERS006605-100/kmers.txt \
-read-sample-graph O2.UC-23 Qin-et-al-2010/RayGraph-ERS006502-100/kmers.txt \
-read-sample-graph O2.UC-24 Qin-et-al-2010/RayGraph-ERS006576-100/kmers.txt \
 \
-read-sample-graph V1.CD-1 Qin-et-al-2010/RayGraph-ERS006603-100/kmers.txt \
-read-sample-graph V1.CD-2 Qin-et-al-2010/RayGraph-ERS006526-100/kmers.txt \
-read-sample-graph V1.CD-3 Qin-et-al-2010/RayGraph-ERS006539-100/kmers.txt \
-read-sample-graph V1.CD-4 Qin-et-al-2010/RayGraph-ERS006599-100/kmers.txt \
-read-sample-graph V1.CD-6 Qin-et-al-2010/RayGraph-ERS006595-100/kmers.txt \
-read-sample-graph V1.CD-8 Qin-et-al-2010/RayGraph-ERS006602-100/kmers.txt \
-read-sample-graph V1.CD-9 Qin-et-al-2010/RayGraph-ERS006524-100/kmers.txt \
-read-sample-graph V1.CD-11 Qin-et-al-2010/RayGraph-ERS006566-100/kmers.txt \
-read-sample-graph V1.CD-12 Qin-et-al-2010/RayGraph-ERS006572-100/kmers.txt \
-read-sample-graph V1.CD-13 Qin-et-al-2010/RayGraph-ERS006559-100/kmers.txt \
-read-sample-graph V1.CD-14 Qin-et-al-2010/RayGraph-ERS006574-100/kmers.txt \
-read-sample-graph V1.CD-15 Qin-et-al-2010/RayGraph-ERS006583-100/kmers.txt \
 \
-read-sample-graph V1.UC-6 Qin-et-al-2010/RayGraph-ERS006575-100/kmers.txt \
-read-sample-graph V1.UC-7 Qin-et-al-2010/RayGraph-ERS006510-100/kmers.txt \
-read-sample-graph V1.UC-8 Qin-et-al-2010/RayGraph-ERS006594-100/kmers.txt \
-read-sample-graph V1.UC-9 Qin-et-al-2010/RayGraph-ERS006492-100/kmers.txt \
-read-sample-graph V1.UC-10 Qin-et-al-2010/RayGraph-ERS006577-100/kmers.txt \
-read-sample-graph V1.UC-13 Qin-et-al-2010/RayGraph-ERS006515-100/kmers.txt \
-read-sample-graph V1.UC-14 Qin-et-al-2010/RayGraph-ERS006606-100/kmers.txt \
-read-sample-graph V1.UC-15 Qin-et-al-2010/RayGraph-ERS006485-100/kmers.txt \
-read-sample-graph V1.UC-17 Qin-et-al-2010/RayGraph-ERS006598-100/kmers.txt \
-read-sample-graph V1.UC-18 Qin-et-al-2010/RayGraph-ERS006587-100/kmers.txt \
-read-sample-graph V1.UC-19 Qin-et-al-2010/RayGraph-ERS006545-100/kmers.txt \
-read-sample-graph V1.UC-21 Qin-et-al-2010/RayGraph-ERS006518-100/kmers.txt \
 \

