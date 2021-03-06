.class public Lcom/altamirasoft/path_animation/SvgHelper;
.super Ljava/lang/Object;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;
    }
.end annotation


# instance fields
.field private final mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourcePaint:Landroid/graphics/Paint;

.field private mSvg:Lcom/caverock/androidsvg/SVG;


# direct methods
.method static synthetic access$000(Lcom/altamirasoft/path_animation/SvgHelper;)Landroid/graphics/Paint;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSourcePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$100(Lcom/altamirasoft/path_animation/SvgHelper;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mPaths:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getPathsForViewport(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    new-instance v0, Lcom/altamirasoft/path_animation/SvgHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/altamirasoft/path_animation/SvgHelper$1;-><init>(Lcom/altamirasoft/path_animation/SvgHelper;II)V

    .line 112
    iget-object v1, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getDocumentViewBox()Landroid/graphics/RectF;

    move-result-object v1

    int-to-float p1, p1

    .line 113
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v2, p1, v2

    int-to-float p2, p2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 116
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    .line 117
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v2

    sub-float/2addr p2, v1

    div-float/2addr p2, v3

    .line 115
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 118
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 120
    iget-object p1, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V

    .line 122
    iget-object p0, p0, Lcom/altamirasoft/path_animation/SvgHelper;->mPaths:Ljava/util/List;

    return-object p0
.end method
