.class final Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarHandler$2;
.super Ljava/lang/Object;
.source "BioUnlockPFImprover.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBarHandler(I)V
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

    iput-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarHandler$2;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarHandler$2;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-static {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getDelayedRunnableList$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 284
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarHandler$2;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-static {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$getDelayedRunnableList$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
