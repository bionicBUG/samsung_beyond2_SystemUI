.class Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAlphaAffordanceAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;Ljava/lang/Runnable;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$202(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;->setPlayingAlphaAnimation(Z)V

    .line 76
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->mCancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$2;->val$runnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 77
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
