.class Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;
.super Ljava/lang/Object;
.source "PaintLineModelFactory.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/altamirasoft/path_animation/PaintLineModelFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;


# direct methods
.method constructor <init>(Lcom/altamirasoft/path_animation/PaintLineModelFactory;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineCapStyle(I)Landroid/graphics/Paint$Cap;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineCap:[Landroid/graphics/Paint$Cap;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 52
    aget-object p0, v0, p1

    return-object p0

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object p0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineCap:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method public getLineColor(I)I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineColor:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 45
    aget p0, v0, p1

    return p0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget p0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineColor:I

    return p0
.end method

.method public getLineWidth(I)I
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->mLineWidth:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 38
    aget p0, v0, p1

    return p0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PaintLineModelFactory;

    iget p0, p0, Lcom/altamirasoft/path_animation/PaintLineModelFactory;->defaultLineWidth:I

    return p0
.end method
