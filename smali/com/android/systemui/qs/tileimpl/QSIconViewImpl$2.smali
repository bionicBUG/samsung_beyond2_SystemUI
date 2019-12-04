.class Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSIconViewImpl.java"


# instance fields
.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$2;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
