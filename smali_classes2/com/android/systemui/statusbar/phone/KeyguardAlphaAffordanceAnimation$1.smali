.class Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;
.super Ljava/lang/Object;
.source "KeyguardAlphaAffordanceAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;F)F

    .line 60
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;F)F

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)F

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;->setAlphaByAffordance(F)V

    return-void
.end method
