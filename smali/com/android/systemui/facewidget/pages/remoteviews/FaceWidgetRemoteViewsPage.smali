.class public Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;
.super Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
.source "FaceWidgetRemoteViewsPage.java"


# instance fields
.field private mChildView:Landroid/view/View;

.field private mItem:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

.field private mRemoteViewHolder:Landroid/widget/FrameLayout;

.field private mRestrictedHolderSmallHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x2

    .line 50
    iput p1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mRestrictedHolderSmallHeight:I

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->facewidget_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mRestrictedHolderSmallHeight:I

    return-void
.end method

.method private initContentView(Landroid/view/View;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->initTransitionName(Landroid/view/View;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)V

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->initPadding(Landroid/view/View;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mItem:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->hasBigView()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 162
    new-instance p2, Lcom/android/systemui/facewidget/pages/remoteviews/-$$Lambda$FaceWidgetRemoteViewsPage$0zGYFyIF5U5lQJiD3izjy5uSN_U;

    invoke-direct {p2, p0}, Lcom/android/systemui/facewidget/pages/remoteviews/-$$Lambda$FaceWidgetRemoteViewsPage$0zGYFyIF5U5lQJiD3izjy5uSN_U;-><init>(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initPadding(Landroid/view/View;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)V
    .locals 3

    .line 176
    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p2, v0, :cond_2

    .line 178
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 182
    iget p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mNavigationBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 184
    iget p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mNavigationBarHeight:I

    move v2, v1

    move v1, p0

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    .line 187
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    .line 187
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method private initTransitionName(Landroid/view/View;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)V
    .locals 2

    .line 167
    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const-string v1, "remoteviews_page_small"

    if-ne p2, v0, :cond_1

    .line 169
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mItem:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->isSameBigAndSmall()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "remoteviews_page_big"

    .line 168
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mChildView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p1, -0x2

    .line 152
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method protected getContentsView(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Landroid/view/View;
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mItem:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->getView(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->getTag()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "failed to apply view. layout id : %d, package name : %s"

    invoke-static {p0, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_2

    .line 136
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->initContentView(Landroid/view/View;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)V

    .line 137
    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq p1, v0, :cond_2

    .line 138
    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mChildView:Landroid/view/View;

    goto :goto_1

    .line 140
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mChildView:Landroid/view/View;

    :goto_1
    return-object v2

    .line 132
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get view: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mItem:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->packageNamePageId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mRemoteViewHolder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mItem:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->packageNamePageId:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceWidgetRemoteViewsPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_Full"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 0

    if-eqz p1, :cond_0

    .line 210
    invoke-static {}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateDefaultOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    const/4 p1, 0x5

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setTransitionType(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    return-object p0

    .line 214
    :cond_0
    invoke-static {}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateMoveOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    return-object p0
.end method

.method public hasOwnBigPage()Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mItem:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->hasOwnBigPage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$initContentView$0$FaceWidgetRemoteViewsPage(Landroid/view/View;)V
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->showFaceWidgetFullScreen()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 194
    invoke-super {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 199
    invoke-super {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 84
    sget v0, Lcom/android/systemui/R$id;->facewidget_remoteviews_page_holder:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mRemoteViewHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 224
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 226
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 228
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 230
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMeasure() height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", small max = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mRestrictedHolderSmallHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->SMALL:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mRestrictedHolderSmallHeight:I

    if-le p2, v1, :cond_1

    move p2, v1

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMeasure() final height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 241
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method public varargs refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setItem(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mItem:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    return-void
.end method

.method public updateGravity(IZ)V
    .locals 1

    .line 95
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    return-void

    .line 100
    :cond_0
    iget p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    if-ne p2, p1, :cond_1

    return-void

    .line 104
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->mChildView:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 105
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setGravityInFrameLayout(Landroid/view/View;I)V

    .line 108
    :cond_2
    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    return-void
.end method
