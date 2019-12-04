.class Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;
.super Ljava/lang/Object;
.source "KeyguardIndicationTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;


# virtual methods
.method public run()V
    .locals 7

    .line 155
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x190

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method
