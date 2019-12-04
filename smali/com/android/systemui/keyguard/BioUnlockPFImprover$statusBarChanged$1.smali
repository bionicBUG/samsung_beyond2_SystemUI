.class final Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarChanged$1;
.super Ljava/lang/Object;
.source "BioUnlockPFImprover.kt"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/BioUnlockPFImprover;->statusBarChanged(Landroid/view/ViewGroup;II)V
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

    iput-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarChanged$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request for resizing / lap time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BioUnlock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarChanged$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-static {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$isForegroundShownCalled$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarChanged$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$doNextFrame(Lcom/android/systemui/keyguard/BioUnlockPFImprover;JJ)V

    :cond_0
    return-void
.end method
