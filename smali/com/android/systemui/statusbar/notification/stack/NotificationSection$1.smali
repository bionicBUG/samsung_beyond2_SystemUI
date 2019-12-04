.class Lcom/android/systemui/statusbar/notification/stack/NotificationSection$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationSection.java"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSection;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->access$000(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->access$100(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)Landroid/graphics/Rect;

    move-result-object p1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->access$202(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
