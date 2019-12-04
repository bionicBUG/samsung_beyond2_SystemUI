.class Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AppPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/apppickerview/widget/AppPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridSpacingItemDecoration"
.end annotation


# instance fields
.field private density:F

.field private includeEdge:Z

.field private spacing:I

.field private spacingTop:I

.field private spanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 263
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 264
    iput p1, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spanCount:I

    .line 265
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->density:F

    int-to-float p1, p2

    .line 266
    iget p2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacing:I

    const/high16 p1, 0x41400000    # 12.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 267
    iput p1, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacingTop:I

    .line 268
    iput-boolean p3, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 273
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 274
    iget p3, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spanCount:I

    rem-int p4, p2, p3

    .line 276
    iget-boolean v0, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->includeEdge:Z

    if-eqz v0, :cond_1

    .line 277
    iget v0, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    sub-int v1, v0, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, v0

    .line 278
    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    if-ge p2, p3, :cond_0

    .line 280
    iget p2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacingTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 282
    :cond_0
    iget p0, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacingTop:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 284
    :cond_1
    iget p0, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacing:I

    mul-int p2, p4, p0

    div-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p0

    .line 285
    div-int/2addr p4, p3

    sub-int/2addr p0, p4

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method
