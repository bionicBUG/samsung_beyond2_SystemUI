.class public Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;
.super Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;
.source "FaceWidgetRemoteViewsItem.java"


# instance fields
.field private final mAdditionalView:Landroid/widget/RemoteViews;

.field private final mBigView:Landroid/widget/RemoteViews;

.field private mCreatedTime:J

.field private mDisableChangeToCurrent:Z

.field private final mHasOwnBigPage:Z

.field private final mIsChangeCurrentPage:Z

.field private final mIsShowing:Z

.field private mLastUpdatedTime:J

.field private final mPageId:Ljava/lang/String;

.field private final mSmallView:Landroid/widget/RemoteViews;

.field private final mSmallViewAOD:Landroid/widget/RemoteViews;

.field public final packageNamePageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "package"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->facewidget_remoteviews_page:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;-><init>(Ljava/lang/String;IZ)V

    .line 56
    iput-boolean v2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mDisableChangeToCurrent:Z

    const/4 v0, 0x1

    const-string/jumbo v1, "show"

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mIsShowing:Z

    const-string/jumbo v1, "small"

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    .line 63
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mIsShowing:Z

    const-string v3, "FaceWidgetRemoteViewsItem"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->isNotRemoteViews(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrong small view: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "changeCurrentPage"

    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mIsChangeCurrentPage:Z

    const-string v0, "additional"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mAdditionalView:Landroid/widget/RemoteViews;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mAdditionalView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->isNotRemoteViews(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong additional view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "big"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->isNotRemoteViews(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong big view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "smallAOD"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mIsShowing:Z

    if-eqz v0, :cond_3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no view for AOD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->isNotRemoteViews(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong small view for AOD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "pageId"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mPageId:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mPageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "no pageId"

    .line 90
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mPageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->packageNamePageId:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mPageId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->getPkgNameForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->packageNamePageId:Ljava/lang/String;

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_7

    const-string v0, "hasOwnBigPage"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mHasOwnBigPage:Z

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mLastUpdatedTime:J

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mCreatedTime:J

    return-void
.end method

.method private static isNotRemoteViews(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 117
    instance-of p0, p0, Landroid/widget/RemoteViews;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public disableChangeToCurrent()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mDisableChangeToCurrent:Z

    return-void
.end method

.method public getAODView(Z)Landroid/widget/RemoteViews;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 149
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "FaceWidgetRemoteViewsItem"

    const-string v2, "getAODView %s %s"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    return-object p0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getAdditionalView()Landroid/widget/RemoteViews;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mAdditionalView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getCreatedTime()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mCreatedTime:J

    return-wide v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mLastUpdatedTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->packageNamePageId:Ljava/lang/String;

    return-object p0
.end method

.method public getView(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Landroid/widget/RemoteViews;
    .locals 1

    .line 133
    sget-object v0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem$1;->$SwitchMap$com$android$systemui$facewidget$pages$FaceWidgetPageState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    return-object p0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    return-object p0

    .line 139
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    return-object p0

    .line 137
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public hasBigView()Z
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasOwnBigPage()Z
    .locals 0

    .line 182
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mHasOwnBigPage:Z

    return p0
.end method

.method protected inflatePage(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->inflatePage(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;

    .line 107
    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsPage;->setItem(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V

    return-object p1
.end method

.method public isEnabled()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mIsShowing:Z

    return p0
.end method

.method public isEnabledChangeToCurrent()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mDisableChangeToCurrent:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mIsChangeCurrentPage:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSameBigAndSmall()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCreatedTime(J)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mCreatedTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mPageId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mIsShowing:Z

    .line 124
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallViewAOD:Landroid/widget/RemoteViews;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mSmallView:Landroid/widget/RemoteViews;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mBigView:Landroid/widget/RemoteViews;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mAdditionalView:Landroid/widget/RemoteViews;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mIsChangeCurrentPage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mDisableChangeToCurrent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;->mHasOwnBigPage:Z

    .line 125
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xa

    aput-object p0, v0, v1

    const-string p0, "FaceWidgetRemoteViewsItem [%s, %s, %s, %s, %s, %s, %s, %s, %s, %s] - %s"

    .line 123
    invoke-static {p0, v0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
