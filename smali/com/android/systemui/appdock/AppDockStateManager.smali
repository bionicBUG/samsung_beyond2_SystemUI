.class public Lcom/android/systemui/appdock/AppDockStateManager;
.super Ljava/lang/Object;
.source "AppDockStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/AppDockStateManager$EditAction;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/appdock/AppDockStateManager;


# instance fields
.field private mGridViewPagerScrolling:Z

.field private mInEditMode:Z

.field private mIsExpanded:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mIsExpanded:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mInEditMode:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mGridViewPagerScrolling:Z

    return-void
.end method

.method public static get()Lcom/android/systemui/appdock/AppDockStateManager;
    .locals 1

    .line 17
    sget-object v0, Lcom/android/systemui/appdock/AppDockStateManager;->sInstance:Lcom/android/systemui/appdock/AppDockStateManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/android/systemui/appdock/AppDockStateManager;

    invoke-direct {v0}, Lcom/android/systemui/appdock/AppDockStateManager;-><init>()V

    sput-object v0, Lcom/android/systemui/appdock/AppDockStateManager;->sInstance:Lcom/android/systemui/appdock/AppDockStateManager;

    .line 21
    :cond_0
    sget-object v0, Lcom/android/systemui/appdock/AppDockStateManager;->sInstance:Lcom/android/systemui/appdock/AppDockStateManager;

    return-object v0
.end method


# virtual methods
.method public isExpanded()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mIsExpanded:Z

    return p0
.end method

.method public isGridViewPagerScrolling()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mGridViewPagerScrolling:Z

    return p0
.end method

.method public isInEditMode()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mInEditMode:Z

    return p0
.end method

.method public resetStates()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mInEditMode:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mIsExpanded:Z

    return-void
.end method

.method public setExpanded(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "isExpanded=%b"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mIsExpanded:Z

    .line 67
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/appdock/event/AppDockExpandStateEvent;

    iget-boolean p0, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mIsExpanded:Z

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/event/AppDockExpandStateEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void
.end method

.method public setGridViewPagerScrolling(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mGridViewPagerScrolling:Z

    return-void
.end method

.method public setInEditMode(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/appdock/AppDockStateManager;->mInEditMode:Z

    return-void
.end method

.method public updateEditMode(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "action=%s"

    .line 47
    invoke-static {v3, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    sget-object v1, Lcom/android/systemui/appdock/AppDockStateManager$1;->$SwitchMap$com$android$systemui$appdock$AppDockStateManager$EditAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v0, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/appdock/AppDockStateManager;->setInEditMode(Z)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/AppDockStateManager;->setInEditMode(Z)V

    .line 60
    :goto_0
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;

    invoke-direct {v0, p1}, Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;-><init>(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void
.end method
