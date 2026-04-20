; ModuleID = 'C:/Users/krish/Desktop/ECE445M_Robot/RTOS_Lab4_FileSystem/RTOS_Lab4.c'
source_filename = "C:/Users/krish/Desktop/ECE445M_Robot/RTOS_Lab4_FileSystem/RTOS_Lab4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv6m-ti-none-eabi"

%struct.Sema4 = type { i32, ptr, ptr }
%struct.IOMUX_SECCFG_Regs = type { i32, [251 x i32] }
%struct.GPIO_Regs = type { [256 x i32], i32, i32, [15 x i32], i32, i32, [237 x i32], %struct.GPIO_GPRCM_Regs, [510 x i32], i32, i32, i32, i32, %struct.GPIO_CPU_INT_Regs, i32, %struct.GPIO_GEN_EVENT0_Regs, i32, %struct.GPIO_GEN_EVENT1_Regs, [13 x i32], i32, [6 x i32], i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [24 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [7 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [24 x i32], i32, [3 x i32], i32, [3 x i32], i32, [23 x i32], i32, i32, [62 x i32], i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.GPIO_GPRCM_Regs = type { i32, i32, [3 x i32], i32 }
%struct.GPIO_CPU_INT_Regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GPIO_GEN_EVENT0_Regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GPIO_GEN_EVENT1_Regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@JitterSize3 = hidden constant i32 512, align 4
@JitterHistogram3 = hidden global [512 x i32] zeroinitializer, align 4
@MaxJitter3 = common hidden global i32 0, align 4 #0
@DAS.LastTime = internal global i32 0, align 4 #0
@FilterOutput = common hidden global i32 0, align 4 #0
@Distance = common hidden global i32 0, align 4 #0
@Running = common hidden global i32 0, align 4 #0
@FilterWork = common hidden global i32 0, align 4 #0
@Checks = common hidden global i32 0, align 4 #0
@ChecksWork = common hidden global i32 0, align 4 #0
@ArmCrash = hidden global i32 1, align 4
@.str = private unnamed_addr constant [14 x i8] c"myID        =\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"*Crash*,  t= \00", align 1
@NumCreated = common hidden global i32 0, align 4 #0
@Distance2 = common hidden global i32 0, align 4 #0
@DataLost = common hidden global i32 0, align 4 #0
@LCDFree = common hidden global %struct.Sema4 zeroinitializer, align 4 #0
@.str.2 = private unnamed_addr constant [6 x i8] c"Err: \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Code:     \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"eFile_WOpen\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"time(s)\09dist(mm)\09dist(mm)\0A\0D\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"eFile_WriteString\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"eFile_WClose\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@FileName = hidden global [8 x i8] c"robot0\00\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Robot running...\00", align 1
@x = common hidden global [16 x i32] zeroinitializer, align 4 #0
@.str.10 = private unnamed_addr constant [9 x i8] c"done.\0A\0D>\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"myId = \00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Run length = \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Time(ms) =\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"work  =\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"d(mm) =\00", align 1
@ChecksumErrors = common hidden global i32 0, align 4 #0
@ChecksumOriginal = common hidden global i32 0, align 4 #0
@Checksum = common hidden global i32 0, align 4 #0
@.str.16 = private unnamed_addr constant [25 x i8] c"\0D\0ALab 4 performance data\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"\0D\0AFilterWork     = \00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"\0D\0ANumCreated     = \00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"\0D\0AChecksWork     = \00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\0D\0ADataLost       = \00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"\0D\0AReal-time sampling jitter (cyc)\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"\0D\0ATime,  Frequencies\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"\0D\0A \00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"\0D\0AMaxJitter3(cyc) = \00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"\0D\0ALab 2/3 DFT data\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"\0D\0AInput,  Output Real, Output Imaginary, Magnitude\00", align 1
@ReX = common hidden global [16 x i32] zeroinitializer, align 4 #0
@ImX = common hidden global [16 x i32] zeroinitializer, align 4 #0
@.str.27 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"eFile_Init\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"eFile_Mount\00", align 1
@M = hidden global i32 1, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"eDisk test      \00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"\0A\0DECE445M, Lab 4 eDisk test\0A\0DTestmain1\0A\0D\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"eDisk_Init\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Writing blocks\0A\0D\00", align 1
@buffer = common hidden global [512 x i8] zeroinitializer, align 1 #0
@.str.34 = private unnamed_addr constant [17 x i8] c"eDisk_WriteBlock\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Reading blocks\0A\0D\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"eDisk_ReadBlock\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Read data not correct, block=\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c", i=\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c", expected \00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c", read \00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"Successful test of 100 blocks\0A\0D\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"eDisk successful\00", align 1
@.str.43 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"eFile_DOpen\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"Filename = \00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"Size (bytes)= \00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"Number of Files = \00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Number of Bytes = \00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"eFile_DClose\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"\0A\0DECE445M Lab 4 eFile test 2\0A\0D\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"eFile test 2    \00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"eFile_Format\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"eFile_Create\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"Testmain2\09abcdefghijklmnopqrstuvwxyz\09\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"eFile_ROpen\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"eFile_RClose\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"eFile_Delete\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"eFile_Unmount\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"Successful test\0A\0D\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"eFile successful\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"Testmain3\09abcdefghijklmnopqrstuvwxyz\09\00", align 1
@Run3 = hidden global i32 0, align 4
@.str.64 = private unnamed_addr constant [31 x i8] c"\0A\0DECE445M Lab 4 eFile test 3\0A\0D\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"eFile test 3\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"Successful test 3, Run3=\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"Run3 =\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"Chaos\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"n =\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @Logic_Init() #1 {
  store volatile i32 129, ptr getelementptr inbounds (%struct.IOMUX_SECCFG_Regs, ptr inttoptr (i32 1078099968 to ptr), i32 0, i32 1, i32 18), align 4
  store volatile i32 129, ptr getelementptr inbounds (%struct.IOMUX_SECCFG_Regs, ptr inttoptr (i32 1078099968 to ptr), i32 0, i32 1, i32 19), align 4
  store volatile i32 129, ptr getelementptr inbounds (%struct.IOMUX_SECCFG_Regs, ptr inttoptr (i32 1078099968 to ptr), i32 0, i32 1, i32 37), align 4
  store volatile i32 129, ptr getelementptr inbounds (%struct.IOMUX_SECCFG_Regs, ptr inttoptr (i32 1078099968 to ptr), i32 0, i32 1, i32 16), align 4
  store volatile i32 129, ptr getelementptr inbounds (%struct.IOMUX_SECCFG_Regs, ptr inttoptr (i32 1078099968 to ptr), i32 0, i32 1, i32 12), align 4
  store volatile i32 129, ptr getelementptr inbounds (%struct.IOMUX_SECCFG_Regs, ptr inttoptr (i32 1078099968 to ptr), i32 0, i32 1, i32 47), align 4
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 40), align 4
  %2 = or i32 %1, 66304
  store volatile i32 %2, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 40), align 4
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 40), align 4
  %4 = or i32 %3, 1048594
  store volatile i32 %4, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 40), align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @Jitter3_Init() #1 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %8, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp ult i32 %3, 512
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr inbounds [512 x i32], ptr @JitterHistogram3, i32 0, i32 %6
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %1, align 4
  br label %2

11:                                               ; preds = %2
  store i32 0, ptr @MaxJitter3, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @DAS() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store volatile i32 256, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  %5 = call i32 @ADC0_In()
  store i32 %5, ptr %1, align 4
  store volatile i32 256, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  %6 = call i32 @OS_Time()
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr %1, align 4
  %8 = call i32 @Filter(i32 noundef %7)
  store i32 %8, ptr @FilterOutput, align 4
  %9 = load i32, ptr @FilterOutput, align 4
  %10 = call i32 @IRDistance_Convert(i32 noundef %9, i32 noundef 0)
  store i32 %10, ptr @Distance, align 4
  %11 = load i32, ptr @Running, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %0
  %14 = load i32, ptr @FilterWork, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr @FilterWork, align 4
  %16 = load i32, ptr @FilterWork, align 4
  %17 = icmp ugt i32 %16, 2
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load i32, ptr @DAS.LastTime, align 4
  %20 = load i32, ptr %2, align 4
  %21 = call i32 @OS_TimeDifference(i32 noundef %19, i32 noundef %20)
  store i32 %21, ptr %4, align 4
  %22 = load i32, ptr %4, align 4
  %23 = icmp ugt i32 %22, 80000
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, ptr %4, align 4
  %26 = sub i32 %25, 80000
  store i32 %26, ptr %3, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load i32, ptr %4, align 4
  %29 = sub i32 80000, %28
  store i32 %29, ptr %3, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, ptr %3, align 4
  %32 = load i32, ptr @MaxJitter3, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, ptr %3, align 4
  store i32 %35, ptr @MaxJitter3, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, ptr %3, align 4
  %38 = icmp uge i32 %37, 512
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 511, ptr %3, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, ptr %3, align 4
  %42 = getelementptr inbounds [512 x i32], ptr @JitterHistogram3, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %40, %13
  %46 = load i32, ptr @Checks, align 4
  store i32 %46, ptr @ChecksWork, align 4
  %47 = load i32, ptr %2, align 4
  store i32 %47, ptr @DAS.LastTime, align 4
  br label %48

48:                                               ; preds = %45, %0
  store volatile i32 256, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ADC0_In() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_Time() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @Filter(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @IRDistance_Convert(i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_TimeDifference(i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @HandleCrash() #1 {
  %1 = alloca i32, align 4
  store volatile i32 512, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  store volatile i32 512, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  %2 = call i32 @OS_Id()
  store i32 %2, ptr %1, align 4
  %3 = load i32, ptr %1, align 4
  call void @ST7735_Message(i32 noundef 1, i32 noundef 0, ptr noundef @.str, i32 noundef %3)
  %4 = call i32 @OS_MsTime()
  call void @ST7735_Message(i32 noundef 1, i32 noundef 1, ptr noundef @.str.1, i32 noundef %4)
  store i32 1, ptr @ArmCrash, align 4
  store volatile i32 512, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  call void @OS_Kill()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_Id() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ST7735_Message(i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_MsTime() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_Kill() #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @PA28Push() #1 {
  %1 = load i32, ptr @ArmCrash, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  store i32 0, ptr @ArmCrash, align 4
  %4 = call i32 @OS_AddThread(ptr noundef @HandleCrash, i32 noundef 128, i32 noundef 1)
  %5 = load i32, ptr @NumCreated, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr @NumCreated, align 4
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_AddThread(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @Producer(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr @Running, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  store volatile i32 65536, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  %6 = load i32, ptr %2, align 4
  %7 = call i32 @Median5(i32 noundef %6)
  store i32 %7, ptr @Distance2, align 4
  store volatile i32 65536, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  %8 = load i32, ptr @Distance2, align 4
  %9 = call i32 @OS_Fifo_Put(i32 noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load i32, ptr @DataLost, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr @DataLost, align 4
  br label %14

14:                                               ; preds = %11, %5
  store volatile i32 65536, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @Median5(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_Fifo_Put(i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @diskError(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  call void @OS_bSignal(ptr noundef @LCDFree)
  %5 = call i32 @ST7735_DrawString(i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef @.str.2, i16 noundef signext 31)
  %6 = load ptr, ptr %3, align 4
  %7 = call i32 @ST7735_DrawString(i16 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef %6, i16 noundef signext 31)
  %8 = call i32 @ST7735_DrawString(i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef @.str.3, i16 noundef signext 31)
  call void @ST7735_SetCursor(i32 noundef 6, i32 noundef 2)
  call void @ST7735_SetTextColor(i16 noundef zeroext 31)
  %9 = load i32, ptr %4, align 4
  call void @ST7735_OutUDec(i32 noundef %9)
  store i32 0, ptr @Running, align 4
  call void @OS_Kill()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_bSignal(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ST7735_DrawString(i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef signext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ST7735_SetCursor(i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ST7735_SetTextColor(i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ST7735_OutUDec(i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @StartFileDump(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @OS_bWait(ptr noundef @LCDFree)
  %3 = load ptr, ptr %2, align 4
  %4 = call i32 @eFile_Create(ptr noundef %3)
  %5 = load ptr, ptr %2, align 4
  %6 = call i32 @eFile_WOpen(ptr noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @diskError(ptr noundef @.str.4, i32 noundef 0)
  br label %9

9:                                                ; preds = %8, %1
  %10 = call i32 @eFile_WriteString(ptr noundef @.str.5)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @diskError(ptr noundef @.str.6, i32 noundef 0)
  br label %13

13:                                               ; preds = %12, %9
  call void @OS_bSignal(ptr noundef @LCDFree)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_bWait(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_Create(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_WOpen(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_WriteString(ptr noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @EndFileDump() #1 {
  call void @OS_bWait(ptr noundef @LCDFree)
  %1 = call i32 @eFile_WClose()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @diskError(ptr noundef @.str.7, i32 noundef 0)
  br label %4

4:                                                ; preds = %3, %0
  call void @OS_bSignal(ptr noundef @LCDFree)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_WClose() #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @FileDump(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store volatile i32 16, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 34), align 4
  call void @OS_bWait(ptr noundef @LCDFree)
  %5 = call i32 @OS_MsTime()
  %6 = udiv i32 %5, 10
  %7 = call i32 @eFile_WriteUFix2(i32 noundef %6)
  %8 = call i32 @eFile_Write(i8 noundef zeroext 9)
  %9 = load i32, ptr %3, align 4
  %10 = call i32 @eFile_WriteUDec(i32 noundef %9)
  %11 = call i32 @eFile_Write(i8 noundef zeroext 9)
  %12 = load i32, ptr %4, align 4
  %13 = call i32 @eFile_WriteUDec(i32 noundef %12)
  %14 = call i32 @eFile_WriteString(ptr noundef @.str.8)
  call void @OS_bSignal(ptr noundef @LCDFree)
  store volatile i32 16, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 36), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_WriteUFix2(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_Write(i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_WriteUDec(i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @Robot() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr @DataLost, align 4
  store i32 0, ptr @FilterWork, align 4
  store i32 1, ptr @Running, align 4
  call void @Jitter3_Init()
  call void @OS_ClearMsTime()
  call void @OS_Fifo_Init(i32 noundef 256)
  %4 = call i32 @OS_AddThread(ptr noundef @Display, i32 noundef 128, i32 noundef 0)
  %5 = load i32, ptr @NumCreated, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr @NumCreated, align 4
  call void @UART_OutString(ptr noundef @.str.9)
  call void @StartFileDump(ptr noundef @FileName)
  br label %7

7:                                                ; preds = %25, %0
  %8 = load i32, ptr @FilterWork, align 4
  %9 = icmp ult i32 %8, 10000
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  store i32 0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, ptr %3, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = call i32 @OS_Fifo_Get()
  store i32 %15, ptr %1, align 4
  %16 = load i32, ptr %1, align 4
  %17 = load i32, ptr %3, align 4
  %18 = getelementptr inbounds [16 x i32], ptr @x, i32 0, i32 %17
  store i32 %16, ptr %18, align 4
  %19 = load i32, ptr %1, align 4
  %20 = load i32, ptr %2, align 4
  %21 = add i32 %20, %19
  store i32 %21, ptr %2, align 4
  br label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %3, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load i32, ptr %2, align 4
  %27 = lshr i32 %26, 4
  store i32 %27, ptr @Distance2, align 4
  %28 = load i32, ptr @Distance, align 4
  %29 = load i32, ptr @Distance2, align 4
  call void @FileDump(i32 noundef %28, i32 noundef %29)
  %30 = load i32, ptr @Distance2, align 4
  call void @OS_MailBox_Send(i32 noundef %30)
  br label %7

31:                                               ; preds = %7
  call void @EndFileDump()
  call void @UART_OutString(ptr noundef @.str.10)
  %32 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @FileName, i32 0, i32 5), align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %33, 1
  %35 = and i32 %34, 247
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr getelementptr inbounds ([8 x i8], ptr @FileName, i32 0, i32 5), align 1
  store i32 0, ptr @Running, align 4
  call void @OS_Kill()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_ClearMsTime() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_Fifo_Init(i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @Display() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @OS_Id()
  store i32 %3, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  call void @ST7735_Message(i32 noundef 0, i32 noundef 1, ptr noundef @.str.11, i32 noundef %4)
  call void @ST7735_Message(i32 noundef 0, i32 noundef 2, ptr noundef @.str.12, i32 noundef 10)
  br label %5

5:                                                ; preds = %8, %0
  %6 = load i32, ptr @Running, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  store volatile i32 2, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  %9 = call i32 @OS_MailBox_Recv()
  store i32 %9, ptr %1, align 4
  store volatile i32 2, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  %10 = call i32 @OS_MsTime()
  call void @ST7735_Message(i32 noundef 0, i32 noundef 3, ptr noundef @.str.13, i32 noundef %10)
  %11 = load i32, ptr @FilterWork, align 4
  call void @ST7735_Message(i32 noundef 0, i32 noundef 4, ptr noundef @.str.14, i32 noundef %11)
  %12 = load i32, ptr %1, align 4
  call void @ST7735_Message(i32 noundef 0, i32 noundef 5, ptr noundef @.str.15, i32 noundef %12)
  store volatile i32 2, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  br label %5

13:                                               ; preds = %5
  call void @OS_Kill()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @UART_OutString(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_Fifo_Get() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_MailBox_Send(i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @S2Push() #1 {
  %1 = load i32, ptr @Running, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  store i32 1, ptr @Running, align 4
  %4 = call i32 @OS_AddThread(ptr noundef @Robot, i32 noundef 128, i32 noundef 1)
  %5 = load i32, ptr @NumCreated, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr @NumCreated, align 4
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_MailBox_Recv() #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @Check(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = inttoptr i32 %7 to ptr
  store ptr %8, ptr %6, align 4
  br label %9

9:                                                ; preds = %14, %2
  %10 = load ptr, ptr %6, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = load i32, ptr %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %16, ptr %6, align 4
  %17 = load i32, ptr %15, align 4
  %18 = load i32, ptr %5, align 4
  %19 = add i32 %18, %17
  store i32 %19, ptr %5, align 4
  br label %9

20:                                               ; preds = %9
  %21 = load i32, ptr %5, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @VirusDetector() #1 {
  store i32 0, ptr @ChecksumErrors, align 4
  store i32 0, ptr @Checks, align 4
  %1 = call i32 @Check(i32 noundef 0, i32 noundef 131072)
  store i32 %1, ptr @ChecksumOriginal, align 4
  br label %2

2:                                                ; preds = %0, %12
  store volatile i32 1048576, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  %3 = call i32 @Check(i32 noundef 0, i32 noundef 131072)
  store i32 %3, ptr @Checksum, align 4
  %4 = load i32, ptr @Checks, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr @Checks, align 4
  %6 = load i32, ptr @Checksum, align 4
  %7 = load i32, ptr @ChecksumOriginal, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, ptr @ChecksumErrors, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr @ChecksumErrors, align 4
  br label %12

12:                                               ; preds = %9, %2
  br label %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @Lab4() #1 {
  %1 = alloca i32, align 4
  call void @UART_OutString(ptr noundef @.str.16)
  call void @UART_OutString(ptr noundef @.str.17)
  %2 = load i32, ptr @FilterWork, align 4
  call void @UART_OutUDec(i32 noundef %2)
  call void @UART_OutString(ptr noundef @.str.18)
  %3 = load i32, ptr @NumCreated, align 4
  call void @UART_OutUDec(i32 noundef %3)
  call void @UART_OutString(ptr noundef @.str.19)
  %4 = load i32, ptr @ChecksWork, align 4
  call void @UART_OutUDec(i32 noundef %4)
  call void @UART_OutString(ptr noundef @.str.20)
  %5 = load i32, ptr @DataLost, align 4
  call void @UART_OutUDec(i32 noundef %5)
  call void @UART_OutString(ptr noundef @.str.21)
  call void @UART_OutString(ptr noundef @.str.22)
  store i32 0, ptr %1, align 4
  br label %6

6:                                                ; preds = %20, %0
  %7 = load i32, ptr %1, align 4
  %8 = icmp ult i32 %7, 512
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load i32, ptr %1, align 4
  %11 = getelementptr inbounds [512 x i32], ptr @JitterHistogram3, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  call void @UART_OutString(ptr noundef @.str.23)
  %15 = load i32, ptr %1, align 4
  call void @UART_OutUDec5(i32 noundef %15)
  %16 = load i32, ptr %1, align 4
  %17 = getelementptr inbounds [512 x i32], ptr @JitterHistogram3, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  call void @UART_OutUDec5(i32 noundef %18)
  br label %19

19:                                               ; preds = %14, %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, ptr %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %1, align 4
  br label %6

23:                                               ; preds = %6
  call void @UART_OutString(ptr noundef @.str.24)
  %24 = load i32, ptr @MaxJitter3, align 4
  call void @UART_OutUDec(i32 noundef %24)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @UART_OutUDec(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @UART_OutUDec5(i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @DFT() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @UART_OutString(ptr noundef @.str.25)
  call void @UART_OutString(ptr noundef @.str.26)
  store i32 0, ptr %1, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, ptr %1, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load i32, ptr %1, align 4
  %10 = getelementptr inbounds [16 x i32], ptr @ReX, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  %12 = load i32, ptr %1, align 4
  %13 = getelementptr inbounds [16 x i32], ptr @ImX, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %3, align 4
  %15 = load i32, ptr %2, align 4
  %16 = load i32, ptr %2, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr %3, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %17, %20
  %22 = call i32 @sqrt2(i32 noundef %21)
  store i32 %22, ptr %4, align 4
  call void @UART_OutString(ptr noundef @.str.27)
  %23 = load i32, ptr %1, align 4
  %24 = getelementptr inbounds [16 x i32], ptr @x, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  call void @UART_OutUDec(i32 noundef %25)
  call void @UART_OutChar(i8 noundef zeroext 32)
  %26 = load i32, ptr %2, align 4
  call void @UART_OutSDec(i32 noundef %26)
  call void @UART_OutChar(i8 noundef zeroext 32)
  %27 = load i32, ptr %3, align 4
  call void @UART_OutSDec(i32 noundef %27)
  call void @UART_OutChar(i8 noundef zeroext 32)
  %28 = load i32, ptr %4, align 4
  call void @UART_OutSDec(i32 noundef %28)
  br label %29

29:                                               ; preds = %8
  %30 = load i32, ptr %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %1, align 4
  br label %5

32:                                               ; preds = %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sqrt2(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @UART_OutChar(i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @UART_OutSDec(i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @realmain() #1 {
  call void @OS_Init()
  call void @Logic_Init()
  store i32 0, ptr @DataLost, align 4
  store i32 0, ptr @FilterWork, align 4
  call void @Jitter3_Init()
  call void @OS_MailBox_Init()
  call void @OS_Fifo_Init(i32 noundef 256)
  call void @ADC0_Init(i32 noundef 3, i32 noundef 0)
  call void @OS_InitSemaphore(ptr noundef @LCDFree, i32 noundef 1)
  %1 = call i32 @OS_AddS2Task(ptr noundef @S2Push, i32 noundef 1)
  %2 = call i32 @OS_AddPA28Task(ptr noundef @PA28Push, i32 noundef 1)
  %3 = call i32 @OS_AddPeriodicThread(ptr noundef @DAS, i32 noundef 1, i32 noundef 0)
  %4 = call i32 @OS_AddPeriodicThread(ptr noundef @disk_timerproc, i32 noundef 1, i32 noundef 0)
  store i32 0, ptr @NumCreated, align 4
  %5 = call i32 @OS_AddThread(ptr noundef @Interpreter, i32 noundef 128, i32 noundef 1)
  %6 = load i32, ptr @NumCreated, align 4
  %7 = add i32 %6, %5
  store i32 %7, ptr @NumCreated, align 4
  %8 = call i32 @OS_AddThread(ptr noundef @VirusDetector, i32 noundef 128, i32 noundef 2)
  %9 = load i32, ptr @NumCreated, align 4
  %10 = add i32 %9, %8
  store i32 %10, ptr @NumCreated, align 4
  call void @LPF_Init7(i32 noundef 500, i32 noundef 7)
  call void @TFLuna2_Init(ptr noundef @Producer)
  call void @TFLuna2_Format_Standard_mm()
  call void @TFLuna2_Frame_Rate()
  call void @TFLuna2_SaveSettings()
  call void @TFLuna2_System_Reset()
  %11 = call i32 @eFile_Init()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void @diskError(ptr noundef @.str.28, i32 noundef 0)
  br label %14

14:                                               ; preds = %13, %0
  %15 = call i32 @eFile_Mount()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @diskError(ptr noundef @.str.29, i32 noundef 0)
  br label %18

18:                                               ; preds = %17, %14
  call void @OS_Launch(i32 noundef 160000)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_Init() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_MailBox_Init() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ADC0_Init(i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_InitSemaphore(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_AddS2Task(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_AddPA28Task(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_AddPeriodicThread(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_timerproc() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @Interpreter() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @LPF_Init7(i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @TFLuna2_Init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @TFLuna2_Format_Standard_mm() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @TFLuna2_Frame_Rate() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @TFLuna2_SaveSettings() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @TFLuna2_System_Reset() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_Init() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_Mount() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_Launch(i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @Random32() #1 {
  %1 = load i32, ptr @M, align 4
  %2 = mul i32 1664525, %1
  %3 = add i32 %2, 1013904223
  store i32 %3, ptr @M, align 4
  %4 = load i32, ptr @M, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @Random5() #1 {
  %1 = call i32 @Random32()
  %2 = lshr i32 %1, 27
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @Random7() #1 {
  %1 = call i32 @Random32()
  %2 = lshr i32 %1, 25
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden zeroext i8 @Random8() #1 {
  %1 = call i32 @Random32()
  %2 = lshr i32 %1, 24
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @TestDisk() #1 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = call i32 @ST7735_DrawString(i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef @.str.30, i16 noundef signext -1)
  call void @UART_OutString(ptr noundef @.str.31)
  %6 = call zeroext i8 @eDisk_Init(i8 noundef zeroext 0)
  store i8 %6, ptr %1, align 1
  %7 = load i8, ptr %1, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i8, ptr %1, align 1
  %11 = zext i8 %10 to i32
  call void @diskError(ptr noundef @.str.32, i32 noundef %11)
  br label %12

12:                                               ; preds = %9, %0
  call void @UART_OutString(ptr noundef @.str.33)
  store i32 1, ptr @M, align 4
  store i32 0, ptr %2, align 4
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, ptr %2, align 4
  %15 = icmp ult i32 %14, 100
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  store i32 0, ptr %3, align 4
  br label %17

17:                                               ; preds = %24, %16
  %18 = load i32, ptr %3, align 4
  %19 = icmp slt i32 %18, 512
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = call zeroext i8 @Random8()
  %22 = load i32, ptr %3, align 4
  %23 = getelementptr inbounds [512 x i8], ptr @buffer, i32 0, i32 %22
  store i8 %21, ptr %23, align 1
  br label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %3, align 4
  br label %17

27:                                               ; preds = %17
  store volatile i32 256, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 34), align 4
  %28 = load i32, ptr %2, align 4
  %29 = call zeroext i8 @eDisk_WriteBlock(ptr noundef @buffer, i32 noundef %28)
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, ptr %2, align 4
  call void @diskError(ptr noundef @.str.34, i32 noundef %32)
  br label %33

33:                                               ; preds = %31, %27
  store volatile i32 256, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 36), align 4
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %2, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %2, align 4
  br label %13

37:                                               ; preds = %13
  call void @UART_OutString(ptr noundef @.str.35)
  store i32 1, ptr @M, align 4
  store i32 0, ptr %2, align 4
  br label %38

38:                                               ; preds = %76, %37
  %39 = load i32, ptr %2, align 4
  %40 = icmp ult i32 %39, 100
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  store volatile i32 512, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 34), align 4
  %42 = load i32, ptr %2, align 4
  %43 = call zeroext i8 @eDisk_ReadBlock(ptr noundef @buffer, i32 noundef %42)
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, ptr %2, align 4
  call void @diskError(ptr noundef @.str.36, i32 noundef %46)
  br label %47

47:                                               ; preds = %45, %41
  store volatile i32 512, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 36), align 4
  store i32 0, ptr %3, align 4
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, ptr %3, align 4
  %50 = icmp slt i32 %49, 512
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = call zeroext i8 @Random8()
  store i8 %52, ptr %4, align 1
  %53 = load i32, ptr %3, align 4
  %54 = getelementptr inbounds [512 x i8], ptr @buffer, i32 0, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, ptr %4, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 255, %58
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %51
  call void @UART_OutString(ptr noundef @.str.37)
  %62 = load i32, ptr %2, align 4
  call void @UART_OutUDec(i32 noundef %62)
  call void @UART_OutString(ptr noundef @.str.38)
  %63 = load i32, ptr %3, align 4
  call void @UART_OutUDec(i32 noundef %63)
  call void @UART_OutString(ptr noundef @.str.39)
  %64 = load i8, ptr %4, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 255, %65
  call void @UART_OutUDec(i32 noundef %66)
  call void @UART_OutString(ptr noundef @.str.40)
  %67 = load i32, ptr %3, align 4
  %68 = getelementptr inbounds [512 x i8], ptr @buffer, i32 0, i32 %67
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  call void @UART_OutUDec(i32 noundef %70)
  call void @UART_OutString(ptr noundef @.str.8)
  call void @OS_Kill()
  br label %71

71:                                               ; preds = %61, %51
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %3, align 4
  br label %48

75:                                               ; preds = %48
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %2, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %2, align 4
  br label %38

79:                                               ; preds = %38
  call void @UART_OutString(ptr noundef @.str.41)
  %80 = call i32 @ST7735_DrawString(i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef @.str.42, i16 noundef signext 2047)
  store i32 0, ptr @Running, align 4
  call void @OS_Kill()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @eDisk_Init(i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @eDisk_WriteBlock(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @eDisk_ReadBlock(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @StartTestDisk() #1 {
  %1 = load i32, ptr @Running, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  store i32 1, ptr @Running, align 4
  %4 = call i32 @OS_AddThread(ptr noundef @TestDisk, i32 noundef 128, i32 noundef 1)
  %5 = load i32, ptr @NumCreated, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr @NumCreated, align 4
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @Testmain1() #1 {
  call void @OS_Init()
  call void @Logic_Init()
  store i32 1, ptr @Running, align 4
  %1 = call i32 @OS_AddPeriodicThread(ptr noundef @disk_timerproc, i32 noundef 1, i32 noundef 0)
  %2 = call i32 @OS_AddS2Task(ptr noundef @StartTestDisk, i32 noundef 1)
  %3 = call i32 @OS_AddPA28Task(ptr noundef @StartTestDisk, i32 noundef 1)
  store i32 0, ptr @NumCreated, align 4
  %4 = call i32 @OS_AddThread(ptr noundef @TestDisk, i32 noundef 128, i32 noundef 1)
  %5 = load i32, ptr @NumCreated, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr @NumCreated, align 4
  %7 = call i32 @OS_AddThread(ptr noundef @VirusDetector, i32 noundef 128, i32 noundef 3)
  %8 = load i32, ptr @NumCreated, align 4
  %9 = add i32 %8, %7
  store i32 %9, ptr @NumCreated, align 4
  call void @OS_Launch(i32 noundef 160000)
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @ThreadCS() #1 {
  br label %1

1:                                                ; preds = %0, %1
  store volatile i32 256, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  br label %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @TestmainCS() #1 {
  call void @Logic_Init()
  call void @OS_Init()
  store i32 0, ptr @NumCreated, align 4
  %1 = call i32 @OS_AddThread(ptr noundef @ThreadCS, i32 noundef 128, i32 noundef 0)
  %2 = load i32, ptr @NumCreated, align 4
  %3 = add i32 %2, %1
  store i32 %3, ptr @NumCreated, align 4
  call void @OS_Launch(i32 noundef 8000)
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @PrintDirectory() #1 {
  %1 = alloca ptr, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  call void @UART_OutString(ptr noundef @.str.8)
  %5 = call i32 @eFile_DOpen(ptr noundef @.str.43)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @diskError(ptr noundef @.str.44, i32 noundef 0)
  br label %8

8:                                                ; preds = %7, %0
  br label %9

9:                                                ; preds = %13, %8
  %10 = call i32 @eFile_DirNext(ptr noundef %1, ptr noundef %2)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  call void @UART_OutString(ptr noundef @.str.45)
  %14 = load ptr, ptr %1, align 4
  call void @UART_OutString(ptr noundef %14)
  call void @UART_OutString(ptr noundef @.str.46)
  call void @UART_OutString(ptr noundef @.str.47)
  %15 = load i32, ptr %2, align 4
  call void @UART_OutUDec(i32 noundef %15)
  call void @UART_OutString(ptr noundef @.str.8)
  %16 = load i32, ptr %4, align 4
  %17 = load i32, ptr %2, align 4
  %18 = add i32 %16, %17
  store i32 %18, ptr %4, align 4
  %19 = load i32, ptr %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %3, align 4
  br label %9

21:                                               ; preds = %9
  call void @UART_OutString(ptr noundef @.str.48)
  %22 = load i32, ptr %3, align 4
  call void @UART_OutUDec(i32 noundef %22)
  call void @UART_OutString(ptr noundef @.str.8)
  call void @UART_OutString(ptr noundef @.str.49)
  %23 = load i32, ptr %4, align 4
  call void @UART_OutUDec(i32 noundef %23)
  call void @UART_OutString(ptr noundef @.str.8)
  %24 = call i32 @eFile_DClose()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @diskError(ptr noundef @.str.50, i32 noundef 0)
  br label %27

27:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_DOpen(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_DirNext(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_DClose() #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @TestFile() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @UART_OutString(ptr noundef @.str.51)
  %4 = call i32 @ST7735_DrawString(i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef @.str.52, i16 noundef signext -1)
  %5 = call i32 @eFile_Init()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @diskError(ptr noundef @.str.28, i32 noundef 0)
  br label %8

8:                                                ; preds = %7, %0
  %9 = call i32 @eFile_Format()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @diskError(ptr noundef @.str.53, i32 noundef 0)
  br label %12

12:                                               ; preds = %11, %8
  %13 = call i32 @eFile_Mount()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @diskError(ptr noundef @.str.29, i32 noundef 0)
  br label %16

16:                                               ; preds = %15, %12
  call void @PrintDirectory()
  %17 = call i32 @eFile_Create(ptr noundef @.str.54)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @diskError(ptr noundef @.str.55, i32 noundef 0)
  br label %20

20:                                               ; preds = %19, %16
  %21 = call i32 @eFile_WOpen(ptr noundef @.str.54)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @diskError(ptr noundef @.str.4, i32 noundef 0)
  br label %24

24:                                               ; preds = %23, %20
  store i32 5, ptr %1, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, ptr %1, align 4
  %27 = icmp sle i32 %26, 15
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = call i32 @eFile_WriteString(ptr noundef @.str.56)
  %30 = call i32 @OS_MsTime()
  %31 = udiv i32 %30, 10
  %32 = call i32 @eFile_WriteUFix2(i32 noundef %31)
  %33 = call i32 @eFile_Write(i8 noundef zeroext 9)
  %34 = load i32, ptr %1, align 4
  %35 = call i32 @eFile_WriteUDec(i32 noundef %34)
  %36 = call i32 @eFile_Write(i8 noundef zeroext 9)
  %37 = load i32, ptr %1, align 4
  %38 = sub nsw i32 %37, 10
  %39 = call i32 @eFile_WriteSFix2(i32 noundef %38)
  %40 = call i32 @eFile_Write(i8 noundef zeroext 9)
  %41 = load i32, ptr %1, align 4
  %42 = sub nsw i32 %41, 10
  %43 = call i32 @eFile_WriteSDec(i32 noundef %42)
  %44 = call i32 @eFile_WriteString(ptr noundef @.str.8)
  call void @OS_Sleep(i32 noundef 10)
  br label %45

45:                                               ; preds = %28
  %46 = load i32, ptr %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %1, align 4
  br label %25

48:                                               ; preds = %25
  %49 = call i32 @eFile_WClose()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @diskError(ptr noundef @.str.7, i32 noundef 0)
  br label %52

52:                                               ; preds = %51, %48
  call void @PrintDirectory()
  %53 = call i32 @eFile_ROpen(ptr noundef @.str.54)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @diskError(ptr noundef @.str.57, i32 noundef 0)
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %64, %56
  %58 = call i32 @eFile_ReadNext(ptr noundef %2)
  store i32 %58, ptr %3, align 4
  %59 = load i32, ptr %3, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i8, ptr %2, align 1
  call void @UART_OutChar(i8 noundef zeroext %62)
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %3, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %57, label %67

67:                                               ; preds = %64
  %68 = call i32 @eFile_RClose()
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call void @diskError(ptr noundef @.str.58, i32 noundef 0)
  br label %71

71:                                               ; preds = %70, %67
  %72 = call i32 @eFile_Delete(ptr noundef @.str.54)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void @diskError(ptr noundef @.str.59, i32 noundef 0)
  br label %75

75:                                               ; preds = %74, %71
  call void @PrintDirectory()
  %76 = call i32 @eFile_Unmount()
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @diskError(ptr noundef @.str.60, i32 noundef 0)
  br label %79

79:                                               ; preds = %78, %75
  call void @UART_OutString(ptr noundef @.str.61)
  %80 = call i32 @ST7735_DrawString(i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef @.str.62, i16 noundef signext 2047)
  store i32 0, ptr @Running, align 4
  call void @OS_Kill()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_Format() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_WriteSFix2(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_WriteSDec(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @OS_Sleep(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_ROpen(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_ReadNext(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_RClose() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_Delete(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_Unmount() #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @StartFileTest() #1 {
  %1 = load i32, ptr @Running, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  store i32 1, ptr @Running, align 4
  %4 = call i32 @OS_AddThread(ptr noundef @TestFile, i32 noundef 128, i32 noundef 1)
  %5 = load i32, ptr @NumCreated, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr @NumCreated, align 4
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @Testmain2() #1 {
  call void @OS_Init()
  call void @Logic_Init()
  store i32 1, ptr @Running, align 4
  %1 = call i32 @OS_AddPeriodicThread(ptr noundef @disk_timerproc, i32 noundef 1, i32 noundef 0)
  %2 = call i32 @OS_AddS2Task(ptr noundef @StartFileTest, i32 noundef 1)
  %3 = call i32 @OS_AddPA28Task(ptr noundef @StartFileTest, i32 noundef 1)
  store i32 0, ptr @NumCreated, align 4
  %4 = call i32 @OS_AddThread(ptr noundef @TestFile, i32 noundef 128, i32 noundef 1)
  %5 = load i32, ptr @NumCreated, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr @NumCreated, align 4
  %7 = call i32 @OS_AddThread(ptr noundef @VirusDetector, i32 noundef 128, i32 noundef 3)
  %8 = load i32, ptr @NumCreated, align 4
  %9 = add i32 %8, %7
  store i32 %9, ptr @NumCreated, align 4
  call void @OS_Launch(i32 noundef 160000)
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @PrintFile3(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  call void @OS_bWait(ptr noundef @LCDFree)
  %5 = load ptr, ptr %2, align 4
  %6 = call i32 @eFile_ROpen(ptr noundef %5)
  br label %7

7:                                                ; preds = %14, %1
  %8 = call i32 @eFile_ReadNext(ptr noundef %4)
  store i32 %8, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i8, ptr %4, align 1
  call void @UART_OutChar(i8 noundef zeroext %12)
  br label %13

13:                                               ; preds = %11, %7
  br label %14

14:                                               ; preds = %13
  %15 = load i32, ptr %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %7, label %17

17:                                               ; preds = %14
  %18 = call i32 @eFile_RClose()
  call void @OS_bSignal(ptr noundef @LCDFree)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @Dump3(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store volatile i32 256, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 34), align 4
  call void @OS_bWait(ptr noundef @LCDFree)
  %5 = call i32 @eFile_WriteString(ptr noundef @.str.63)
  %6 = call i32 @OS_MsTime()
  %7 = udiv i32 %6, 10
  %8 = call i32 @eFile_WriteUFix2(i32 noundef %7)
  %9 = call i32 @eFile_Write(i8 noundef zeroext 9)
  %10 = load i32, ptr %3, align 4
  %11 = call i32 @eFile_WriteUDec(i32 noundef %10)
  %12 = call i32 @eFile_Write(i8 noundef zeroext 9)
  %13 = load i32, ptr %4, align 4
  %14 = call i32 @eFile_WriteSFix2(i32 noundef %13)
  %15 = call i32 @eFile_Write(i8 noundef zeroext 9)
  %16 = load i32, ptr %4, align 4
  %17 = call i32 @eFile_WriteSDec(i32 noundef %16)
  %18 = call i32 @eFile_WriteString(ptr noundef @.str.8)
  call void @OS_bSignal(ptr noundef @LCDFree)
  store volatile i32 256, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 36), align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @TestFile3() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  call void @UART_OutString(ptr noundef @.str.64)
  %3 = load i32, ptr @Run3, align 4
  call void @ST7735_Message(i32 noundef 0, i32 noundef 1, ptr noundef @.str.65, i32 noundef %3)
  call void @PrintDirectory()
  call void @OS_bWait(ptr noundef @LCDFree)
  %4 = call i32 @eFile_Create(ptr noundef @FileName)
  %5 = call i32 @eFile_WOpen(ptr noundef @FileName)
  call void @OS_bSignal(ptr noundef @LCDFree)
  store i32 -5, ptr %1, align 4
  br label %6

6:                                                ; preds = %14, %0
  %7 = load i32, ptr %1, align 4
  %8 = icmp sle i32 %7, 5
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i32, ptr @Run3, align 4
  %11 = load i32, ptr %1, align 4
  call void @Dump3(i32 noundef %10, i32 noundef %11)
  %12 = load i32, ptr @Run3, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr @Run3, align 4
  call void @OS_Sleep(i32 noundef 10)
  br label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %1, align 4
  br label %6

17:                                               ; preds = %6
  call void @OS_bWait(ptr noundef @LCDFree)
  %18 = call i32 @eFile_WClose()
  call void @OS_bSignal(ptr noundef @LCDFree)
  call void @PrintDirectory()
  call void @PrintFile3(ptr noundef @FileName)
  call void @UART_OutString(ptr noundef @.str.66)
  %19 = load i32, ptr @Run3, align 4
  call void @UART_OutUDec(i32 noundef %19)
  call void @UART_OutString(ptr noundef @.str.8)
  %20 = load i32, ptr @Run3, align 4
  call void @ST7735_Message(i32 noundef 0, i32 noundef 2, ptr noundef @.str.67, i32 noundef %20)
  store i32 0, ptr @Running, align 4
  %21 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @FileName, i32 0, i32 5), align 1
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, 1
  %24 = and i32 %23, 247
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr getelementptr inbounds ([8 x i8], ptr @FileName, i32 0, i32 5), align 1
  call void @OS_Kill()
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @Chaos3() #1 {
  %1 = alloca i32, align 4
  call void @ST7735_Message(i32 noundef 1, i32 noundef 0, ptr noundef @.str.68, i32 noundef 3)
  br label %2

2:                                                ; preds = %0, %13
  store i32 1, ptr %1, align 4
  br label %3

3:                                                ; preds = %10, %2
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 5
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = call zeroext i8 @Random8()
  %9 = zext i8 %8 to i32
  call void @ST7735_Message(i32 noundef 1, i32 noundef %7, ptr noundef @.str.69, i32 noundef %9)
  br label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %1, align 4
  br label %3

13:                                               ; preds = %3
  call void @OS_Sleep(i32 noundef 100)
  br label %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @StartFileTest3() #1 {
  %1 = load i32, ptr @Running, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  store i32 1, ptr @Running, align 4
  %4 = call i32 @OS_AddThread(ptr noundef @TestFile3, i32 noundef 128, i32 noundef 1)
  %5 = load i32, ptr @NumCreated, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr @NumCreated, align 4
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @Testmain3() #1 {
  call void @OS_Init()
  call void @Logic_Init()
  store i32 1, ptr @Running, align 4
  call void @OS_InitSemaphore(ptr noundef @LCDFree, i32 noundef 1)
  %1 = call i32 @OS_AddPeriodicThread(ptr noundef @disk_timerproc, i32 noundef 1, i32 noundef 0)
  %2 = call i32 @OS_AddS2Task(ptr noundef @StartFileTest3, i32 noundef 1)
  %3 = call i32 @OS_AddPA28Task(ptr noundef @StartFileTest3, i32 noundef 1)
  store i32 0, ptr @NumCreated, align 4
  %4 = call i32 @OS_AddThread(ptr noundef @TestFile3, i32 noundef 128, i32 noundef 1)
  %5 = load i32, ptr @NumCreated, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr @NumCreated, align 4
  %7 = call i32 @OS_AddThread(ptr noundef @Chaos3, i32 noundef 128, i32 noundef 1)
  %8 = load i32, ptr @NumCreated, align 4
  %9 = add i32 %8, %7
  store i32 %9, ptr @NumCreated, align 4
  %10 = call i32 @OS_AddThread(ptr noundef @VirusDetector, i32 noundef 128, i32 noundef 3)
  %11 = load i32, ptr @NumCreated, align 4
  %12 = add i32 %11, %10
  store i32 %12, ptr @NumCreated, align 4
  %13 = call i32 @eFile_Init()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  call void @diskError(ptr noundef @.str.28, i32 noundef 0)
  br label %16

16:                                               ; preds = %15, %0
  %17 = call i32 @eFile_Format()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @diskError(ptr noundef @.str.53, i32 noundef 0)
  br label %20

20:                                               ; preds = %19, %16
  %21 = call i32 @eFile_Mount()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @diskError(ptr noundef @.str.29, i32 noundef 0)
  br label %24

24:                                               ; preds = %23, %20
  call void @OS_Launch(i32 noundef 160000)
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @main() #1 {
  call void asm sideeffect "cpsid i", "~{memory}"() #3, !srcloc !3
  call void @Clock_Init80MHz(i32 noundef 0)
  call void @LaunchPad_Init()
  %1 = call i32 @realmain()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @Clock_Init80MHz(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @LaunchPad_Init() #2

attributes #0 = { "def-uninit-in-bss" }
attributes #1 = { noinline nounwind null_pointer_is_valid optnone "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 2, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 1}
!2 = !{!"TI clang version 18.1.8 (ssh://git@bitbucket.itg.ti.com/code/llvm-project.git 70682bd812ead6ffebc7bdb2ac7ebe8b48b587c0)"}
!3 = !{i64 320771}
