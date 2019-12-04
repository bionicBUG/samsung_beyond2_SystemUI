.class public Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;
.super Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.source "CustomizerPagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizerTilePage"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 642
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View$OnDragListener;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View$OnDragListener;)V

    .line 637
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    return-void
.end method


# virtual methods
.method public isFull()Z
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v1, p0

    if-lt v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setMatrix(II)V
    .locals 0

    .line 658
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 659
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    return-void
.end method

.method public setTileMargin(II)V
    .locals 0

    .line 664
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    .line 665
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileHorizontalMargin:I

    return-void
.end method

.method public updateResources()Z
    .locals 2

    const-string v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "updateResources 2"

    .line 647
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-super {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->updateResources()Z

    move-result p0

    return p0
.end method
