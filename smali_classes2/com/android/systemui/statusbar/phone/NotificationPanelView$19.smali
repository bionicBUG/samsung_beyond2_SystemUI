.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$icon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# virtual methods
.method public run()V
    .locals 7

    .line 3785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;->val$icon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method
