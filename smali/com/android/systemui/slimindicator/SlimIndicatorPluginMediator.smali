.class public Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;
.super Ljava/lang/Object;
.source "SlimIndicatorPluginMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;,
        Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackUpAndRestoreManager:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;

.field private mContext:Landroid/content/Context;

.field private mDesktopDexManager:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;

.field private mIsSPluginConnected:Z

.field private mLastDisconnectReason:I

.field private mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

.field private mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/slimindicator/SlimIndicatorManager;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    const-string v0, "[QuickStar]SlimIndicatorPluginMediator"

    const-string v1, "Constructor()"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    .line 54
    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    invoke-direct {p1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    .line 57
    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$1;)V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mDesktopDexManager:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;

    .line 60
    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$1;)V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mBackUpAndRestoreManager:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;

    .line 61
    iget-boolean p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mBackUpAndRestoreManager:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;

    invoke-virtual {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->backUpAndResetValue()V

    .line 66
    :cond_0
    const-class p1, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/SPluginManager;

    const-class p2, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-interface {p1, p0, p2}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->getBlackListDBValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;)Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mBackUpAndRestoreManager:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;

    return-object p0
.end method

.method private getBlackListDBValue()Ljava/lang/String;
    .locals 2

    .line 123
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 124
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "icon_blacklist"

    .line 123
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDumpString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QuickStar]SlimIndicatorPluginMediator"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", isPluginConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->isPluginConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", BroadcastReceiver:    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    invoke-virtual {v2}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->isRegisteredReceiver()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mLastDisconnectReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mLastDisconnectReason:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isPluginConnected()Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    return p0
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->onPluginConnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;Landroid/content/Context;)V
    .locals 2

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPluginConnected() mIsSPluginConnected:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", plugin:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[QuickStar]SlimIndicatorPluginMediator"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz p2, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->register(Landroid/content/Context;)V

    .line 77
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mDesktopDexManager:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;

    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;->register()V

    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 80
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->notifyPluginConnected()V

    if-eqz p1, :cond_1

    .line 82
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Please check app version."

    .line 84
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->onPluginDisconnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;I)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPluginDisconnected() mIsSPluginConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", plugin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorPluginMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iput p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mLastDisconnectReason:I

    .line 93
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->unregister(Landroid/content/Context;)V

    .line 94
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mDesktopDexManager:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;

    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$DesktopDexManager;->unregister()V

    .line 95
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mBackUpAndRestoreManager:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;

    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator$BackUpAndRestoreManager;->backUpAndResetValue()V

    const/4 p2, 0x0

    .line 96
    iput-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 97
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->notifyPluginDisconnected()V

    if-eqz p1, :cond_1

    .line 99
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Please check app version."

    .line 101
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setBlackListDBValue(Ljava/lang/String;)V
    .locals 2

    .line 118
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 119
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "icon_blacklist"

    .line 118
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
