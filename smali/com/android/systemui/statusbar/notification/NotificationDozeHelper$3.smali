.class Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationDozeHelper.java"


# instance fields
.field final synthetic val$view:Landroid/view/View;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->val$view:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->access$000()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->val$view:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->access$000()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
