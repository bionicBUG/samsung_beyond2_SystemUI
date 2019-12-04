.class public final Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;
.super Landroid/os/Handler;
.source "BioUnlockPFImprover.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/BioUnlockPFImprover;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBioUnlockPFImprover.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BioUnlockPFImprover.kt\ncom/android/systemui/keyguard/BioUnlockPFImprover$handler$1\n*L\n1#1,498:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/BioUnlockPFImprover;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$handler$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    const-wide/16 v0, 0x0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$doNextFrame(Lcom/android/systemui/keyguard/BioUnlockPFImprover;JJ)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Long"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
