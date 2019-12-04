.class final Lcom/android/systemui/keyguard/BioUnlockPFImprover$frameCallback$1;
.super Ljava/lang/Object;
.source "BioUnlockPFImprover.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/BioUnlockPFImprover;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$frameCallback$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 3

    .line 64
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getDEBUG$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFrame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BioUnlock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$frameCallback$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-static {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getHandler$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$frameCallback$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-static {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getHandler$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$frameCallback$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-static {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getHandler$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v2, "msg"

    .line 73
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 74
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$frameCallback$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getHandler$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method
