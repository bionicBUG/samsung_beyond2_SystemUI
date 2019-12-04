.class public Lcom/android/systemui/globalactions/util/CoverUtilWrapper;
.super Ljava/lang/Object;
.source "CoverUtilWrapper.java"


# instance fields
.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mCoverUtil:Lcom/android/systemui/util/CoverUtil;

.field private mListener:Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_COVER:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 23
    const-class p1, Lcom/android/systemui/util/CoverUtil;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/CoverUtil;

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    goto :goto_0

    .line 25
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    .line 28
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 29
    iput-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "CoverUtilWrapper"

    const-string v2, "dispose"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mListener:Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/CoverUtil;->removeListener(Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public isClearCoverClosed()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isClearSideCoverClosed()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$registerCoverStateListener$0$CoverUtilWrapper(Lcom/samsung/android/globalactions/util/CoverStateListener;Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverUtilWrapper"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p2, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 56
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    .line 57
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 62
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/samsung/android/globalactions/util/CoverStateListener;->onStateChanged(IZ)V

    return-void
.end method

.method public registerCoverStateListener(Lcom/samsung/android/globalactions/util/CoverStateListener;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/android/systemui/globalactions/util/-$$Lambda$CoverUtilWrapper$sRJ2RaF0HKOIM0KWd-V9dSUlaTo;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/globalactions/util/-$$Lambda$CoverUtilWrapper$sRJ2RaF0HKOIM0KWd-V9dSUlaTo;-><init>(Lcom/android/systemui/globalactions/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/util/CoverStateListener;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mListener:Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

    .line 64
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    if-eqz p1, :cond_0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mListener:Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/CoverUtil;->addListener(Lcom/android/systemui/util/CoverUtil$CoverStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public updateState()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/util/CoverUtil;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_0
    return-void
.end method
