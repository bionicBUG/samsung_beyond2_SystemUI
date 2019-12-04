.class public Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;
.super Landroid/widget/LinearLayout;
.source "FaceWidgetAdditionalInfoView.java"


# instance fields
.field private mCurrentRemoteViews:Landroid/widget/RemoteViews;

.field private mCurrentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private isLandscape()Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public setAdditionalInfoView(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentView:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 36
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentView:Landroid/view/View;

    .line 39
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentRemoteViews:Landroid/widget/RemoteViews;

    return-void
.end method

.method public updateAdditionInfoView()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateVisibility()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAdditionalInfoView;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 53
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
