.class public final Lcom/android/systemui/util/UiThreadMonitor$callback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "UiThreadMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/UiThreadMonitor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/UiThreadMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/UiThreadMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/android/systemui/util/UiThreadMonitor$callback$1;->this$0:Lcom/android/systemui/util/UiThreadMonitor;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(Z)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor$callback$1;->this$0:Lcom/android/systemui/util/UiThreadMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/util/UiThreadMonitor;->access$setDreaming$p(Lcom/android/systemui/util/UiThreadMonitor;Z)V

    .line 80
    invoke-static {}, Lcom/android/systemui/util/UiThreadMonitorKt;->access$getENABLE_PAUSE$p()Z

    move-result v0

    const-string v1, "onDreamingStateChanged "

    const-string v2, "UiThreadMonitor"

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/util/UiThreadMonitor$callback$1;->this$0:Lcom/android/systemui/util/UiThreadMonitor;

    invoke-static {p0}, Lcom/android/systemui/util/UiThreadMonitor;->access$pause(Lcom/android/systemui/util/UiThreadMonitor;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/UiThreadMonitor$callback$1;->this$0:Lcom/android/systemui/util/UiThreadMonitor;

    invoke-static {p1}, Lcom/android/systemui/util/UiThreadMonitor;->access$sendAsyncMsg(Lcom/android/systemui/util/UiThreadMonitor;)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/util/UiThreadMonitor$callback$1;->this$0:Lcom/android/systemui/util/UiThreadMonitor;

    invoke-static {p0}, Lcom/android/systemui/util/UiThreadMonitor;->access$resume(Lcom/android/systemui/util/UiThreadMonitor;)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ignored"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
