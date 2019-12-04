.class public Lcom/android/systemui/appdock/view/AppDockDragTargetView;
.super Landroid/widget/ImageView;
.source "AppDockDragTargetView.java"

# interfaces
.implements Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;
.implements Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;


# instance fields
.field mAppInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/appdock/model/AppDockItemInfo;)V
    .locals 0
    .param p2    # Lcom/android/systemui/appdock/model/AppDockItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/android/systemui/appdock/view/AppDockDragTargetView;->mAppInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 22
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragTargetView;->mAppInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->addCallback(Lcom/android/systemui/appdock/model/AppDockItemInfo$ItemCallback;)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockDragTargetView;->mAppInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    return-object p0
.end method

.method public onAppDataLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 30
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 31
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockDragTargetView;->mAppInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->loadAppInfoData(Lcom/android/systemui/appdock/model/AppDockItemInfo;)Ljava/lang/Runnable;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 43
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 44
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 37
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    return-void
.end method
