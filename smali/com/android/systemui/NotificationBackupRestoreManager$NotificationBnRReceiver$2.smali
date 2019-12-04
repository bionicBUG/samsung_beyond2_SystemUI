.class Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;
.super Ljava/lang/Object;
.source "NotificationBackupRestoreManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;

.field final synthetic val$basePath:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$saveKey:Ljava/lang/String;

.field final synthetic val$securityLevel:I

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->this$0:Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver;

    iput-object p2, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->val$basePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->val$source:Ljava/lang/String;

    iput p5, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->val$securityLevel:I

    iput-object p6, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->val$saveKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 537
    const-class v0, Lcom/android/systemui/NotificationBackupRestoreManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/NotificationBackupRestoreManager;

    iget-object v2, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->val$basePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->val$source:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->val$securityLevel:I

    iget-object v7, p0, Lcom/android/systemui/NotificationBackupRestoreManager$NotificationBnRReceiver$2;->val$saveKey:Ljava/lang/String;

    const-string v3, "com.samsung.android.intent.action.RESPONSE_RESTORE_NOTIFICATION"

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/NotificationBackupRestoreManager;->startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
