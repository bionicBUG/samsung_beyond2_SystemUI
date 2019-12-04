.class public Lcom/android/systemui/popup/util/PopupUIUtil;
.super Ljava/lang/Object;
.source "PopupUIUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCellularDataAllowed()Z
    .locals 0

    .line 68
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isCellularDataAllowed()Z

    move-result p0

    return p0
.end method

.method public isNoReadySim()Z
    .locals 0

    .line 50
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getReadySimCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
