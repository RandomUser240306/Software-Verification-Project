; ModuleID = 'C:/Users/krish/Desktop/ECE 382C/Software-Verification-Project/code\test.c'
source_filename = "C:/Users/krish/Desktop/ECE 382C/Software-Verification-Project/code\\test.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv6m-ti-none-eabi"

@m = common hidden global i32 0, align 4 #0

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @task1() #1 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @m, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, ptr @m, align 4
  store i32 %5, ptr %1, align 4
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden void @task2() #1 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @m, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, ptr @m, align 4
  store i32 %5, ptr %1, align 4
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid optnone
define hidden i32 @main() #1 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = call i32 @OS_AddThread(ptr noundef @task1, i32 noundef 128, i32 noundef 1)
  %3 = call i32 @OS_AddThread(ptr noundef @task2, i32 noundef 128, i32 noundef 1)
  br label %4

4:                                                ; preds = %0, %4
  br label %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @OS_AddThread(...) #2

attributes #0 = { "def-uninit-in-bss" }
attributes #1 = { noinline nounwind null_pointer_is_valid optnone "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 2, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 1}
!2 = !{!"TI clang version 18.1.8 (ssh://git@bitbucket.itg.ti.com/code/llvm-project.git 70682bd812ead6ffebc7bdb2ac7ebe8b48b587c0)"}
