.class public final Lcom/android/systemui/keyguard/BioUnlockPFImprover;
.super Ljava/lang/Object;
.source "BioUnlockPFImprover.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;,
        Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBioUnlockPFImprover.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BioUnlockPFImprover.kt\ncom/android/systemui/keyguard/BioUnlockPFImprover\n*L\n1#1,498:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

.field private static final DEBUG:Z

.field private static final instance:Lcom/android/systemui/keyguard/BioUnlockPFImprover;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private backDropViewVisibility:I

.field private final choreographer$delegate:Lkotlin/Lazy;

.field private currentTraceId:I

.field private delayedActionParams:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;

.field private final delayedRunnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final frameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final handler:Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;

.field private isBioUnlock:Z

.field private isBioUnlockTracing:Z

.field private isForegroundShownCalled:Z

.field private isWakeAndUnlock:Z

.field private panelViewVisibility:I

.field private scrimVisibility:I

.field private statusBar:Landroid/view/ViewGroup;

.field private statusBarHeight:I

.field private final statusBarListener:Landroid/view/View$OnLayoutChangeListener;

.field private waitStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "choreographer"

    const-string v4, "getChoreographer()Landroid/view/Choreographer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    const-string v0, "BioUnlock"

    const/4 v1, 0x3

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->DEBUG:Z

    .line 348
    new-instance v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->instance:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedRunnableList:Ljava/util/List;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->scrimVisibility:I

    .line 45
    iput v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->panelViewVisibility:I

    .line 46
    iput v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->backDropViewVisibility:I

    .line 47
    iput v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->currentTraceId:I

    .line 50
    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$choreographer$2;->INSTANCE:Lcom/android/systemui/keyguard/BioUnlockPFImprover$choreographer$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->choreographer$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;-><init>(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->handler:Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;

    .line 63
    new-instance v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$frameCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$frameCallback$1;-><init>(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 78
    new-instance v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarListener$1;-><init>(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBarListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public static final synthetic access$doNextFrame(Lcom/android/systemui/keyguard/BioUnlockPFImprover;JJ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->doNextFrame(JJ)V

    return-void
.end method

.method public static final synthetic access$getBackDropViewVisibility$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->backDropViewVisibility:I

    return p0
.end method

.method public static final synthetic access$getBioUnlockTraceTag(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->getBioUnlockTraceTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDEBUG$cp()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$getDelayedRunnableList$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedRunnableList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->handler:Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/android/systemui/keyguard/BioUnlockPFImprover;
    .locals 1

    .line 36
    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->instance:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    return-object v0
.end method

.method public static final synthetic access$getPanelViewVisibility$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->panelViewVisibility:I

    return p0
.end method

.method public static final synthetic access$getScrimVisibility$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->scrimVisibility:I

    return p0
.end method

.method public static final synthetic access$internalCanBeSkipOnWakeAndUnlock(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalCanBeSkipOnWakeAndUnlock()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$internalIsWakeAndUnlocking(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalIsWakeAndUnlocking()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$internalReset(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalReset()V

    return-void
.end method

.method public static final synthetic access$internalRunOnlyOnWakeAndUnlock(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Ljava/util/function/Consumer;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalRunOnlyOnWakeAndUnlock(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static final synthetic access$internalSetBackDropViewVisibility(Lcom/android/systemui/keyguard/BioUnlockPFImprover;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalSetBackDropViewVisibility(I)V

    return-void
.end method

.method public static final synthetic access$internalSetDelayedActionIfCanBeSkip(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Ljava/lang/Runnable;Z)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalSetDelayedActionIfCanBeSkip(Ljava/lang/Runnable;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$internalSetDelayedActionUntilNextFrame(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalSetDelayedActionUntilNextFrame(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)V

    return-void
.end method

.method public static final synthetic access$internalSetPanelViewVisibility(Lcom/android/systemui/keyguard/BioUnlockPFImprover;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalSetPanelViewVisibility(I)V

    return-void
.end method

.method public static final synthetic access$internalSetScrimsVisibility(Lcom/android/systemui/keyguard/BioUnlockPFImprover;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalSetScrimsVisibility(I)V

    return-void
.end method

.method public static final synthetic access$internalSetWakeAndUnlocking(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalSetWakeAndUnlocking()V

    return-void
.end method

.method public static final synthetic access$isBioUnlock$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlock:Z

    return p0
.end method

.method public static final synthetic access$isBioUnlockTracing$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlockTracing:Z

    return p0
.end method

.method public static final synthetic access$isForegroundShownCalled$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isForegroundShownCalled:Z

    return p0
.end method

.method public static final synthetic access$setBioUnlock$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlock:Z

    return-void
.end method

.method public static final synthetic access$setCurrentTraceId$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->currentTraceId:I

    return-void
.end method

.method public static final synthetic access$statusBarChanged(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Landroid/view/ViewGroup;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBarChanged(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public static final synthetic access$statusBarHandler(Lcom/android/systemui/keyguard/BioUnlockPFImprover;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBarHandler(I)V

    return-void
.end method

.method public static final canBeSkipOnWakeAndUnlock()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->canBeSkipOnWakeAndUnlock()Z

    move-result v0

    return v0
.end method

.method private final dispatchLog()V
    .locals 5

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalIsWakeAndUnlocking()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlockTracing:Z

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchLog fgCalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isForegroundShownCalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " wakeAndUnlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalIsWakeAndUnlocking()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "bioUnlockTracing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlockTracing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " backDrop=0x%x panelView=0x%x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "scrim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->scrimVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->backDropViewVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->panelViewVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "BioUnlock"

    .line 193
    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isForegroundShownCalled:Z

    if-eqz v0, :cond_1

    return-void

    .line 203
    :cond_1
    iget v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->scrimVisibility:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->panelViewVisibility:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->backDropViewVisibility:I

    if-ne v0, v1, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_3

    .line 206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->waitStartTime:J

    const-string v0, "dispatchLog waiting for frame drawn"

    .line 207
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_3
    return-void
.end method

.method private final doNextFrame(JJ)V
    .locals 10

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isForegroundShownCalled:Z

    const-string v1, "BioUnlock"

    if-eqz v0, :cond_1

    .line 86
    sget-boolean p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "doNextFrame() was already called"

    .line 87
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isForegroundShownCalled:Z

    const-string v0, "foreground is shown"

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    const-string v5, "ms"

    if-lez v4, :cond_2

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / frameDuration "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->waitStartTime:J

    sub-long/2addr p3, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr p3, v6

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms / interval "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p3

    iget-wide v8, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->waitStartTime:J

    sub-long/2addr p3, v8

    div-long/2addr p3, v6

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    cmp-long p3, p1, v2

    if-lez p3, :cond_3

    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " / end time: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedActionParams:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->discard()V

    goto :goto_0

    .line 103
    :cond_3
    new-instance p1, Lcom/android/systemui/keyguard/BioUnlockPFImprover$doNextFrame$1;

    invoke-direct {p1, v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$doNextFrame$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->lapBioUnlockTracing(Ljava/util/function/LongConsumer;)V

    .line 104
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedActionParams:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;

    if-eqz p0, :cond_4

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->cancel()V

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->start(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final getBioUnlockTraceTag()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BioUnlock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->currentTraceId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getChoreographer()Landroid/view/Choreographer;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->choreographer$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Choreographer;

    return-object p0
.end method

.method private final getVisibility(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final internalCanBeSkipOnWakeAndUnlock()Z
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalIsWakeAndUnlocking()Z

    move-result p0

    return p0
.end method

.method private final internalIsWakeAndUnlocking()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isWakeAndUnlock:Z

    return p0
.end method

.method private final internalReset()V
    .locals 2

    const-string v0, "BioUnlock"

    const-string v1, "isWakeAndUnlock false"

    .line 302
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isWakeAndUnlock:Z

    .line 306
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlock:Z

    .line 307
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isForegroundShownCalled:Z

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->setBioUnlockTracing(Z)V

    .line 309
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedRunnableList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final internalRunOnlyOnWakeAndUnlock(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/keyguard/BioUnlockPFImprover;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalIsWakeAndUnlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final internalSetBackDropViewVisibility(I)V
    .locals 6

    .line 172
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->getVisibility(I)I

    move-result v0

    .line 173
    iget v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->backDropViewVisibility:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "BioUnlock"

    if-ne v1, v0, :cond_1

    .line 174
    sget-boolean v1, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->backDropViewVisibility:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "setBackDropViewVisibility 0x%x -> 0x%x, old=0x%x"

    invoke-static {v5, p0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 180
    :cond_1
    sget-boolean p1, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->DEBUG:Z

    if-eqz p1, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "setBackDropViewVisibility 0x%x -> 0x%x"

    invoke-static {v5, v1, p1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_2
    iput v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->backDropViewVisibility:I

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->dispatchLog()V

    return-void
.end method

.method private final internalSetDelayedActionIfCanBeSkip(Ljava/lang/Runnable;Z)Z
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalCanBeSkipOnWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    if-eqz p1, :cond_2

    .line 125
    iget-object p2, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedRunnableList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 126
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedRunnableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private final internalSetDelayedActionUntilNextFrame(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedActionParams:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->discard()V

    .line 333
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedActionParams:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;

    .line 334
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedActionParams:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->start(Z)V

    :cond_1
    return-void
.end method

.method private final internalSetPanelViewVisibility(I)V
    .locals 6

    .line 155
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->getVisibility(I)I

    move-result v0

    .line 156
    iget v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->panelViewVisibility:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "BioUnlock"

    if-ne v1, v0, :cond_1

    .line 157
    sget-boolean v1, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->panelViewVisibility:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "setPanelViewVisibility 0x%x -> 0x%x, old=0x%x"

    invoke-static {v5, p0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 163
    :cond_1
    sget-boolean p1, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->DEBUG:Z

    if-eqz p1, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "setPanelViewVisibility 0x%x -> 0x%x"

    invoke-static {v5, v1, p1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_2
    iput v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->panelViewVisibility:I

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->dispatchLog()V

    return-void
.end method

.method private final internalSetScrimsVisibility(I)V
    .locals 3

    .line 140
    iget v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->scrimVisibility:I

    const-string v1, "setScrimVisibility "

    const-string v2, "BioUnlock"

    if-ne v0, p1, :cond_1

    .line 141
    sget-boolean p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 147
    :cond_1
    sget-boolean v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->scrimVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    iput p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->scrimVisibility:I

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->dispatchLog()V

    return-void
.end method

.method private final internalSetWakeAndUnlocking()V
    .locals 2

    const-string v0, "BioUnlock"

    const-string v1, "isWakeAndUnlock true"

    .line 292
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isWakeAndUnlock:Z

    const/4 v1, 0x0

    .line 295
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlock:Z

    .line 296
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isForegroundShownCalled:Z

    .line 297
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->updateLooperSlowLog(Z)V

    return-void
.end method

.method public static final isBackDropViewVisible()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->isBackDropViewVisible()Z

    move-result v0

    return v0
.end method

.method public static final isBioUnlockTracking()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->isBioUnlockTracking()Z

    move-result v0

    return v0
.end method

.method public static final isBioUnlocking()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->isBioUnlocking()Z

    move-result v0

    return v0
.end method

.method public static final isFullyTransparentScrimView()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->isFullyTransparentScrimView()Z

    move-result v0

    return v0
.end method

.method public static final isNextFrameRequested()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->isNextFrameRequested()Z

    move-result v0

    return v0
.end method

.method public static final isPanelViewVisible()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->isPanelViewVisible()Z

    move-result v0

    return v0
.end method

.method public static final isWakeAndUnlocking()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->isWakeAndUnlocking()Z

    move-result v0

    return v0
.end method

.method private final lapBioUnlockTracing(Ljava/util/function/LongConsumer;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 235
    invoke-static {v0, p1}, Lcom/android/systemui/util/LogUtil;->lapTime(ILjava/util/function/LongConsumer;)V

    .line 237
    iget p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->currentTraceId:I

    if-ltz p1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->getBioUnlockTraceTag()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/util/LogUtil;->traceEnd(Ljava/lang/String;I)V

    .line 239
    iget p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->currentTraceId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->currentTraceId:I

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->getBioUnlockTraceTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/systemui/util/LogUtil;->traceBegin(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static final notifyStatusBarChanged(Landroid/view/ViewGroup;II)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->notifyStatusBarChanged(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public static final reset()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->reset()V

    return-void
.end method

.method public static final runOnlyOnWakeAndUnlock(Ljava/util/function/Consumer;)V
    .locals 1
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

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->runOnlyOnWakeAndUnlock(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static final setBackDropViewVisibility(I)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->setBackDropViewVisibility(I)V

    return-void
.end method

.method public static final setBioUnlocking()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->setBioUnlocking()V

    return-void
.end method

.method public static final setDelayedActionIfCanBeSkip(Ljava/lang/Runnable;Z)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->setDelayedActionIfCanBeSkip(Ljava/lang/Runnable;Z)Z

    move-result p0

    return p0
.end method

.method public static final setDelayedActionUntilNextFrame(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->setDelayedActionUntilNextFrame(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)V

    return-void
.end method

.method public static final setPanelViewVisibility(I)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->setPanelViewVisibility(I)V

    return-void
.end method

.method public static final setScrimsVisibility(I)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->setScrimsVisibility(I)V

    return-void
.end method

.method public static final setWakeAndUnlocking()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->setWakeAndUnlocking()V

    return-void
.end method

.method public static final startBioUnlockTracing()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->Companion:Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$Companion;->startBioUnlockTracing()V

    return-void
.end method

.method private final statusBarChanged(Landroid/view/ViewGroup;II)V
    .locals 0

    if-ne p2, p3, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalIsWakeAndUnlocking()Z

    move-result p2

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlockTracing:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBar:Landroid/view/ViewGroup;

    .line 218
    iput p3, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBarHeight:I

    .line 220
    new-instance p2, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarChanged$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarChanged$1;-><init>(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->lapBioUnlockTracing(Ljava/util/function/LongConsumer;)V

    .line 227
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBarListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final statusBarHandler(I)V
    .locals 3

    .line 256
    iget v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBarHeight:I

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->internalIsWakeAndUnlocking()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlockTracing:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isWakeAndUnlock:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlockTracing:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isForegroundShownCalled:Z

    if-nez p1, :cond_2

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->dispatchLog()V

    :cond_2
    const-string p1, "BioUnlock"

    const-string v0, "isWakeAndUnlock false"

    .line 266
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 269
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isWakeAndUnlock:Z

    .line 270
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlock:Z

    .line 272
    sget-object p1, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarHandler$1;->INSTANCE:Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarHandler$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->stopBioUnlockTracing(Ljava/util/function/LongConsumer;)V

    .line 276
    iget-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBar:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const-string/jumbo v1, "statusBar"

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBarListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 278
    iget-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->delayedRunnableList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 282
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBar:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarHandler$2;-><init>(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    return-void
.end method

.method private final stopBioUnlockTracing(Ljava/util/function/LongConsumer;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 245
    invoke-static {v0, p1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/util/function/LongConsumer;)V

    .line 247
    iget p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->currentTraceId:I

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->getBioUnlockTraceTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/systemui/util/LogUtil;->traceEnd(Ljava/lang/String;I)V

    :cond_0
    const/4 p1, -0x1

    .line 251
    iput p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->currentTraceId:I

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->setBioUnlockTracing(Z)V

    return-void
.end method

.method private final updateLooperSlowLog(Z)V
    .locals 4

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateLooperSlowLog "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BioUnlock"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v2, 0xa

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x14

    :cond_1
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    return-void
.end method


# virtual methods
.method public final setBioUnlockTracing(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->isBioUnlockTracing:Z

    .line 326
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->updateLooperSlowLog(Z)V

    return-void
.end method
