.class Lcom/android/systemui/qs/customize/SecQSCustomizer$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecQSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenTurnedOff  mIsClosing ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isShown ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQSCustomizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$500(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$500(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->hide()V

    :cond_1
    return-void
.end method
