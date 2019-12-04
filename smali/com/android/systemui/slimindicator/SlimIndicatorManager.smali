.class public Lcom/android/systemui/slimindicator/SlimIndicatorManager;
.super Ljava/lang/Object;
.source "SlimIndicatorManager.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# instance fields
.field private mIsAddedTunable:Z

.field private mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsAddedTunable:Z

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "----- SIMPLE INDICATOR (QsTuner, QuickStar)-----------"

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   isPluginConnected  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->isPluginConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Plugin Information : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->getPluginMediator()Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->getDumpString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   View M Information : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->getViewMediator()Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "-----------------------------------------------------"

    .line 89
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getPluginMediator()Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;-><init>(Landroid/content/Context;Lcom/android/systemui/slimindicator/SlimIndicatorManager;)V

    iput-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    return-object p0
.end method

.method protected getViewMediator()Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;
    .locals 0

    .line 104
    const-class p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    return-object p0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 1

    .line 49
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->getViewMediator()Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;Lcom/android/systemui/slimindicator/SlimIndicatorManager;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->getPluginMediator()Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    return-void
.end method

.method public isPluginConnected()Z
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->getPluginMediator()Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->isPluginConnected()Z

    move-result p0

    return p0
.end method

.method public notifyPluginConnected()V
    .locals 2

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsAddedTunable:Z

    if-nez v0, :cond_0

    .line 56
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsAddedTunable:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->getViewMediator()Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->notifyNewsToSubscribers()V

    :cond_0
    return-void
.end method

.method public notifyPluginDisconnected()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsAddedTunable:Z

    if-eqz v0, :cond_0

    .line 64
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->mIsAddedTunable:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->getViewMediator()Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->notifyNewsToSubscribers()V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTuningChanged() key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->getViewMediator()Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
