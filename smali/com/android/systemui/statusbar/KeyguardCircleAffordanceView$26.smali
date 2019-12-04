.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startHintAnimationPhase1(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1196
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1201
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;->mCancelled:Z

    if-eqz p1, :cond_0

    .line 1202
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startHintAnimationPhase1 End: ,mRight="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardCircleAffordanceView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;->val$onFinishedListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 1207
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1210
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startHintAnimationPhase2(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
