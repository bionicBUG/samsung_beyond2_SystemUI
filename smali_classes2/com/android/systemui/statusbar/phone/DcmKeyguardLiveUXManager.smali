.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
.super Ljava/lang/Object;
.source "DcmKeyguardLiveUXManager.java"


# static fields
.field private static final DCM_MODEL:Z

.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowingDCMLiveUX:Z

.field private mSavingMode:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_LIVEUX:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "ultra_powersaving_mode"

    .line 64
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "emergency_mode"

    .line 65
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->handleShow(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method private handleShow(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 139
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 140
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    if-eq v0, p1, :cond_2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleShow() >> START >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DcmKeyguardLiveUXManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    if-eqz p1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->registerReceiver()V

    goto :goto_1

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->unregisterReceiver()V

    :goto_1
    const-string p0, "handleShow() << END <<"

    .line 147
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string p0, "DcmKeyguardLiveUXManager"

    const-string v0, "registerReceiver(): regist "

    .line 197
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 3

    const-string v0, "DcmKeyguardLiveUXManager"

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 205
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string p0, "NotificationPanelView.unregisterReceiver(): unregist"

    .line 206
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationPanelView.unregisterReceiver(): exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public hideDCMLiveUX()V
    .locals 2

    .line 129
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DcmKeyguardLiveUXManager"

    const-string v1, "hideDCMLiveUX()"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16b3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showDCMLiveUX()V
    .locals 2

    .line 121
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DcmKeyguardLiveUXManager"

    const-string v1, "showDCMLiveUX()"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16b3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
