.class Lcom/android/systemui/statusbar/phone/ScrimController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field final synthetic val$scrim:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 738
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$100(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->lastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 742
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$200()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 743
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$300(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScrimController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->lastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$400(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    .line 748
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Landroid/view/View;

    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 749
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$500(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 752
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->val$scrim:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    .line 754
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->onAodTransitionEnd()V

    .line 758
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$700(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$800(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 759
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$800(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 760
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$802(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    return-void
.end method
