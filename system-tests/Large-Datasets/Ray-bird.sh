#PBS -S /bin/bash
#PBS -N Bird-4
#PBS -o Bird-4.o
#PBS -e Bird-4.e
#PBS -A nne-790-ac
#PBS -l walltime=48:00:00
#PBS -l qos=SPJ1024
#PBS -l nodes=64:ppn=8

cd $PBS_O_WORKDIR

module load nne-790-ab/ray/last-build

echo "Hello"

mpiexec -n 512 -bynode Ray \
 \
 \
-route-messages -connection-type polytope -routing-graph-degree 21 \
 \
-k 57 \
 \
-o Bird-4 \
 \
-p FastQ-Files/110428_I327_FCB00D2ACXX_L2_PARprgDAPDCAAPE_1.fq.fastq FastQ-Files/110428_I327_FCB00D2ACXX_L2_PARprgDAPDCAAPE_2.fq.fastq \
-p FastQ-Files/110428_I327_FCB00D2ACXX_L3_PARprgDAPDIAAPE_1.fq.fastq FastQ-Files/110428_I327_FCB00D2ACXX_L3_PARprgDAPDIAAPE_2.fq.fastq \
-p FastQ-Files/110428_I327_FCB00D2ACXX_L4_PARprgDAPDMAAPE_1.fq.fastq FastQ-Files/110428_I327_FCB00D2ACXX_L4_PARprgDAPDMAAPE_2.fq.fastq \
 \
-s FastQ-Files/budgie_mrb_20kbpe_12212_F2UQDBX01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12212_F3T3C0K01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12212_F3T3C0K02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12213_F2UQDBX02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12213_F4S0RWP01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12213_F4S0RWP02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12214_F2UQDBX03.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12214_F4UZ0ZF01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12214_F4UZ0ZF02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12215_F2UQDBX04.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12215_F4WNVXN01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_20kbpe_12215_F4WNVXN02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_173a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_173b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_173c.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_174a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_174b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_174c.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_175a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_175b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_175c.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_176a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_176b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_3kbpe_176c.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13832b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13832.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13833b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13833.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13834b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13834.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13835b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13835.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13836b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13836.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13837b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13837.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13838b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13838.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13839b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_8kbpe_13839.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_G0CHDZA01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_G0CHDZA02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_G0CI6DE01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_G0CI6DE02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS61W2V01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS61W2V02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS61W2V03.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS8XR4Y01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS8XR4Y02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS8XR4Y03.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS8XR4Y04.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS8XR4Y05.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS8XR4Y06.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS8XR4Y07.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GS8XR4Y08.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST2Y9N01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST2Y9N02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST2Y9N03.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST2Y9N04.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST2Y9N05.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST2Y9N06.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST2Y9N07.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST2Y9N08.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST4K2401.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST4K2402.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST4K2403.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST4K2404.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST4K2405.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST4K2406.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST4K2407.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GST4K2408.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GSV1ISZ01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GSV1ISZ02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GSV1ISZ03.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GSV1ISZ04.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GSV1ISZ05.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GSV1ISZ06.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GSV1ISZ07.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GSV1ISZ08.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GTDN4X401.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GTDN4X402.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GTDN4X403.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GTDN4X404.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GTDN4X405.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GTDN4X406.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GTDN4X407.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GTDN4X408.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GZR3DQC01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GZR3DQC02.sff.OUT.fastq.Single.fastq \
 \
-p FastQ-Files/110514_I247_FC81MVPABXX_L5_PARprgDABDLAAPE_1.fq.fastq FastQ-Files/110514_I247_FC81MVPABXX_L5_PARprgDABDLAAPE_2.fq.fastq \
-p FastQ-Files/110514_I263_FC81P81ABXX_L5_PARprgDAADTAAPE_1.fq.fastq FastQ-Files/110514_I263_FC81P81ABXX_L5_PARprgDAADTAAPE_2.fq.fastq \
 \
-s FastQ-Files/budgie_mrb_roche_flexplus_GZR3ENJ01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GZR3ENJ02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GZVS9BV01.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_mrb_roche_flexplus_GZVS9BV02.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb01a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb01b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb02a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb02b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb03a.sff.OUT.fastq.Single.fastq \
 \
-p FastQ-Files/110503_I266_FCC00ADABXX_L5_PARprgDAPDWAAPE_1.fq.fastq FastQ-Files/110503_I266_FCC00ADABXX_L5_PARprgDAPDWAAPE_2.fq.fastq \
 \
-s FastQ-Files/budgie_shotgun_mrb03b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb04a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb04b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb05a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb05b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb06a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb06b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb07a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb07b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb08a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb08b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb09a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb09b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb10a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb10b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb11a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb11b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb12a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb12b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb13a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb13b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb14a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb14b.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb15a.sff.OUT.fastq.Single.fastq \
-s FastQ-Files/budgie_shotgun_mrb15b.sff.OUT.fastq.Single.fastq \
 \
-p FastQ-Files/budgie_mrb_20kbpe_12212_F2UQDBX01.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12212_F2UQDBX01.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12212_F3T3C0K01.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12212_F3T3C0K01.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12212_F3T3C0K02.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12212_F3T3C0K02.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12213_F2UQDBX02.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12213_F2UQDBX02.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12213_F4S0RWP01.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12213_F4S0RWP01.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12213_F4S0RWP02.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12213_F4S0RWP02.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12214_F2UQDBX03.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12214_F2UQDBX03.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12214_F4UZ0ZF01.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12214_F4UZ0ZF01.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12214_F4UZ0ZF02.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12214_F4UZ0ZF02.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12215_F2UQDBX04.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12215_F2UQDBX04.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12215_F4WNVXN01.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12215_F4WNVXN01.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_20kbpe_12215_F4WNVXN02.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_20kbpe_12215_F4WNVXN02.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_173a.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_173a.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_173b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_173b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_173c.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_173c.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_174a.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_174a.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_174b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_174b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_174c.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_174c.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_175a.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_175a.sff.OUT.fastq.Reverse.fastq \
 \
-p FastQ-Files/110514_I263_FC81PACABXX_L5_PARprgDABDLBAPE_1.fq.fastq FastQ-Files/110514_I263_FC81PACABXX_L5_PARprgDABDLBAPE_2.fq.fastq \
-p FastQ-Files/110515_I260_FCB0618ABXX_L5_PARprgDAPDWBAPE_1.fq.fastq FastQ-Files/110515_I260_FCB0618ABXX_L5_PARprgDAPDWBAPE_2.fq.fastq \
-p FastQ-Files/110531_I232_FCB05V6ABXX_L8_PARprgDAPDUAAPEI-12_1.fq.fastq FastQ-Files/110531_I232_FCB05V6ABXX_L8_PARprgDAPDUAAPEI-12_2.fq.fastq \
 \
-p FastQ-Files/budgie_mrb_3kbpe_175b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_175b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_175c.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_175c.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_176a.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_176a.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_176b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_176b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_3kbpe_176c.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_3kbpe_176c.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13832b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13832b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13832.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13832.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13833b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13833b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13833.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13833.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13834b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13834b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13834.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13834.sff.OUT.fastq.Reverse.fastq \
 \
-p FastQ-Files/110503_I266_FCB05AKABXX_L5_PARprgDAPDWBAPE_1.fq.fastq FastQ-Files/110503_I266_FCB05AKABXX_L5_PARprgDAPDWBAPE_2.fq.fastq \
-p FastQ-Files/110531_I277_FCB06B9ABXX_L7_PARprgDABDVAAPEI-6_1.fq.fastq FastQ-Files/110531_I277_FCB06B9ABXX_L7_PARprgDABDVAAPEI-6_2.fq.fastq \
 \
 \
-p FastQ-Files/budgie_mrb_8kbpe_13835b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13835b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13835.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13835.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13836b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13836b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13836.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13836.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13837b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13837b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13837.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13837.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13838b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13838b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13838.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13838.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13839b.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13839b.sff.OUT.fastq.Reverse.fastq \
-p FastQ-Files/budgie_mrb_8kbpe_13839.sff.OUT.fastq.Forward.fastq FastQ-Files/budgie_mrb_8kbpe_13839.sff.OUT.fastq.Reverse.fastq \
 \
-s FastQ-Files/PacBio_13kb_90min_500bp_0.75RQ.fastq \
-s FastQ-Files/PacBio_7.5kb_45min_100bp_0.75RQ.fastq \
-s FastQ-Files/PacBio_7.5kb_90min_100bp_0.75RQ.fastq \
 \
 \
