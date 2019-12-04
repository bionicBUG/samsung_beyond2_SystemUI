.class Lcom/android/systemui/stackdivider/DividerHandleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerHandleView.java"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerHandleView;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerHandleView$3;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->access$202(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
