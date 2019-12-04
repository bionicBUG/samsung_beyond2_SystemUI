.class Lcom/android/systemui/qs/SecQsAnimator$2;
.super Ljava/lang/Object;
.source "SecQsAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/SecQsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecQsAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQsAnimator;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator$2;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator$2;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQsAnimator;->updateAnimators()V

    .line 747
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator$2;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQsAnimator;->access$300(Lcom/android/systemui/qs/SecQsAnimator;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQsAnimator;->setPosition(F)V

    return-void
.end method
