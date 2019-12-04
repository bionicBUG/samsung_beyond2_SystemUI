.class Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 752
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$7;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    .line 753
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$7;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->access$502(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 754
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$7;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->access$002(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;F)F

    return-void
.end method
