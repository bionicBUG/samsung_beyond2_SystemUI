.class Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;
.super Ljava/lang/Object;
.source "KeyguardSecIndicationController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStartedWakingUp$0$KeyguardSecIndicationController$2()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$700(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$202(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$402(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$600(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeAllIndications()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 8

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$202(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getBiometricStopHelpText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 302
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationController$2$zu8yKk6q8V0Z5bPFuQzzkGQQ1vI;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationController$2$zu8yKk6q8V0Z5bPFuQzzkGQQ1vI;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;)V

    .line 303
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    .line 301
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$402(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
