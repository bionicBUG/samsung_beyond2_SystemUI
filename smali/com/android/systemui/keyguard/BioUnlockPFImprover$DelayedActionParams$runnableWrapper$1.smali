.class final Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams$runnableWrapper$1;
.super Ljava/lang/Object;
.source "BioUnlockPFImprover.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams$runnableWrapper$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams$runnableWrapper$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;

    invoke-static {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->access$isDiscard$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams$runnableWrapper$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;

    invoke-static {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->access$getRunnable$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 459
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams$runnableWrapper$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->discard()V

    :cond_0
    return-void
.end method
