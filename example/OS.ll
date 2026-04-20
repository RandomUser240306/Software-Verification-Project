; ModuleID = 'OS.c'
source_filename = "OS.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-ti-none-eabi"

%struct.Aperiodic_Task = type { ptr, i32 }
%struct.Sema4 = type { i32, ptr, ptr }
%struct.TCB = type { ptr, ptr, ptr, i8, i8, i32, i8, i8, i8, i16 }
%struct.Periodic_Task = type { ptr, i32, i32, i32 }
%struct.SysTick_Type = type { i32, i32, i32, i32 }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }
%struct.GPIO_Regs = type { [256 x i32], i32, i32, [15 x i32], i32, i32, [237 x i32], %struct.GPIO_GPRCM_Regs, [510 x i32], i32, i32, i32, i32, %struct.GPIO_CPU_INT_Regs, i32, %struct.GPIO_GEN_EVENT0_Regs, i32, %struct.GPIO_GEN_EVENT1_Regs, [13 x i32], i32, [6 x i32], i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [24 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [7 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [24 x i32], i32, [3 x i32], i32, [3 x i32], i32, [23 x i32], i32, i32, [62 x i32], i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.GPIO_GPRCM_Regs = type { i32, i32, [3 x i32], i32 }
%struct.GPIO_CPU_INT_Regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GPIO_GEN_EVENT0_Regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GPIO_GEN_EVENT1_Regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.IOMUX_SECCFG_Regs = type { i32, [251 x i32] }
%struct.Program = type { i32, i32, i32, i32, [8 x i8] }
%struct.GPTIMER_Regs = type { [256 x i32], i32, i32, [15 x i32], i32, i32, [237 x i32], %struct.GPTIMER_GPRCM_Regs, [506 x i32], i32, i32, i32, [3 x i32], i32, i32, %struct.GPTIMER_CPU_INT_Regs, i32, %struct.GPTIMER_GEN_EVENT0_Regs, i32, %struct.GPTIMER_GEN_EVENT1_Regs, [13 x i32], i32, [6 x i32], i32, %struct.GPTIMER_COMMONREGS_Regs, [438 x i32], %struct.GPTIMER_COUNTERREGS_Regs }
%struct.GPTIMER_GPRCM_Regs = type { i32, i32, [3 x i32], i32 }
%struct.GPTIMER_CPU_INT_Regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GPTIMER_GEN_EVENT0_Regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GPTIMER_GEN_EVENT1_Regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GPTIMER_COMMONREGS_Regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GPTIMER_COUNTERREGS_Regs = type { i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [4 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [4 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.NVIC_Type = type { [1 x i32], [31 x i32], [1 x i32], [31 x i32], [1 x i32], [31 x i32], [1 x i32], [31 x i32], [64 x i32], [8 x i32] }

@threadCount = hidden global i8 0, align 1
@threadsSleeping = hidden global i8 0, align 1
@s1Task = hidden global %struct.Aperiodic_Task zeroinitializer, align 4
@s2Task = hidden global %struct.Aperiodic_Task zeroinitializer, align 4
@pa28Task = hidden global %struct.Aperiodic_Task zeroinitializer, align 4
@TimeMs = common hidden global i32 0, align 4 #0
@LCDFree = external dso_local global %struct.Sema4, align 4
@ActiveList = common hidden global [4 x ptr] zeroinitializer, align 4 #0
@SleepingList = common hidden global ptr null, align 4 #0
@periodicTaskCount = common hidden global i8 0, align 1 #0
@RunPt = common hidden global ptr null, align 4 #0
@Threads = common hidden global [10 x %struct.TCB] zeroinitializer, align 4 #0
@Stack = common hidden global [10 x [256 x i32]] zeroinitializer, align 4 #0
@PeriodicTasks = common hidden global [4 x %struct.Periodic_Task] zeroinitializer, align 4 #0
@NextThreadPt = common hidden global ptr null, align 4 #0
@headIndex = common hidden global i16 0, align 2 #0
@tailIndex = common hidden global i16 0, align 2 #0
@fifoFreeElements = common hidden global %struct.Sema4 zeroinitializer, align 4 #0
@fifoFullElements = common hidden global %struct.Sema4 zeroinitializer, align 4 #0
@fifoFree = common hidden global %struct.Sema4 zeroinitializer, align 4 #0
@OS_Fifo = common hidden global [64 x i32] zeroinitializer, align 4 #0
@mail = common hidden global i32 0, align 4 #0
@mailboxFree = common hidden global %struct.Sema4 zeroinitializer, align 4 #0
@dataValid = common hidden global %struct.Sema4 zeroinitializer, align 4 #0

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_ClearMsTime() #1 {
  store i32 0, ptr @TimeMs, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_MsTime() #1 {
  %1 = load i32, ptr @TimeMs, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @SysTick_IntArm(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store volatile i32 0, ptr inttoptr (i32 -536813552 to ptr), align 4
  %5 = load i32, ptr %3, align 4
  %6 = sub i32 %5, 1
  store volatile i32 %6, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 1), align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7, i32 1), align 4
  %8 = and i32 %7, 1073741823
  %9 = load i32, ptr %4, align 4
  %10 = shl i32 %9, 30
  %11 = or i32 %8, %10
  store volatile i32 %11, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4
  store volatile i32 7, ptr inttoptr (i32 -536813552 to ptr), align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @SysTick_Handler() #1 {
  store volatile i32 4194304, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  store volatile i32 4194304, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  call void @OS_Suspend()
  store volatile i32 4194304, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_Suspend() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @StartCritical()
  store i32 %3, ptr %1, align 4
  %4 = load i8, ptr @threadCount, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @HardFault_Handler()
  br label %9

9:                                                ; preds = %7, %0
  %10 = load ptr, ptr @RunPt, align 4
  %11 = getelementptr inbounds %struct.TCB, ptr %10, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load ptr, ptr @RunPt, align 4
  %17 = getelementptr inbounds %struct.TCB, ptr %16, i32 0, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load ptr, ptr @RunPt, align 4
  %23 = getelementptr inbounds %struct.TCB, ptr %22, i32 0, i32 4
  store i8 1, ptr %23, align 1
  br label %24

24:                                               ; preds = %21, %15, %9
  store i32 0, ptr %2, align 4
  br label %25

25:                                               ; preds = %61, %24
  %26 = load i32, ptr %2, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %64

28:                                               ; preds = %25
  %29 = load i32, ptr %2, align 4
  %30 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ne ptr %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load i32, ptr %2, align 4
  %35 = load ptr, ptr @RunPt, align 4
  %36 = getelementptr inbounds %struct.TCB, ptr %35, i32 0, i32 6
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load ptr, ptr @RunPt, align 4
  %42 = getelementptr inbounds %struct.TCB, ptr %41, i32 0, i32 8
  %43 = load i8, ptr %42, align 2
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load ptr, ptr @RunPt, align 4
  %48 = getelementptr inbounds %struct.TCB, ptr %47, i32 0, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load ptr, ptr @RunPt, align 4
  %54 = getelementptr inbounds %struct.TCB, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  store ptr %55, ptr @NextThreadPt, align 4
  br label %64

56:                                               ; preds = %46, %40, %33
  %57 = load i32, ptr %2, align 4
  %58 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %57
  %59 = load ptr, ptr %58, align 4
  store ptr %59, ptr @NextThreadPt, align 4
  br label %64

60:                                               ; preds = %28
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %2, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %2, align 4
  br label %25, !llvm.loop !3

64:                                               ; preds = %56, %52, %25
  %65 = load ptr, ptr @NextThreadPt, align 4
  %66 = getelementptr inbounds %struct.TCB, ptr %65, i32 0, i32 4
  store i8 0, ptr %66, align 1
  store volatile i32 268435456, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 1), align 4
  %67 = load i32, ptr %1, align 4
  call void @EndCritical(i32 noundef %67)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_LockScheduler() #1 {
  %1 = alloca i32, align 4
  %2 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4
  store i32 %2, ptr %1, align 4
  store volatile i32 5, ptr inttoptr (i32 -536813552 to ptr), align 4
  %3 = load i32, ptr %1, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_UnLockScheduler(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  store volatile i32 %3, ptr inttoptr (i32 -536813552 to ptr), align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_Init() #1 {
  call void @OSDisableInterrupts()
  call void @TimerG7_IntArm(i16 noundef zeroext 8000, i32 noundef 10, i32 noundef 2)
  call void @TimerG12_Init()
  call void @UART_Init(i32 noundef 1)
  call void @ST7735_InitR(i8 noundef zeroext 3)
  call void @ST7735_FillScreen(i16 noundef zeroext 0)
  call void @ST7735_SetCursor(i32 noundef 0, i32 noundef 0)
  call void @OS_InitSemaphore(ptr noundef @LCDFree, i32 noundef 1)
  store ptr null, ptr @ActiveList, align 4
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @ActiveList, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @ActiveList, i32 0, i32 2), align 4
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @ActiveList, i32 0, i32 3), align 4
  store ptr null, ptr @SleepingList, align 4
  store i8 0, ptr @periodicTaskCount, align 1
  store volatile i32 262273, ptr getelementptr inbounds (%struct.IOMUX_SECCFG_Regs, ptr inttoptr (i32 1078099968 to ptr), i32 0, i32 1, i32 2), align 4
  store volatile i32 129, ptr getelementptr inbounds (%struct.IOMUX_SECCFG_Regs, ptr inttoptr (i32 1078099968 to ptr), i32 0, i32 1, i32 59), align 4
  store volatile i32 129, ptr getelementptr inbounds (%struct.IOMUX_SECCFG_Regs, ptr inttoptr (i32 1078099968 to ptr), i32 0, i32 1, i32 56), align 4
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 40), align 4
  %2 = or i32 %1, 134217728
  store volatile i32 %2, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 40), align 4
  call void @OS_InitSemaphore(ptr noundef @LCDFree, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @OSDisableInterrupts() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @TimerG7_IntArm(i16 noundef zeroext, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @TimerG12_Init() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @UART_Init(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ST7735_InitR(i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ST7735_FillScreen(i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ST7735_SetCursor(i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_InitSemaphore(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.Sema4, ptr %6, i32 0, i32 0
  store i32 %5, ptr %7, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.Sema4, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.Sema4, ptr %10, i32 0, i32 2
  store ptr null, ptr %11, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_Wait(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  %4 = call i32 @StartCritical()
  store i32 %4, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.Sema4, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.Sema4, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %91

13:                                               ; preds = %1
  %14 = load ptr, ptr @RunPt, align 4
  %15 = getelementptr inbounds %struct.TCB, ptr %14, i32 0, i32 4
  store i8 3, ptr %15, align 1
  %16 = load ptr, ptr @RunPt, align 4
  %17 = getelementptr inbounds %struct.TCB, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr @RunPt, align 4
  %20 = getelementptr inbounds %struct.TCB, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.TCB, ptr %21, i32 0, i32 1
  store ptr %18, ptr %22, align 4
  %23 = load ptr, ptr @RunPt, align 4
  %24 = getelementptr inbounds %struct.TCB, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr @RunPt, align 4
  %27 = getelementptr inbounds %struct.TCB, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.TCB, ptr %28, i32 0, i32 2
  store ptr %25, ptr %29, align 4
  %30 = load ptr, ptr @RunPt, align 4
  %31 = getelementptr inbounds %struct.TCB, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr @RunPt, align 4
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %13
  %36 = load ptr, ptr @RunPt, align 4
  %37 = getelementptr inbounds %struct.TCB, ptr %36, i32 0, i32 6
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %39
  store ptr null, ptr %40, align 4
  br label %60

41:                                               ; preds = %13
  %42 = load ptr, ptr @RunPt, align 4
  %43 = getelementptr inbounds %struct.TCB, ptr %42, i32 0, i32 6
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr @RunPt, align 4
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load ptr, ptr @RunPt, align 4
  %52 = getelementptr inbounds %struct.TCB, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr @RunPt, align 4
  %55 = getelementptr inbounds %struct.TCB, ptr %54, i32 0, i32 6
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %57
  store ptr %53, ptr %58, align 4
  br label %59

59:                                               ; preds = %50, %41
  br label %60

60:                                               ; preds = %59, %35
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr inbounds %struct.Sema4, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load ptr, ptr @RunPt, align 4
  %67 = load ptr, ptr %2, align 4
  %68 = getelementptr inbounds %struct.Sema4, ptr %67, i32 0, i32 2
  store ptr %66, ptr %68, align 4
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr inbounds %struct.Sema4, ptr %69, i32 0, i32 1
  store ptr %66, ptr %70, align 4
  %71 = load ptr, ptr %2, align 4
  %72 = getelementptr inbounds %struct.Sema4, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.TCB, ptr %73, i32 0, i32 1
  store ptr null, ptr %74, align 4
  br label %89

75:                                               ; preds = %60
  %76 = load ptr, ptr %2, align 4
  %77 = getelementptr inbounds %struct.Sema4, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr @RunPt, align 4
  %80 = getelementptr inbounds %struct.TCB, ptr %79, i32 0, i32 2
  store ptr %78, ptr %80, align 4
  %81 = load ptr, ptr @RunPt, align 4
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr inbounds %struct.Sema4, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.TCB, ptr %84, i32 0, i32 1
  store ptr %81, ptr %85, align 4
  %86 = load ptr, ptr @RunPt, align 4
  %87 = load ptr, ptr %2, align 4
  %88 = getelementptr inbounds %struct.Sema4, ptr %87, i32 0, i32 2
  store ptr %86, ptr %88, align 4
  br label %89

89:                                               ; preds = %75, %65
  %90 = load i32, ptr %3, align 4
  call void @EndCritical(i32 noundef %90)
  call void @OS_Suspend()
  br label %93

91:                                               ; preds = %1
  %92 = load i32, ptr %3, align 4
  call void @EndCritical(i32 noundef %92)
  br label %93

93:                                               ; preds = %91, %89
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @StartCritical() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @EndCritical(i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_Signal(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %2, align 4
  %6 = call i32 @StartCritical()
  store i32 %6, ptr %3, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.Sema4, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.Sema4, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %90

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.Sema4, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %4, align 4
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.Sema4, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.Sema4, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.Sema4, ptr %27, i32 0, i32 2
  store ptr null, ptr %28, align 4
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.Sema4, ptr %29, i32 0, i32 1
  store ptr null, ptr %30, align 4
  br label %39

31:                                               ; preds = %15
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.Sema4, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.TCB, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr inbounds %struct.Sema4, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  br label %39

39:                                               ; preds = %31, %26
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds %struct.TCB, ptr %40, i32 0, i32 6
  %42 = load i8, ptr %41, align 4
  store i8 %42, ptr %5, align 1
  %43 = load i8, ptr %5, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load ptr, ptr %4, align 4
  %50 = load i8, ptr %5, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %51
  store ptr %49, ptr %52, align 4
  %53 = load ptr, ptr %4, align 4
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr inbounds %struct.TCB, ptr %54, i32 0, i32 2
  store ptr %53, ptr %55, align 4
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr inbounds %struct.TCB, ptr %56, i32 0, i32 1
  store ptr %53, ptr %57, align 4
  br label %87

58:                                               ; preds = %39
  %59 = load i8, ptr %5, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.TCB, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %4, align 4
  %66 = getelementptr inbounds %struct.TCB, ptr %65, i32 0, i32 2
  store ptr %64, ptr %66, align 4
  %67 = load i8, ptr %5, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %68
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr inbounds %struct.TCB, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  %73 = load ptr, ptr %4, align 4
  %74 = load i8, ptr %5, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.TCB, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.TCB, ptr %79, i32 0, i32 1
  store ptr %73, ptr %80, align 4
  %81 = load ptr, ptr %4, align 4
  %82 = load i8, ptr %5, align 1
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.TCB, ptr %85, i32 0, i32 2
  store ptr %81, ptr %86, align 4
  br label %87

87:                                               ; preds = %58, %48
  %88 = load ptr, ptr %4, align 4
  %89 = getelementptr inbounds %struct.TCB, ptr %88, i32 0, i32 4
  store i8 1, ptr %89, align 1
  br label %90

90:                                               ; preds = %87, %1
  %91 = load i32, ptr %3, align 4
  call void @EndCritical(i32 noundef %91)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_bWait(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @OS_Wait(ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_bSignal(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = load ptr, ptr %2, align 4
  call void @OS_Signal(ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_AddProcessThread(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_AddThread(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TCB, align 4
  store ptr %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %12 = call i32 @StartCritical()
  store i32 %12, ptr %8, align 4
  %13 = load i8, ptr @threadCount, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sge i32 %14, 10
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, ptr %8, align 4
  call void @EndCritical(i32 noundef %17)
  store i32 0, ptr %4, align 4
  br label %161

18:                                               ; preds = %3
  store i32 0, ptr %9, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, ptr %9, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, ptr %9, align 4
  %24 = getelementptr inbounds [10 x %struct.TCB], ptr @Threads, i32 0, i32 %23
  %25 = getelementptr inbounds %struct.TCB, ptr %24, i32 0, i32 8
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %34

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %9, align 4
  br label %19, !llvm.loop !5

34:                                               ; preds = %29, %19
  %35 = load i32, ptr %7, align 4
  %36 = icmp ugt i32 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %40

38:                                               ; preds = %34
  %39 = load i32, ptr %7, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 3, %37 ], [ %39, %38 ]
  store i32 %41, ptr %10, align 4
  %42 = load i32, ptr %9, align 4
  %43 = getelementptr inbounds [10 x %struct.TCB], ptr @Threads, i32 0, i32 %42
  %44 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 0
  %45 = load i32, ptr %9, align 4
  %46 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %45
  %47 = getelementptr inbounds [256 x i32], ptr %46, i32 0, i32 244
  store ptr %47, ptr %44, align 4
  %48 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 1
  %49 = load i32, ptr %9, align 4
  %50 = getelementptr inbounds [10 x %struct.TCB], ptr @Threads, i32 0, i32 %49
  store ptr %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 2
  %52 = load i32, ptr %9, align 4
  %53 = getelementptr inbounds [10 x %struct.TCB], ptr @Threads, i32 0, i32 %52
  store ptr %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 3
  %55 = load i32, ptr %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = trunc i32 %56 to i8
  store i8 %57, ptr %54, align 4
  %58 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 4
  store i8 1, ptr %58, align 1
  %59 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 5
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 6
  %61 = load i32, ptr %10, align 4
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 7
  store i8 0, ptr %63, align 1
  %64 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 8
  store i8 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 9
  %66 = load i32, ptr %6, align 4
  %67 = trunc i32 %66 to i16
  store i16 %67, ptr %65, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %43, ptr align 4 %11, i32 28, i1 false)
  %68 = load i32, ptr %9, align 4
  %69 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %68
  %70 = load i32, ptr %6, align 4
  %71 = sub i32 256, %70
  %72 = sub i32 %71, 1
  %73 = getelementptr inbounds [256 x i32], ptr %69, i32 0, i32 %72
  store i32 -559038737, ptr %73, align 4
  %74 = load i32, ptr %9, align 4
  %75 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %74
  %76 = getelementptr inbounds [256 x i32], ptr %75, i32 0, i32 244
  store i32 0, ptr %76, align 4
  %77 = load i32, ptr %9, align 4
  %78 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %77
  %79 = getelementptr inbounds [256 x i32], ptr %78, i32 0, i32 245
  store i32 0, ptr %79, align 4
  %80 = load i32, ptr %9, align 4
  %81 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %80
  %82 = getelementptr inbounds [256 x i32], ptr %81, i32 0, i32 246
  store i32 0, ptr %82, align 4
  %83 = load i32, ptr %9, align 4
  %84 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %83
  %85 = getelementptr inbounds [256 x i32], ptr %84, i32 0, i32 247
  store i32 0, ptr %85, align 4
  %86 = load i32, ptr %9, align 4
  %87 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %86
  %88 = getelementptr inbounds [256 x i32], ptr %87, i32 0, i32 248
  store i32 0, ptr %88, align 4
  %89 = load i32, ptr %9, align 4
  %90 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %89
  %91 = getelementptr inbounds [256 x i32], ptr %90, i32 0, i32 249
  store i32 0, ptr %91, align 4
  %92 = load i32, ptr %9, align 4
  %93 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %92
  %94 = getelementptr inbounds [256 x i32], ptr %93, i32 0, i32 250
  store i32 0, ptr %94, align 4
  %95 = load i32, ptr %9, align 4
  %96 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %95
  %97 = getelementptr inbounds [256 x i32], ptr %96, i32 0, i32 250
  store i32 0, ptr %97, align 4
  %98 = load i32, ptr %9, align 4
  %99 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %98
  %100 = getelementptr inbounds [256 x i32], ptr %99, i32 0, i32 252
  store i32 0, ptr %100, align 4
  %101 = load i32, ptr %9, align 4
  %102 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %101
  %103 = getelementptr inbounds [256 x i32], ptr %102, i32 0, i32 253
  store i32 0, ptr %103, align 4
  %104 = load ptr, ptr %5, align 4
  %105 = ptrtoint ptr %104 to i32
  %106 = load i32, ptr %9, align 4
  %107 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %106
  %108 = getelementptr inbounds [256 x i32], ptr %107, i32 0, i32 254
  store i32 %105, ptr %108, align 4
  %109 = load i32, ptr %9, align 4
  %110 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %109
  %111 = getelementptr inbounds [256 x i32], ptr %110, i32 0, i32 255
  store i32 16777216, ptr %111, align 4
  %112 = load i32, ptr %10, align 4
  %113 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %112
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %40
  %117 = load i32, ptr %9, align 4
  %118 = getelementptr inbounds [10 x %struct.TCB], ptr @Threads, i32 0, i32 %117
  %119 = load i32, ptr %10, align 4
  %120 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %119
  store ptr %118, ptr %120, align 4
  br label %150

121:                                              ; preds = %40
  %122 = load i32, ptr %10, align 4
  %123 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %122
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.TCB, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = load i32, ptr %9, align 4
  %128 = getelementptr inbounds [10 x %struct.TCB], ptr @Threads, i32 0, i32 %127
  %129 = getelementptr inbounds %struct.TCB, ptr %128, i32 0, i32 2
  store ptr %126, ptr %129, align 4
  %130 = load i32, ptr %10, align 4
  %131 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %130
  %132 = load ptr, ptr %131, align 4
  %133 = load i32, ptr %9, align 4
  %134 = getelementptr inbounds [10 x %struct.TCB], ptr @Threads, i32 0, i32 %133
  %135 = getelementptr inbounds %struct.TCB, ptr %134, i32 0, i32 1
  store ptr %132, ptr %135, align 4
  %136 = load i32, ptr %9, align 4
  %137 = getelementptr inbounds [10 x %struct.TCB], ptr @Threads, i32 0, i32 %136
  %138 = load i32, ptr %10, align 4
  %139 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %138
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.TCB, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.TCB, ptr %142, i32 0, i32 1
  store ptr %137, ptr %143, align 4
  %144 = load i32, ptr %9, align 4
  %145 = getelementptr inbounds [10 x %struct.TCB], ptr @Threads, i32 0, i32 %144
  %146 = load i32, ptr %10, align 4
  %147 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %146
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.TCB, ptr %148, i32 0, i32 2
  store ptr %145, ptr %149, align 4
  br label %150

150:                                              ; preds = %121, %116
  %151 = load i8, ptr @threadCount, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, ptr %9, align 4
  %156 = getelementptr inbounds [10 x %struct.TCB], ptr @Threads, i32 0, i32 %155
  store ptr %156, ptr @RunPt, align 4
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i8, ptr @threadCount, align 1
  %159 = add i8 %158, 1
  store i8 %159, ptr @threadCount, align 1
  %160 = load i32, ptr %8, align 4
  call void @EndCritical(i32 noundef %160)
  store i32 1, ptr %4, align 4
  br label %161

161:                                              ; preds = %157, %16
  %162 = load i32, ptr %4, align 4
  ret i32 %162
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_AddProcess(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store ptr %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = load i32, ptr %7, align 4
  %11 = load i32, ptr %8, align 4
  %12 = call i32 @OS_AddThread(ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_LoadProgram(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Program, align 4
  store ptr %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  call void @OS_bWait(ptr noundef @LCDFree)
  %6 = load ptr, ptr %3, align 4
  %7 = call i32 @eFile_ROpen(ptr noundef %6)
  call void @llvm.memset.p0.i32(ptr align 4 %5, i8 0, i32 24, i1 false)
  %8 = getelementptr inbounds %struct.Program, ptr %5, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.Program, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.Program, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.Program, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @eFile_RClose()
  call void @OS_bSignal(ptr noundef @LCDFree)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_ROpen(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eFile_RClose() #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_Id() #1 {
  %1 = load ptr, ptr @RunPt, align 4
  %2 = getelementptr inbounds %struct.TCB, ptr %1, i32 0, i32 3
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @lcm2(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  store i32 %10, ptr %5, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  store i32 %12, ptr %5, align 4
  br label %13

13:                                               ; preds = %11, %9
  br label %14

14:                                               ; preds = %26, %13
  %15 = load i32, ptr %5, align 4
  %16 = load i32, ptr %3, align 4
  %17 = urem i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %5, align 4
  %21 = load i32, ptr %4, align 4
  %22 = urem i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ true, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, ptr %5, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %5, align 4
  br label %14, !llvm.loop !6

29:                                               ; preds = %24
  %30 = load i32, ptr %5, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @lcm3(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  %8 = load i32, ptr %5, align 4
  %9 = call i32 @lcm2(i32 noundef %7, i32 noundef %8)
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @lcm2(i32 noundef %9, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @lcm4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @lcm2(i32 noundef %9, i32 noundef %10)
  %12 = load i32, ptr %7, align 4
  %13 = load i32, ptr %8, align 4
  %14 = call i32 @lcm2(i32 noundef %12, i32 noundef %13)
  %15 = call i32 @lcm2(i32 noundef %11, i32 noundef %14)
  ret i32 %15
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @lcm5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = load i32, ptr %6, align 4
  %12 = load i32, ptr %7, align 4
  %13 = call i32 @lcm2(i32 noundef %11, i32 noundef %12)
  %14 = load i32, ptr %8, align 4
  %15 = load i32, ptr %9, align 4
  %16 = load i32, ptr %10, align 4
  %17 = call i32 @lcm3(i32 noundef %14, i32 noundef %15, i32 noundef %16)
  %18 = call i32 @lcm2(i32 noundef %13, i32 noundef %17)
  ret i32 %18
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_AddPeriodicThread(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %8 = load i8, ptr @periodicTaskCount, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sge i32 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %42

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 4
  %14 = load i8, ptr @periodicTaskCount, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds [4 x %struct.Periodic_Task], ptr @PeriodicTasks, i32 0, i32 %15
  %17 = getelementptr inbounds %struct.Periodic_Task, ptr %16, i32 0, i32 0
  store ptr %13, ptr %17, align 4
  %18 = load i32, ptr %6, align 4
  %19 = load i8, ptr @periodicTaskCount, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds [4 x %struct.Periodic_Task], ptr @PeriodicTasks, i32 0, i32 %20
  %22 = getelementptr inbounds %struct.Periodic_Task, ptr %21, i32 0, i32 1
  store i32 %18, ptr %22, align 4
  %23 = load i32, ptr %7, align 4
  %24 = load i8, ptr @periodicTaskCount, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds [4 x %struct.Periodic_Task], ptr @PeriodicTasks, i32 0, i32 %25
  %27 = getelementptr inbounds %struct.Periodic_Task, ptr %26, i32 0, i32 3
  store i32 %23, ptr %27, align 4
  %28 = load i8, ptr @periodicTaskCount, align 1
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, 2
  %31 = load i8, ptr @periodicTaskCount, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [4 x %struct.Periodic_Task], ptr @PeriodicTasks, i32 0, i32 %32
  %34 = getelementptr inbounds %struct.Periodic_Task, ptr %33, i32 0, i32 2
  store i32 %30, ptr %34, align 4
  %35 = load i8, ptr @periodicTaskCount, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %12
  call void @TimerG0_IntArm(i16 noundef zeroext 100, i32 noundef 40, i32 noundef 0)
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i8, ptr @periodicTaskCount, align 1
  %41 = add i8 %40, 1
  store i8 %41, ptr @periodicTaskCount, align 1
  store i32 1, ptr %4, align 4
  br label %42

42:                                               ; preds = %39, %11
  %43 = load i32, ptr %4, align 4
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @TimerG0_IntArm(i16 noundef zeroext, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @TIMG7_IRQHandler() #1 {
  %1 = alloca ptr, align 4
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.GPTIMER_Regs, ptr inttoptr (i32 1082564608 to ptr), i32 0, i32 15), align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %140

6:                                                ; preds = %0
  store volatile i32 67108864, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  store volatile i32 67108864, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  %7 = load i32, ptr @TimeMs, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr @TimeMs, align 4
  %9 = load ptr, ptr @SleepingList, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store volatile i32 67108864, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  br label %140

12:                                               ; preds = %6
  call void @OSDisableInterrupts()
  %13 = load ptr, ptr @SleepingList, align 4
  store ptr %13, ptr %1, align 4
  br label %14

14:                                               ; preds = %137, %12
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.TCB, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %16, align 4
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr inbounds %struct.TCB, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %2, align 4
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.TCB, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %1, align 4
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store ptr null, ptr %2, align 4
  br label %28

28:                                               ; preds = %27, %14
  %29 = load ptr, ptr %1, align 4
  %30 = getelementptr inbounds %struct.TCB, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %122

33:                                               ; preds = %28
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr inbounds %struct.TCB, ptr %34, i32 0, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %122

39:                                               ; preds = %33
  %40 = load ptr, ptr %1, align 4
  %41 = getelementptr inbounds %struct.TCB, ptr %40, i32 0, i32 4
  store i8 1, ptr %41, align 1
  %42 = load ptr, ptr @SleepingList, align 4
  %43 = load ptr, ptr %1, align 4
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load ptr, ptr %1, align 4
  %47 = getelementptr inbounds %struct.TCB, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr @SleepingList, align 4
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store ptr null, ptr @SleepingList, align 4
  br label %56

52:                                               ; preds = %45
  %53 = load ptr, ptr %1, align 4
  %54 = getelementptr inbounds %struct.TCB, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  store ptr %55, ptr @SleepingList, align 4
  br label %56

56:                                               ; preds = %52, %51
  br label %57

57:                                               ; preds = %56, %39
  %58 = load ptr, ptr %1, align 4
  %59 = getelementptr inbounds %struct.TCB, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %1, align 4
  %62 = getelementptr inbounds %struct.TCB, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.TCB, ptr %63, i32 0, i32 2
  store ptr %60, ptr %64, align 4
  %65 = load ptr, ptr %1, align 4
  %66 = getelementptr inbounds %struct.TCB, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %1, align 4
  %69 = getelementptr inbounds %struct.TCB, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.TCB, ptr %70, i32 0, i32 1
  store ptr %67, ptr %71, align 4
  %72 = load ptr, ptr %1, align 4
  %73 = getelementptr inbounds %struct.TCB, ptr %72, i32 0, i32 6
  %74 = load i8, ptr %73, align 4
  store i8 %74, ptr %3, align 1
  %75 = load i8, ptr %3, align 1
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %76
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %57
  %81 = load ptr, ptr %1, align 4
  %82 = load i8, ptr %3, align 1
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %83
  store ptr %81, ptr %84, align 4
  %85 = load ptr, ptr %1, align 4
  %86 = load ptr, ptr %1, align 4
  %87 = getelementptr inbounds %struct.TCB, ptr %86, i32 0, i32 1
  store ptr %85, ptr %87, align 4
  %88 = load ptr, ptr %1, align 4
  %89 = getelementptr inbounds %struct.TCB, ptr %88, i32 0, i32 2
  store ptr %85, ptr %89, align 4
  br label %119

90:                                               ; preds = %57
  %91 = load i8, ptr %3, align 1
  %92 = zext i8 %91 to i32
  %93 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %92
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.TCB, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %1, align 4
  %98 = getelementptr inbounds %struct.TCB, ptr %97, i32 0, i32 2
  store ptr %96, ptr %98, align 4
  %99 = load i8, ptr %3, align 1
  %100 = zext i8 %99 to i32
  %101 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %1, align 4
  %104 = getelementptr inbounds %struct.TCB, ptr %103, i32 0, i32 1
  store ptr %102, ptr %104, align 4
  %105 = load ptr, ptr %1, align 4
  %106 = load i8, ptr %3, align 1
  %107 = zext i8 %106 to i32
  %108 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %107
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.TCB, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.TCB, ptr %111, i32 0, i32 1
  store ptr %105, ptr %112, align 4
  %113 = load ptr, ptr %1, align 4
  %114 = load i8, ptr %3, align 1
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %115
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.TCB, ptr %117, i32 0, i32 2
  store ptr %113, ptr %118, align 4
  br label %119

119:                                              ; preds = %90, %80
  %120 = load i8, ptr @threadsSleeping, align 1
  %121 = add i8 %120, -1
  store i8 %121, ptr @threadsSleeping, align 1
  br label %122

122:                                              ; preds = %119, %33, %28
  %123 = load ptr, ptr %2, align 4
  store ptr %123, ptr %1, align 4
  %124 = load ptr, ptr %2, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %139

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127
  %129 = load ptr, ptr %1, align 4
  %130 = getelementptr inbounds %struct.TCB, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr @SleepingList, align 4
  %133 = icmp ne ptr %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load ptr, ptr @SleepingList, align 4
  %136 = icmp ne ptr %135, null
  br label %137

137:                                              ; preds = %134, %128
  %138 = phi i1 [ false, %128 ], [ %136, %134 ]
  br i1 %138, label %14, label %139, !llvm.loop !7

139:                                              ; preds = %137, %126
  call void @OSEnableInterrupts()
  store volatile i32 67108864, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 38), align 4
  br label %140

140:                                              ; preds = %11, %139, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @OSEnableInterrupts() #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @TIMG0_IRQHandler() #1 {
  %1 = alloca ptr, align 4
  %2 = alloca i32, align 4
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.GPTIMER_Regs, ptr inttoptr (i32 1074282496 to ptr), i32 0, i32 15), align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %56

5:                                                ; preds = %0
  store volatile i32 134217728, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  store volatile i32 134217728, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  store ptr null, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %6

6:                                                ; preds = %39, %5
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds [4 x %struct.Periodic_Task], ptr @PeriodicTasks, i32 0, i32 %7
  %9 = getelementptr inbounds %struct.Periodic_Task, ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %6
  %13 = load i32, ptr %2, align 4
  %14 = getelementptr inbounds [4 x %struct.Periodic_Task], ptr @PeriodicTasks, i32 0, i32 %13
  %15 = getelementptr inbounds %struct.Periodic_Task, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 4
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr inbounds [4 x %struct.Periodic_Task], ptr @PeriodicTasks, i32 0, i32 %18
  %20 = getelementptr inbounds %struct.Periodic_Task, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %12
  %24 = load ptr, ptr %1, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %2, align 4
  %28 = getelementptr inbounds [4 x %struct.Periodic_Task], ptr @PeriodicTasks, i32 0, i32 %27
  %29 = getelementptr inbounds %struct.Periodic_Task, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %1, align 4
  %32 = getelementptr inbounds %struct.Periodic_Task, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26, %23
  %36 = load i32, ptr %2, align 4
  %37 = getelementptr inbounds [4 x %struct.Periodic_Task], ptr @PeriodicTasks, i32 0, i32 %36
  store ptr %37, ptr %1, align 4
  br label %38

38:                                               ; preds = %35, %26, %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %2, align 4
  br label %6, !llvm.loop !8

42:                                               ; preds = %6
  %43 = load ptr, ptr %1, align 4
  %44 = icmp ne ptr %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load ptr, ptr %1, align 4
  %47 = getelementptr inbounds %struct.Periodic_Task, ptr %46, i32 0, i32 0
  %48 = load ptr, ptr %47, align 4
  call void %48()
  %49 = load ptr, ptr %1, align 4
  %50 = getelementptr inbounds %struct.Periodic_Task, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, 10
  %53 = load ptr, ptr %1, align 4
  %54 = getelementptr inbounds %struct.Periodic_Task, ptr %53, i32 0, i32 2
  store i32 %52, ptr %54, align 4
  br label %55

55:                                               ; preds = %45, %42
  store volatile i32 134217728, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 38), align 4
  br label %56

56:                                               ; preds = %55, %0
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @TIMG8_IRQHandler() #1 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.GPTIMER_Regs, ptr inttoptr (i32 1074331648 to ptr), i32 0, i32 15), align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @GROUP1_IRQHandler() #1 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 4), align 4
  %2 = and i32 %1, 262144
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  store volatile i32 262144, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 10), align 4
  %5 = load ptr, ptr @s1Task, align 4
  call void %5()
  br label %6

6:                                                ; preds = %4, %0
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 4), align 4
  %8 = and i32 %7, 268435456
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  store volatile i32 268435456, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 10), align 4
  %11 = load ptr, ptr @pa28Task, align 4
  call void %11()
  br label %12

12:                                               ; preds = %10, %6
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 13, i32 4), align 4
  %14 = and i32 %13, 2097152
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  store volatile i32 2097152, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 13, i32 10), align 4
  %17 = load ptr, ptr @s2Task, align 4
  call void %17()
  br label %18

18:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_AddS1Task(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 2), align 4
  %10 = and i32 %9, -262145
  store volatile i32 %10, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 2), align 4
  store i32 1, ptr %3, align 4
  br label %19

11:                                               ; preds = %2
  store volatile i32 16, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 59), align 4
  store volatile i32 262144, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 10), align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 2), align 4
  %13 = or i32 %12, 262144
  store volatile i32 %13, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 2), align 4
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), align 4
  %15 = and i32 %14, -49153
  %16 = or i32 %15, 16384
  store volatile i32 %16, ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), align 4
  store volatile i32 2, ptr inttoptr (i32 -536813312 to ptr), align 4
  %17 = load ptr, ptr %4, align 4
  store ptr %17, ptr @s1Task, align 4
  %18 = load i32, ptr %5, align 4
  store i32 %18, ptr getelementptr inbounds (%struct.Aperiodic_Task, ptr @s1Task, i32 0, i32 1), align 4
  store i32 0, ptr %3, align 4
  br label %19

19:                                               ; preds = %11, %8
  %20 = load i32, ptr %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_AddS2Task(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 13, i32 2), align 4
  %10 = and i32 %9, -2097153
  store volatile i32 %10, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 13, i32 2), align 4
  store i32 1, ptr %3, align 4
  br label %19

11:                                               ; preds = %2
  store volatile i32 2048, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 59), align 4
  store volatile i32 2097152, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 13, i32 10), align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 13, i32 2), align 4
  %13 = or i32 %12, 2097152
  store volatile i32 %13, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074405376 to ptr), i32 0, i32 13, i32 2), align 4
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), align 4
  %15 = and i32 %14, -49153
  %16 = or i32 %15, 16384
  store volatile i32 %16, ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), align 4
  store volatile i32 2, ptr inttoptr (i32 -536813312 to ptr), align 4
  %17 = load ptr, ptr %4, align 4
  store ptr %17, ptr @s2Task, align 4
  %18 = load i32, ptr %5, align 4
  store i32 %18, ptr getelementptr inbounds (%struct.Aperiodic_Task, ptr @s2Task, i32 0, i32 1), align 4
  store i32 1, ptr %3, align 4
  br label %19

19:                                               ; preds = %11, %8
  %20 = load i32, ptr %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_AddPA28Task(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 2), align 4
  %10 = and i32 %9, -268435457
  store volatile i32 %10, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 2), align 4
  store i32 1, ptr %3, align 4
  br label %20

11:                                               ; preds = %2
  store volatile i32 33554432, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 59), align 4
  store volatile i32 268435456, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 10), align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 2), align 4
  %13 = or i32 %12, 268435456
  store volatile i32 %13, ptr getelementptr inbounds (%struct.GPIO_Regs, ptr inttoptr (i32 1074397184 to ptr), i32 0, i32 13, i32 2), align 4
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), align 4
  %15 = and i32 %14, -49153
  %16 = or i32 %15, 16384
  store volatile i32 %16, ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), align 4
  store volatile i32 2, ptr inttoptr (i32 -536813312 to ptr), align 4
  %17 = load ptr, ptr %4, align 4
  store ptr %17, ptr @pa28Task, align 4
  %18 = load i32, ptr %5, align 4
  store i32 %18, ptr getelementptr inbounds (%struct.Aperiodic_Task, ptr @pa28Task, i32 0, i32 1), align 4
  br label %19

19:                                               ; preds = %11
  store i32 1, ptr %3, align 4
  br label %20

20:                                               ; preds = %19, %8
  %21 = load i32, ptr %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_Sleep(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, 0
  br i1 %5, label %6, label %88

6:                                                ; preds = %1
  %7 = call i32 @StartCritical()
  store i32 %7, ptr %3, align 4
  %8 = load i32, ptr %2, align 4
  %9 = load ptr, ptr @RunPt, align 4
  %10 = getelementptr inbounds %struct.TCB, ptr %9, i32 0, i32 5
  store i32 %8, ptr %10, align 4
  %11 = load ptr, ptr @RunPt, align 4
  %12 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 4
  store i8 2, ptr %12, align 1
  %13 = load ptr, ptr @RunPt, align 4
  %14 = getelementptr inbounds %struct.TCB, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr @RunPt, align 4
  %17 = getelementptr inbounds %struct.TCB, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.TCB, ptr %18, i32 0, i32 1
  store ptr %15, ptr %19, align 4
  %20 = load ptr, ptr @RunPt, align 4
  %21 = getelementptr inbounds %struct.TCB, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr @RunPt, align 4
  %24 = getelementptr inbounds %struct.TCB, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.TCB, ptr %25, i32 0, i32 2
  store ptr %22, ptr %26, align 4
  %27 = load ptr, ptr @RunPt, align 4
  %28 = getelementptr inbounds %struct.TCB, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr @RunPt, align 4
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %6
  %33 = load ptr, ptr @RunPt, align 4
  %34 = getelementptr inbounds %struct.TCB, ptr %33, i32 0, i32 6
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %36
  store ptr null, ptr %37, align 4
  br label %57

38:                                               ; preds = %6
  %39 = load ptr, ptr @RunPt, align 4
  %40 = getelementptr inbounds %struct.TCB, ptr %39, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr @RunPt, align 4
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load ptr, ptr @RunPt, align 4
  %49 = getelementptr inbounds %struct.TCB, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr @RunPt, align 4
  %52 = getelementptr inbounds %struct.TCB, ptr %51, i32 0, i32 6
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %54
  store ptr %50, ptr %55, align 4
  br label %56

56:                                               ; preds = %47, %38
  br label %57

57:                                               ; preds = %56, %32
  %58 = load ptr, ptr @SleepingList, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load ptr, ptr @RunPt, align 4
  %62 = load ptr, ptr @RunPt, align 4
  %63 = getelementptr inbounds %struct.TCB, ptr %62, i32 0, i32 2
  store ptr %61, ptr %63, align 4
  %64 = load ptr, ptr @RunPt, align 4
  %65 = getelementptr inbounds %struct.TCB, ptr %64, i32 0, i32 1
  store ptr %61, ptr %65, align 4
  br label %83

66:                                               ; preds = %57
  %67 = load ptr, ptr @SleepingList, align 4
  %68 = getelementptr inbounds %struct.TCB, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr @RunPt, align 4
  %71 = getelementptr inbounds %struct.TCB, ptr %70, i32 0, i32 2
  store ptr %69, ptr %71, align 4
  %72 = load ptr, ptr @SleepingList, align 4
  %73 = load ptr, ptr @RunPt, align 4
  %74 = getelementptr inbounds %struct.TCB, ptr %73, i32 0, i32 1
  store ptr %72, ptr %74, align 4
  %75 = load ptr, ptr @RunPt, align 4
  %76 = load ptr, ptr @SleepingList, align 4
  %77 = getelementptr inbounds %struct.TCB, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.TCB, ptr %78, i32 0, i32 1
  store ptr %75, ptr %79, align 4
  %80 = load ptr, ptr @RunPt, align 4
  %81 = load ptr, ptr @SleepingList, align 4
  %82 = getelementptr inbounds %struct.TCB, ptr %81, i32 0, i32 2
  store ptr %80, ptr %82, align 4
  br label %83

83:                                               ; preds = %66, %60
  %84 = load ptr, ptr @RunPt, align 4
  store ptr %84, ptr @SleepingList, align 4
  %85 = load i8, ptr @threadsSleeping, align 1
  %86 = add i8 %85, 1
  store i8 %86, ptr @threadsSleeping, align 1
  %87 = load i32, ptr %3, align 4
  call void @EndCritical(i32 noundef %87)
  br label %88

88:                                               ; preds = %83, %1
  call void @OS_Suspend()
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_Kill() #1 {
  %1 = alloca i32, align 4
  %2 = call i32 @StartCritical()
  store i32 %2, ptr %1, align 4
  %3 = load ptr, ptr @RunPt, align 4
  %4 = getelementptr inbounds %struct.TCB, ptr %3, i32 0, i32 8
  store i8 0, ptr %4, align 2
  %5 = load ptr, ptr @RunPt, align 4
  %6 = getelementptr inbounds %struct.TCB, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = sub nsw i32 %8, 1
  %10 = getelementptr inbounds [10 x [256 x i32]], ptr @Stack, i32 0, i32 %9
  %11 = load ptr, ptr @RunPt, align 4
  %12 = getelementptr inbounds %struct.TCB, ptr %11, i32 0, i32 9
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = sub nsw i32 256, %14
  %16 = sub nsw i32 %15, 1
  %17 = getelementptr inbounds [256 x i32], ptr %10, i32 0, i32 %16
  store i32 0, ptr %17, align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4
  %18 = load ptr, ptr @RunPt, align 4
  %19 = getelementptr inbounds %struct.TCB, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr @RunPt, align 4
  %22 = getelementptr inbounds %struct.TCB, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.TCB, ptr %23, i32 0, i32 1
  store ptr %20, ptr %24, align 4
  %25 = load ptr, ptr @RunPt, align 4
  %26 = getelementptr inbounds %struct.TCB, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr @RunPt, align 4
  %29 = getelementptr inbounds %struct.TCB, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.TCB, ptr %30, i32 0, i32 2
  store ptr %27, ptr %31, align 4
  %32 = load ptr, ptr @RunPt, align 4
  %33 = getelementptr inbounds %struct.TCB, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr @RunPt, align 4
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %0
  %38 = load ptr, ptr @RunPt, align 4
  %39 = getelementptr inbounds %struct.TCB, ptr %38, i32 0, i32 6
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %41
  store ptr null, ptr %42, align 4
  br label %62

43:                                               ; preds = %0
  %44 = load ptr, ptr @RunPt, align 4
  %45 = getelementptr inbounds %struct.TCB, ptr %44, i32 0, i32 6
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr @RunPt, align 4
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load ptr, ptr @RunPt, align 4
  %54 = getelementptr inbounds %struct.TCB, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr @RunPt, align 4
  %57 = getelementptr inbounds %struct.TCB, ptr %56, i32 0, i32 6
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds [4 x ptr], ptr @ActiveList, i32 0, i32 %59
  store ptr %55, ptr %60, align 4
  br label %61

61:                                               ; preds = %52, %43
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i8, ptr @threadCount, align 1
  %64 = add i8 %63, -1
  store i8 %64, ptr @threadCount, align 1
  %65 = load i32, ptr %1, align 4
  call void @EndCritical(i32 noundef %65)
  call void @OS_Suspend()
  br label %66

66:                                               ; preds = %66, %62
  br label %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HardFault_Handler(...) #2

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_Fifo_Init(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i16 0, ptr @headIndex, align 2
  store i16 -1, ptr @tailIndex, align 2
  call void @OS_InitSemaphore(ptr noundef @fifoFreeElements, i32 noundef 64)
  call void @OS_InitSemaphore(ptr noundef @fifoFullElements, i32 noundef 0)
  call void @OS_InitSemaphore(ptr noundef @fifoFree, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_Fifo_Put(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = load i32, ptr @fifoFreeElements, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %19

7:                                                ; preds = %1
  %8 = load i32, ptr @fifoFreeElements, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr @fifoFreeElements, align 4
  %10 = load i16, ptr @tailIndex, align 2
  %11 = zext i16 %10 to i32
  %12 = add nsw i32 %11, 1
  %13 = srem i32 %12, 64
  %14 = trunc i32 %13 to i16
  store i16 %14, ptr @tailIndex, align 2
  %15 = load i32, ptr %3, align 4
  %16 = load i16, ptr @tailIndex, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds [64 x i32], ptr @OS_Fifo, i32 0, i32 %17
  store i32 %15, ptr %18, align 4
  call void @OS_Signal(ptr noundef @fifoFullElements)
  store i32 1, ptr %2, align 4
  br label %19

19:                                               ; preds = %7, %6
  %20 = load i32, ptr %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_Fifo_Get() #1 {
  %1 = alloca i32, align 4
  call void @OS_Wait(ptr noundef @fifoFullElements)
  %2 = load i16, ptr @headIndex, align 2
  %3 = zext i16 %2 to i32
  %4 = getelementptr inbounds [64 x i32], ptr @OS_Fifo, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %1, align 4
  %6 = load i16, ptr @headIndex, align 2
  %7 = zext i16 %6 to i32
  %8 = add nsw i32 %7, 1
  %9 = srem i32 %8, 64
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr @headIndex, align 2
  call void @OS_Signal(ptr noundef @fifoFreeElements)
  %11 = load i32, ptr %1, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_Fifo_Size() #1 {
  %1 = load i32, ptr @fifoFullElements, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_MailBox_Init() #1 {
  store i32 0, ptr @mail, align 4
  call void @OS_InitSemaphore(ptr noundef @mailboxFree, i32 noundef 1)
  call void @OS_InitSemaphore(ptr noundef @dataValid, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_MailBox_Send(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @OS_bWait(ptr noundef @mailboxFree)
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr @mail, align 4
  call void @OS_bSignal(ptr noundef @dataValid)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_MailBox_Recv() #1 {
  call void @OS_bWait(ptr noundef @dataValid)
  call void @OS_bSignal(ptr noundef @mailboxFree)
  %1 = load i32, ptr @mail, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_Time() #1 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.GPTIMER_Regs, ptr inttoptr (i32 1082589184 to ptr), i32 0, i32 26), align 4
  %2 = sub i32 0, %1
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @OS_TimeDifference(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sub i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @OS_Launch(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  call void @SysTick_IntArm(i32 noundef %3, i32 noundef 2)
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7, i32 1), align 4
  %5 = and i32 %4, -12582913
  %6 = or i32 %5, 12582912
  store volatile i32 %6, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7, i32 1), align 4
  %7 = load ptr, ptr @RunPt, align 4
  %8 = getelementptr inbounds %struct.TCB, ptr %7, i32 0, i32 4
  store i8 0, ptr %8, align 1
  call void @StartOS()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @StartOS() #2

attributes #0 = { "def-uninit-in-bss" }
attributes #1 = { noinline nounwind null_pointer_is_valid optnone "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+thumb-mode,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+thumb-mode,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 2, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 1}
!2 = !{!"TI clang version 18.1.8 (ssh://git@bitbucket.itg.ti.com/code/llvm-project.git 70682bd812ead6ffebc7bdb2ac7ebe8b48b587c0)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
