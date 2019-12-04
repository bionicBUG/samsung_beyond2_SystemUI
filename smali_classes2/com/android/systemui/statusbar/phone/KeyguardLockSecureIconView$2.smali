.class Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$2;
.super Ljava/lang/Object;
.source "KeyguardLockSecureIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;


# virtual methods
.method public run()V
    .locals 7

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x190

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method
