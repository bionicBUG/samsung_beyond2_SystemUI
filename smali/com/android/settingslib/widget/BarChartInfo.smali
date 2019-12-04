.class public Lcom/android/settingslib/widget/BarChartInfo;
.super Ljava/lang/Object;
.source "BarChartInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/BarChartInfo$Builder;
    }
.end annotation


# instance fields
.field private mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

.field private final mDetails:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private final mDetailsOnClickListener:Landroid/view/View$OnClickListener;

.field private final mEmptyText:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private final mTitle:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# virtual methods
.method public getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

    return-object p0
.end method

.method public getDetails()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetails:I

    return p0
.end method

.method public getDetailsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getEmptyText()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mEmptyText:I

    return p0
.end method

.method public getTitle()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mTitle:I

    return p0
.end method
