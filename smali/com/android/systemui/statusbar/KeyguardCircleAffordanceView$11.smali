.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 426
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->releaseShader()V

    .line 427
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v0, p1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZZ)V

    .line 432
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    .line 435
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$602(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 436
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    return-void
.end method
