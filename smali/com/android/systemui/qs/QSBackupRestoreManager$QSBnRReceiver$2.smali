.class Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;
.super Ljava/lang/Object;
.source "QSBackupRestoreManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;

.field final synthetic val$basePath:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$saveKey:Ljava/lang/String;

.field final synthetic val$securityLevel:I

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->this$0:Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;

    iput-object p2, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$basePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$source:Ljava/lang/String;

    iput p5, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$securityLevel:I

    iput-object p6, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$saveKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 591
    const-class v0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    iget-object v2, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$basePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$source:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$securityLevel:I

    iget-object v7, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;->val$saveKey:Ljava/lang/String;

    const-string v3, "com.samsung.android.intent.action.RESPONSE_RESTORE_QUICKPANEL2"

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/qs/QSBackupRestoreManager;->access$200(Lcom/android/systemui/qs/QSBackupRestoreManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
