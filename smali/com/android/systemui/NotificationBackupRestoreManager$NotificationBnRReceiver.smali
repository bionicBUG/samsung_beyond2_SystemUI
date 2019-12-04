.class public Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/NotificationBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationBnRReceiver"
.end annotation


# instance fields
.field public mBackupThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 498
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive ( action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotifBnRManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    :try_start_0
    const-string v3, "SAVE_PATH"

    .line 509
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "SOURCE"

    .line 510
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "SESSION_KEY"

    .line 511
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "EXPORT_SESSION_TIME"

    .line 512
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "ACTION"

    const/4 v6, 0x0

    .line 513
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v8, "SECURITY_LEVEL"

    .line 514
    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_NOTIFICATION"

    .line 516
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_0

    .line 520
    iget-object v1, v0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "stop backup working thread for quickpanel"

    .line 521
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, v0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    .line 523
    iput-object v1, v0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    .line 524
    const-class v0, Lcom/android/systemui/NotificationBackupRestoreManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/NotificationBackupRestoreManager;

    const-string v8, "com.samsung.android.intent.action.RESPONSE_BACKUP_NOTIFICATION"

    const/4 v9, 0x1

    sget-object v10, Lcom/android/systemui/NotificationBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/NotificationBackupRestoreManager$ERR_CODE;

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/NotificationBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :cond_0
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v5

    move-object v5, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$1;-><init>(Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v8, v0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    .line 532
    iget-object v0, v0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_NOTIFICATION"

    .line 534
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v5

    move-object v5, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;-><init>(Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 540
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
