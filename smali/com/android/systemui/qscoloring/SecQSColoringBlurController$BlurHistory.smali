.class Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;
.super Ljava/lang/Object;
.source "SecQSColoringBlurController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qscoloring/SecQSColoringBlurController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlurHistory"
.end annotation


# instance fields
.field private mLastApplyHistory:Ljava/lang/String;

.field private mLastClearHistory:Ljava/lang/String;

.field private mTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qscoloring/SecQSColoringBlurController;)V
    .locals 1

    .line 308
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->this$0:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "null"

    .line 304
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->mTime:Ljava/lang/String;

    const-string p1, "nothing ! QuickStar is not blur messer!"

    .line 305
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->mLastApplyHistory:Ljava/lang/String;

    const-string p1, "nothing"

    .line 306
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->mLastClearHistory:Ljava/lang/String;

    .line 310
    const-class p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const-string v0, "[QuickStar]SecQSColoringBlurController"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    return-void
.end method


# virtual methods
.method public getDumpString()Ljava/lang/String;
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuickStar BlurController History "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- LastApply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->mLastApplyHistory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", LastClear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->mLastClearHistory:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->mTime:Ljava/lang/String;

    return-void
.end method

.method public putBlurModel(Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->mTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->getLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurModel;->gonnaBeClear()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 323
    iput-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->mLastClearHistory:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringBlurController$BlurHistory;->mLastApplyHistory:Ljava/lang/String;

    :goto_0
    return-void
.end method
