.class public Lcom/altamirasoft/path_animation/PaintLineModelFactory;
.super Ljava/lang/Object;
.source "PaintLineModelFactory.java"


# instance fields
.field defaultLineCap:Landroid/graphics/Paint$Cap;

.field defaultLineColor:I

.field defaultLineWidth:I

.field listener:Lcom/altamirasoft/path_animation/PathListener;

.field mLineCap:[Landroid/graphics/Paint$Cap;

.field mLineColor:[I

.field mLineWidth:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 16
    iput v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineWidth:I

    const/high16 v0, -0x1000000

    .line 17
    iput v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineColor:I

    .line 18
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineCap:Landroid/graphics/Paint$Cap;

    .line 34
    new-instance v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;-><init>(Lcom/altamirasoft/path_animation/PaintLineModelFactory;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->listener:Lcom/altamirasoft/path_animation/PathListener;

    return-void
.end method
