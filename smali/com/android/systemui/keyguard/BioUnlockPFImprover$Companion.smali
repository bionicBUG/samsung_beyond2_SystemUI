.class public final Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;
.super Ljava/lang/Object;
.source "BioUnlockPFImprover.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/BioUnlockPFImprover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final canBeSkipOnWakeAndUnlock()Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 352
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$internalCanBeSkipOnWakeAndUnlock(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z

    move-result p0

    return p0
.end method

.method public final isBackDropViewVisible()Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 444
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getBackDropViewVisibility$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isBioUnlockTracking()Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 419
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$isBioUnlockTracing$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z

    move-result p0

    return p0
.end method

.method public final isBioUnlocking()Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 374
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$isBioUnlock$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z

    move-result p0

    return p0
.end method

.method public final isFullyTransparentScrimView()Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 449
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getScrimVisibility$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNextFrameRequested()Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 434
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$isForegroundShownCalled$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isPanelViewVisible()Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 439
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getPanelViewVisibility$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWakeAndUnlocking()Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 369
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$internalIsWakeAndUnlocking(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z

    move-result p0

    return p0
.end method

.method public final notifyStatusBarChanged(Landroid/view/ViewGroup;II)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "statusBarView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$statusBarChanged(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public final reset()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 429
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$internalReset(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V

    return-void
.end method

.method public final runOnlyOnWakeAndUnlock(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/keyguard/BioUnlockPFImprover;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 389
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$internalRunOnlyOnWakeAndUnlock(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setBackDropViewVisibility(I)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 414
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$internalSetBackDropViewVisibility(Lcom/android/systemui/keyguard/BioUnlockPFImprover;I)V

    return-void
.end method

.method public final setBioUnlocking()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 379
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$setBioUnlock$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Z)V

    return-void
.end method

.method public final setDelayedActionIfCanBeSkip(Ljava/lang/Runnable;Z)Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 384
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$internalSetDelayedActionIfCanBeSkip(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Ljava/lang/Runnable;Z)Z

    move-result p0

    return p0
.end method

.method public final setDelayedActionUntilNextFrame(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "params"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$internalSetDelayedActionUntilNextFrame(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)V

    return-void
.end method

.method public final setPanelViewVisibility(I)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 409
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$internalSetPanelViewVisibility(Lcom/android/systemui/keyguard/BioUnlockPFImprover;I)V

    return-void
.end method

.method public final setScrimsVisibility(I)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 404
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$internalSetScrimsVisibility(Lcom/android/systemui/keyguard/BioUnlockPFImprover;I)V

    return-void
.end method

.method public final setWakeAndUnlocking()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 399
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$internalSetWakeAndUnlocking(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V

    return-void
.end method

.method public final startBioUnlockTracing()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 p0, 0x3e8

    .line 357
    invoke-static {p0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    .line 359
    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isTraceEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 360
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$setCurrentTraceId$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;I)V

    .line 361
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getBioUnlockTraceTag(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/systemui/util/LogUtil;->traceBegin(Ljava/lang/String;I)V

    .line 364
    :cond_0
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->setBioUnlockTracing(Z)V

    return-void
.end method
