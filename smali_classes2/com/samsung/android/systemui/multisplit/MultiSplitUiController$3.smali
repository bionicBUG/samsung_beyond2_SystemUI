.class Lcom/samsung/android/systemui/multisplit/MultiSplitUiController$3;
.super Lcom/samsung/android/multitasking/listeners/multisplit/IMinimizeListener$Stub;
.source "MultiSplitUiController.java"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;


# direct methods
.method static synthetic lambda$onMinimizeChanged$0(Z)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMinimizeChanged: minimized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiSplitUiController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onMinimizeChanged(Z)V
    .locals 1

    .line 96
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitUiController$3;->this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;

    invoke-static {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;->access$000(Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;)Lcom/samsung/android/systemui/multisplit/MultiSplitUiController$H;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitUiController$3$SdXenyrBUHRQTTwU10Xa8FB8LlU;

    invoke-direct {v0, p1}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitUiController$3$SdXenyrBUHRQTTwU10Xa8FB8LlU;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
