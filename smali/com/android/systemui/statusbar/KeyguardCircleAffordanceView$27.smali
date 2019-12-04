.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startHintAnimationPhase2(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1228
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1231
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startHintAnimationPhase2 End: ,mRight="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardCircleAffordanceView"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->val$onFinishedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1236
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1238
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setShortcutPreviewShowing(Z)V

    .line 1239
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->releaseShader()V

    return-void
.end method
