.class Lcom/android/systemui/qs/QSAnimator$2;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSAnimator;


# virtual methods
.method public run()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator$2;->this$0:Lcom/android/systemui/qs/QSAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/QSAnimator;->access$100(Lcom/android/systemui/qs/QSAnimator;)V

    .line 413
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator$2;->this$0:Lcom/android/systemui/qs/QSAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/QSAnimator;->access$200(Lcom/android/systemui/qs/QSAnimator;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    return-void
.end method