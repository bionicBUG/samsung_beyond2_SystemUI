.class public Lcom/android/settingslib/widget/BarViewInfo;
.super Ljava/lang/Object;
.source "BarViewInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/widget/BarViewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mHeight:I

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mNormalizedHeight:I

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static synthetic lambda$compareTo$0(Lcom/android/settingslib/widget/BarViewInfo;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/android/settingslib/widget/BarViewInfo;)I
    .locals 1

    .line 71
    sget-object v0, Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 72
    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/android/settingslib/widget/BarViewInfo;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/BarViewInfo;->compareTo(Lcom/android/settingslib/widget/BarViewInfo;)I

    move-result p0

    return p0
.end method

.method getClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 109
    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getHeight()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    return p0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getNormalizedHeight()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mNormalizedHeight:I

    return p0
.end method

.method getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method setNormalizedHeight(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 113
    iput p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mNormalizedHeight:I

    return-void
.end method
