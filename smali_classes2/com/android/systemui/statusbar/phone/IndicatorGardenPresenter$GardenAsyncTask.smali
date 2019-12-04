.class Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;
.super Lcom/android/systemui/util/SimpleAsyncTask;
.source "IndicatorGardenPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GardenAsyncTask"
.end annotation


# instance fields
.field private mBackgroundJob:Ljava/lang/Runnable;

.field private mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

.field private mLayoutJob:Ljava/lang/Runnable;

.field private mModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/util/SimpleAsyncTask;-><init>()V

    .line 192
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    .line 193
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$IndicatorGardenPresenter$GardenAsyncTask$L4zXR-JM4YexC2n2MyPkpUSjHRQ;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$IndicatorGardenPresenter$GardenAsyncTask$L4zXR-JM4YexC2n2MyPkpUSjHRQ;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mBackgroundJob:Ljava/lang/Runnable;

    .line 198
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$IndicatorGardenPresenter$GardenAsyncTask$8wTD_bKxWvm7oPVGdzCmQVgUn58;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$IndicatorGardenPresenter$GardenAsyncTask$8wTD_bKxWvm7oPVGdzCmQVgUn58;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mLayoutJob:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$IndicatorGardenPresenter$GardenAsyncTask()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->makeGardenModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$IndicatorGardenPresenter$GardenAsyncTask()V
    .locals 2

    .line 199
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    if-eqz v1, :cond_0

    .line 200
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 202
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    :cond_0
    return-void
.end method

.method protected onCancelled()V
    .locals 1

    .line 213
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 215
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    return-void
.end method

.method public submitTask()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mBackgroundJob:Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->mLayoutJob:Ljava/lang/Runnable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SimpleAsyncTask;->submit([Ljava/lang/Runnable;)V

    return-void
.end method
