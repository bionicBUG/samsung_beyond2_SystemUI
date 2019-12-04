.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;
.super Ljava/lang/Object;
.source "DcmKeyguardMascotUtils.java"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mIsBootCompleted:Z

.field private mIsWaitingForBootComplete:Z

.field public mMascotClicked:Z

.field private mMascotHandler:Landroid/os/Handler;

.field private mMascotView:Landroid/widget/LinearLayout;

.field private mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private sBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsBootCompleted:Z

    .line 32
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotView:Landroid/widget/LinearLayout;

    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 40
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method


# virtual methods
.method public bindIScreenLockService()V
    .locals 3

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsBootCompleted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 157
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    .line 163
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.nttdocomo.android.screenlockservice"

    .line 164
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "SecKeyguardStatusUtils"

    const-string v0, "bindIScreenLockService() : can\'t connect IScreenLockService"

    .line 166
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public declared-synchronized getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public isMascotAppRunning()Z
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 275
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 276
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v1, "com.nttdocomo.android.mascot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isMascotEnabled()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 235
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShowHistoryCountAndMascot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->isMascotAppRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerMascotReceiver()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public setMasCotView(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setMasCotViewHanler(Landroid/os/Handler;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotHandler:Landroid/os/Handler;

    return-void
.end method

.method public setMascotRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 1

    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 244
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->isMascotAppRunning()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 246
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotView:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    return-void

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotHandler:Landroid/os/Handler;

    if-nez p1, :cond_2

    return-void

    .line 263
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$4;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterMascotReceiver()V
    .locals 2

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBar.unregisterReceiver(): exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecKeyguardStatusUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationPanelView.unregisterReceiver(): exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecKeyguardStatusUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
