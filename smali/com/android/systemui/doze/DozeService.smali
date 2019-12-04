.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;
.implements Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/dreams/DreamService;",
        "Lcom/android/systemui/doze/DozeMachine$Service;",
        "Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/Plugin;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

.field private mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

.field private mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

.field private mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

.field private mIsOccluded:Z

.field private mIsUnlockedState:Z

.field private mPluginContext:Landroid/content/Context;

.field private mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeService"

    const/4 v1, 0x3

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 64
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setDebug(Z)V

    return-void
.end method

.method private startAlwaysOnDisplay()Z
    .locals 4

    .line 269
    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v1, :cond_0

    .line 271
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/doze/PluginAODManager;->getSysUIConfig()Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v1

    const/4 v2, 0x4

    .line 272
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mIsUnlockedState:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    const/4 v2, 0x5

    .line 273
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mIsOccluded:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    .line 274
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->getNotificationPanelView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 275
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startClockPack()V
    .locals 3

    .line 288
    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startClockPack called dozeHost : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mClockPackPlugin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DozeService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz v1, :cond_0

    .line 292
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->getNotificationPanelView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 293
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/doze/PluginAODManager;->getSysUIConfig()Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V

    :cond_0
    return-void
.end method

.method private stopAlwaysOnDisplay()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDreamingStopped()V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    :cond_0
    return-void
.end method

.method private stopClockPack()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onDreamingStopped()V

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 220
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 222
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/DozeMachine;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 306
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 307
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    .line 308
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 69
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setWindowless(Z)V

    .line 73
    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    return-void

    .line 77
    :cond_0
    const-class v1, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 80
    sget-boolean v1, Lcom/android/systemui/Rune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v3, Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {v1, p0, v3, v2, v0}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZ)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v3, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-interface {v1, p0, v3, v2, v0}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZ)V

    .line 85
    :goto_0
    new-instance v0, Lcom/android/systemui/doze/DozeFactory;

    invoke-direct {v0}, Lcom/android/systemui/doze/DozeFactory;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/DozeFactory;->assembleMachine(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/AODMachine;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 97
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 100
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    const-string v1, "DozeService"

    if-nez v0, :cond_0

    const-string p0, "onDreamingStarted: mAODDozeMachine is null"

    .line 166
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "onDreamingStarted: "

    .line 169
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isUnLockedstate()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mIsUnlockedState:Z

    .line 173
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isOccludedstate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mIsOccluded:Z

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 179
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->startDozing()V

    .line 181
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->startAlwaysOnDisplay()Z

    move-result v0

    if-nez v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->startClockPack()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .line 197
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    const-string v1, "DozeService"

    if-nez v0, :cond_0

    const-string p0, "onDreamingStopped: mAODDozeMachine is null"

    .line 200
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "onDreamingStopped: "

    .line 203
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 205
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->stopAlwaysOnDisplay()V

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->stopClockPack()V

    :goto_0
    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    const-string v1, "DozeService"

    if-nez v0, :cond_0

    const-string p0, "onPluginConnected: mAODDozeMachine is null"

    .line 108
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_1

    const-string v0, "onPluginConnected: PluginAOD"

    .line 112
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    check-cast p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 114
    iput-object p2, p0, Lcom/android/systemui/doze/DozeService;->mPluginContext:Landroid/content/Context;

    .line 115
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/doze/PluginAODManager;->setAODPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/aod/PluginAOD;)V

    .line 116
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p1

    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/PluginAODManager;->setDozeHost(Lcom/android/systemui/doze/DozeHost;)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->getAODParameter()Lcom/android/systemui/plugins/aod/PluginAODParameter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/AODMachine;->setAODParameter(Lcom/android/systemui/plugins/aod/PluginAODParameter;)V

    .line 119
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->startAlwaysOnDisplay()Z

    move-result p1

    if-nez p1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    goto :goto_0

    .line 124
    :cond_1
    instance-of p2, p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p2, :cond_2

    const-string p2, "onPluginConnected: PluginClockPack"

    .line 125
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    check-cast p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    .line 127
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/PluginAODManager;->setClockPackplugin(Lcom/android/systemui/plugins/clockpack/PluginClockPack;)V

    .line 128
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V

    .line 129
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->startClockPack()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 3

    .line 144
    instance-of v0, p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    const/4 v1, 0x0

    const-string v2, "DozeService"

    if-eqz v0, :cond_0

    const-string p1, "onPluginDisconnected: PluginAOD"

    .line 145
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/doze/PluginAODManager;->setAODPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/aod/PluginAOD;)V

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->stopAlwaysOnDisplay()V

    goto :goto_0

    .line 148
    :cond_0
    instance-of p1, p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p1, :cond_1

    const-string p1, "onPluginDisconnected: PluginClockPack"

    .line 149
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/PluginAODManager;->setClockPackplugin(Lcom/android/systemui/plugins/clockpack/PluginClockPack;)V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->stopClockPack()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestHideDoze()V
    .locals 1

    .line 256
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_0

    .line 257
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public onRequestShowDoze()V
    .locals 1

    .line 242
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_0

    .line 243
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public requestWakeUp()V
    .locals 4

    .line 234
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "com.android.systemui:NODOZE"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method
