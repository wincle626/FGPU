; ModuleID = 'sharpen.cl'
target datalayout = "E-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "mips-unknown-uknown"

; Function Attrs: nounwind
define void @sharpen5x5(i32* %in, i32* nocapture %out) #0 {
entry:
  %0 = tail call i32 asm sideeffect "lid $0, $1", "=r,I,~{$1}"(i32 1) #1, !srcloc !7
  %1 = tail call i32 asm sideeffect "wgoff $0, $1", "=r,I,~{$1}"(i32 1) #1, !srcloc !8
  %add.i = add nsw i32 %1, %0
  %2 = tail call i32 asm sideeffect "lid $0, $1", "=r,I,~{$1}"(i32 0) #1, !srcloc !7
  %3 = tail call i32 asm sideeffect "wgoff $0, $1", "=r,I,~{$1}"(i32 0) #1, !srcloc !8
  %add.i.722 = add nsw i32 %3, %2
  %4 = tail call i32 asm sideeffect "size $0, $1", "=r,I,~{$1}"(i32 0) #1, !srcloc !9
  %cmp = icmp ult i32 %add.i, 2
  %conv = zext i1 %cmp to i32
  %cmp3 = icmp ult i32 %add.i.722, 2
  %conv4 = zext i1 %cmp3 to i32
  %or = or i32 %conv4, %conv
  %sub = add i32 %4, -3
  %cmp5 = icmp ugt i32 %add.i, %sub
  %conv6 = zext i1 %cmp5 to i32
  %or7 = or i32 %or, %conv6
  %cmp9 = icmp ugt i32 %add.i.722, %sub
  %conv10 = zext i1 %cmp9 to i32
  %or11 = or i32 %or7, %conv10
  %tobool = icmp eq i32 %or11, 0
  br i1 %tobool, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sub13 = add i32 %add.i, -2
  %mul = mul i32 %4, %sub13
  %add = add i32 %mul, %add.i.722
  %sub14 = add i32 %add, -2
  %arrayidx = getelementptr inbounds i32, i32* %in, i32 %sub14
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !10
  %and = and i32 %5, 255
  %and17 = and i32 %5, 65280
  %and20 = and i32 %5, 16711680
  %sub26 = add i32 %add, -1
  %arrayidx27 = getelementptr inbounds i32, i32* %in, i32 %sub26
  %6 = load i32, i32* %arrayidx27, align 4, !tbaa !10
  %and28 = and i32 %6, 255
  %and31 = and i32 %6, 65280
  %and34 = and i32 %6, 16711680
  %arrayidx41 = getelementptr inbounds i32, i32* %in, i32 %add
  %7 = load i32, i32* %arrayidx41, align 4, !tbaa !10
  %and42 = and i32 %7, 255
  %and45 = and i32 %7, 65280
  %and48 = and i32 %7, 16711680
  %add54 = add i32 %add, 1
  %arrayidx55 = getelementptr inbounds i32, i32* %in, i32 %add54
  %8 = load i32, i32* %arrayidx55, align 4, !tbaa !10
  %and56 = and i32 %8, 255
  %and59 = and i32 %8, 65280
  %and62 = and i32 %8, 16711680
  %add68 = add i32 %add, 2
  %arrayidx69 = getelementptr inbounds i32, i32* %in, i32 %add68
  %9 = load i32, i32* %arrayidx69, align 4, !tbaa !10
  %and70 = and i32 %9, 255
  %and73 = and i32 %9, 65280
  %and76 = and i32 %9, 16711680
  %sub79 = add i32 %add.i, -1
  %mul80 = mul i32 %4, %sub79
  %add81 = add i32 %mul80, %add.i.722
  %sub82 = add i32 %add81, -2
  %arrayidx83 = getelementptr inbounds i32, i32* %in, i32 %sub82
  %10 = load i32, i32* %arrayidx83, align 4, !tbaa !10
  %and84 = and i32 %10, 255
  %and87 = and i32 %10, 65280
  %and90 = and i32 %10, 16711680
  %sub96 = add i32 %add81, -1
  %arrayidx97 = getelementptr inbounds i32, i32* %in, i32 %sub96
  %11 = load i32, i32* %arrayidx97, align 4, !tbaa !10
  %and98 = shl i32 %11, 1
  %mul99 = and i32 %and98, 510
  %sum = add nuw nsw i32 %and28, %and
  %sum723 = add nuw nsw i32 %sum, %and42
  %sum724 = add nuw nsw i32 %sum723, %and56
  %sum725 = add nuw nsw i32 %sum724, %and70
  %sum726 = add nuw nsw i32 %sum725, %and84
  %add100 = sub nsw i32 %mul99, %sum726
  %mul102 = and i32 %and98, 130560
  %sum727 = add nuw nsw i32 %and31, %and17
  %sum728 = add nuw nsw i32 %sum727, %and45
  %sum729 = add nuw nsw i32 %sum728, %and59
  %sum730 = add nuw nsw i32 %sum729, %and73
  %sum731 = add nuw nsw i32 %sum730, %and87
  %add103 = sub nsw i32 %mul102, %sum731
  %mul105 = and i32 %and98, 33423360
  %sum732 = add nuw nsw i32 %and34, %and20
  %sum733 = add nuw nsw i32 %sum732, %and48
  %sum734 = add nuw nsw i32 %sum733, %and62
  %sum735 = add nuw nsw i32 %sum734, %and76
  %sum736 = add nuw nsw i32 %sum735, %and90
  %add106 = sub nsw i32 %mul105, %sum736
  %arrayidx111 = getelementptr inbounds i32, i32* %in, i32 %add81
  %12 = load i32, i32* %arrayidx111, align 4, !tbaa !10
  %and112 = shl i32 %12, 1
  %mul113 = and i32 %and112, 510
  %add114 = add i32 %add100, %mul113
  %mul116 = and i32 %and112, 130560
  %add117 = add i32 %add103, %mul116
  %mul119 = and i32 %and112, 33423360
  %add120 = add i32 %add106, %mul119
  %add124 = add i32 %add81, 1
  %arrayidx125 = getelementptr inbounds i32, i32* %in, i32 %add124
  %13 = load i32, i32* %arrayidx125, align 4, !tbaa !10
  %and126 = shl i32 %13, 1
  %mul127 = and i32 %and126, 510
  %add128 = add i32 %add114, %mul127
  %mul130 = and i32 %and126, 130560
  %add131 = add i32 %add117, %mul130
  %mul133 = and i32 %and126, 33423360
  %add134 = add i32 %add120, %mul133
  %add138 = add i32 %add81, 2
  %arrayidx139 = getelementptr inbounds i32, i32* %in, i32 %add138
  %14 = load i32, i32* %arrayidx139, align 4, !tbaa !10
  %and140 = and i32 %14, 255
  %add142 = sub i32 %add128, %and140
  %and143 = and i32 %14, 65280
  %add145 = sub i32 %add131, %and143
  %and146 = and i32 %14, 16711680
  %add148 = sub i32 %add134, %and146
  %mul150 = mul i32 %4, %add.i
  %add151 = add i32 %mul150, %add.i.722
  %sub152 = add i32 %add151, -2
  %arrayidx153 = getelementptr inbounds i32, i32* %in, i32 %sub152
  %15 = load i32, i32* %arrayidx153, align 4, !tbaa !10
  %and154 = and i32 %15, 255
  %add156 = sub i32 %add142, %and154
  %and157 = and i32 %15, 65280
  %add159 = sub i32 %add145, %and157
  %and160 = and i32 %15, 16711680
  %add162 = sub i32 %add148, %and160
  %sub166 = add i32 %add151, -1
  %arrayidx167 = getelementptr inbounds i32, i32* %in, i32 %sub166
  %16 = load i32, i32* %arrayidx167, align 4, !tbaa !10
  %and168 = shl i32 %16, 1
  %mul169 = and i32 %and168, 510
  %add170 = add i32 %add156, %mul169
  %mul172 = and i32 %and168, 130560
  %add173 = add i32 %add159, %mul172
  %mul175 = and i32 %and168, 33423360
  %add176 = add i32 %add162, %mul175
  %arrayidx181 = getelementptr inbounds i32, i32* %in, i32 %add151
  %17 = load i32, i32* %arrayidx181, align 4, !tbaa !10
  %and182 = shl i32 %17, 3
  %mul183 = and i32 %and182, 2040
  %add184 = add i32 %add170, %mul183
  %mul186 = and i32 %and182, 522240
  %add187 = add i32 %add173, %mul186
  %mul189 = and i32 %and182, 133693440
  %add190 = add i32 %add176, %mul189
  %add194 = add i32 %add151, 1
  %arrayidx195 = getelementptr inbounds i32, i32* %in, i32 %add194
  %18 = load i32, i32* %arrayidx195, align 4, !tbaa !10
  %and196 = shl i32 %18, 1
  %mul197 = and i32 %and196, 510
  %add198 = add i32 %add184, %mul197
  %mul200 = and i32 %and196, 130560
  %add201 = add i32 %add187, %mul200
  %mul203 = and i32 %and196, 33423360
  %add204 = add i32 %add190, %mul203
  %add208 = add i32 %add151, 2
  %arrayidx209 = getelementptr inbounds i32, i32* %in, i32 %add208
  %19 = load i32, i32* %arrayidx209, align 4, !tbaa !10
  %and210 = and i32 %19, 255
  %add212 = sub i32 %add198, %and210
  %and213 = and i32 %19, 65280
  %add215 = sub i32 %add201, %and213
  %and216 = and i32 %19, 16711680
  %add218 = sub i32 %add204, %and216
  %add219 = add i32 %add.i, 1
  %mul220 = mul i32 %4, %add219
  %add221 = add i32 %mul220, %add.i.722
  %sub222 = add i32 %add221, -2
  %arrayidx223 = getelementptr inbounds i32, i32* %in, i32 %sub222
  %20 = load i32, i32* %arrayidx223, align 4, !tbaa !10
  %and224 = and i32 %20, 255
  %add226 = sub i32 %add212, %and224
  %and227 = and i32 %20, 65280
  %add229 = sub i32 %add215, %and227
  %and230 = and i32 %20, 16711680
  %add232 = sub i32 %add218, %and230
  %sub236 = add i32 %add221, -1
  %arrayidx237 = getelementptr inbounds i32, i32* %in, i32 %sub236
  %21 = load i32, i32* %arrayidx237, align 4, !tbaa !10
  %and238 = shl i32 %21, 1
  %mul239 = and i32 %and238, 510
  %add240 = add i32 %add226, %mul239
  %mul242 = and i32 %and238, 130560
  %add243 = add i32 %add229, %mul242
  %mul245 = and i32 %and238, 33423360
  %add246 = add i32 %add232, %mul245
  %arrayidx251 = getelementptr inbounds i32, i32* %in, i32 %add221
  %22 = load i32, i32* %arrayidx251, align 4, !tbaa !10
  %and252 = shl i32 %22, 1
  %mul253 = and i32 %and252, 510
  %add254 = add i32 %add240, %mul253
  %mul256 = and i32 %and252, 130560
  %add257 = add i32 %add243, %mul256
  %mul259 = and i32 %and252, 33423360
  %add260 = add i32 %add246, %mul259
  %add264 = add i32 %add221, 1
  %arrayidx265 = getelementptr inbounds i32, i32* %in, i32 %add264
  %23 = load i32, i32* %arrayidx265, align 4, !tbaa !10
  %and266 = shl i32 %23, 1
  %mul267 = and i32 %and266, 510
  %add268 = add i32 %add254, %mul267
  %mul270 = and i32 %and266, 130560
  %add271 = add i32 %add257, %mul270
  %mul273 = and i32 %and266, 33423360
  %add274 = add i32 %add260, %mul273
  %add278 = add i32 %add221, 2
  %arrayidx279 = getelementptr inbounds i32, i32* %in, i32 %add278
  %24 = load i32, i32* %arrayidx279, align 4, !tbaa !10
  %and280 = and i32 %24, 255
  %add282 = sub i32 %add268, %and280
  %and283 = and i32 %24, 65280
  %add285 = sub i32 %add271, %and283
  %and286 = and i32 %24, 16711680
  %add288 = sub i32 %add274, %and286
  %add289 = add i32 %add.i, 2
  %mul290 = mul i32 %4, %add289
  %add291 = add i32 %mul290, %add.i.722
  %sub292 = add i32 %add291, -2
  %arrayidx293 = getelementptr inbounds i32, i32* %in, i32 %sub292
  %25 = load i32, i32* %arrayidx293, align 4, !tbaa !10
  %and294 = and i32 %25, 255
  %add296 = sub i32 %add282, %and294
  %and297 = and i32 %25, 65280
  %add299 = sub i32 %add285, %and297
  %and300 = and i32 %25, 16711680
  %add302 = sub i32 %add288, %and300
  %sub306 = add i32 %add291, -1
  %arrayidx307 = getelementptr inbounds i32, i32* %in, i32 %sub306
  %26 = load i32, i32* %arrayidx307, align 4, !tbaa !10
  %and308 = and i32 %26, 255
  %add310 = sub i32 %add296, %and308
  %and311 = and i32 %26, 65280
  %add313 = sub i32 %add299, %and311
  %and314 = and i32 %26, 16711680
  %add316 = sub i32 %add302, %and314
  %arrayidx321 = getelementptr inbounds i32, i32* %in, i32 %add291
  %27 = load i32, i32* %arrayidx321, align 4, !tbaa !10
  %and322 = and i32 %27, 255
  %add324 = sub i32 %add310, %and322
  %and325 = and i32 %27, 65280
  %add327 = sub i32 %add313, %and325
  %and328 = and i32 %27, 16711680
  %add330 = sub i32 %add316, %and328
  %add334 = add i32 %add291, 1
  %arrayidx335 = getelementptr inbounds i32, i32* %in, i32 %add334
  %28 = load i32, i32* %arrayidx335, align 4, !tbaa !10
  %and336 = and i32 %28, 255
  %add338 = sub i32 %add324, %and336
  %and339 = and i32 %28, 65280
  %add341 = sub i32 %add327, %and339
  %and342 = and i32 %28, 16711680
  %add344 = sub i32 %add330, %and342
  %add348 = add i32 %add291, 2
  %arrayidx349 = getelementptr inbounds i32, i32* %in, i32 %add348
  %29 = load i32, i32* %arrayidx349, align 4, !tbaa !10
  %and350 = and i32 %29, 255
  %add352 = sub i32 %add338, %and350
  %and353 = and i32 %29, 65280
  %add355 = sub i32 %add341, %and353
  %and356 = and i32 %29, 16711680
  %add358 = sub i32 %add344, %and356
  %cmp359 = icmp slt i32 %add352, 0
  %cond = select i1 %cmp359, i32 0, i32 %add352
  %cmp361 = icmp slt i32 %add355, 0
  %cond366 = select i1 %cmp361, i32 0, i32 %add355
  %cmp367 = icmp slt i32 %add358, 0
  %cond372 = select i1 %cmp367, i32 0, i32 %add358
  %div = sdiv i32 %cond, 8
  %div373 = sdiv i32 %cond372, 8
  %div374 = sdiv i32 %cond366, 8
  %cmp375 = icmp sgt i32 %div, 255
  %cond380 = select i1 %cmp375, i32 255, i32 %div
  %cmp381 = icmp sgt i32 %div374, 65280
  %cond386 = select i1 %cmp381, i32 65280, i32 %div374
  %cmp387 = icmp sgt i32 %div373, 16711680
  %cond392 = select i1 %cmp387, i32 16711680, i32 %div373
  %or393 = or i32 %cond380, %cond392
  %or394 = or i32 %or393, %cond386
  %or395 = or i32 %or394, -16777216
  %arrayidx398 = getelementptr inbounds i32, i32* %out, i32 %add151
  store i32 %or395, i32* %arrayidx398, align 4, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+mips32r2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!opencl.kernels = !{!0}
!llvm.ident = !{!6}

!0 = !{void (i32*, i32*)* @sharpen5x5, !1, !2, !3, !4, !5}
!1 = !{!"kernel_arg_addr_space", i32 0, i32 0}
!2 = !{!"kernel_arg_access_qual", !"none", !"none"}
!3 = !{!"kernel_arg_type", !"uint*", !"uint*"}
!4 = !{!"kernel_arg_base_type", !"uint*", !"uint*"}
!5 = !{!"kernel_arg_type_qual", !"", !""}
!6 = !{!"clang version 3.7.0 (tags/RELEASE_371/final)"}
!7 = !{i32 14855}
!8 = !{i32 14995}
!9 = !{i32 14634}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
