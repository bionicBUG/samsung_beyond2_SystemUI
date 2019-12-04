.class public Landroidx/leanback/graphics/FitWidthBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FitWidthBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;
    }
.end annotation


# static fields
.field public static final PROPERTY_VERTICAL_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/graphics/FitWidthBitmapDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

.field final mDest:Landroid/graphics/Rect;

.field mMutated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 214
    invoke-static {}, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->getVerticalOffsetIntProperty()Landroid/util/IntProperty;

    move-result-object v0

    sput-object v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->PROPERTY_VERTICAL_OFFSET:Landroid/util/Property;

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "verticalOffset"

    invoke-direct {v0, v1, v2}, Landroidx/leanback/graphics/FitWidthBitmapDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->PROPERTY_VERTICAL_OFFSET:Landroid/util/Property;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mMutated:Z

    .line 77
    new-instance v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    invoke-direct {v0}, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;-><init>()V

    iput-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    return-void
.end method

.method constructor <init>(Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mMutated:Z

    .line 81
    iput-object p1, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    return-void
.end method

.method static getVerticalOffsetIntProperty()Landroid/util/IntProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/IntProperty<",
            "Landroidx/leanback/graphics/FitWidthBitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$2;

    const-string/jumbo v1, "verticalOffset"

    invoke-direct {v0, v1}, Landroidx/leanback/graphics/FitWidthBitmapDrawable$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private validateSource()Landroid/graphics/Rect;
    .locals 1

    .line 199
    iget-object p0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mSource:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 200
    iget-object p0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mDefaultSource:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 152
    iget-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 154
    iget-object v1, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 155
    iget-object v2, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget v2, v2, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mOffset:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 158
    invoke-direct {p0}, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->validateSource()Landroid/graphics/Rect;

    move-result-object v1

    .line 159
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 160
    iget-object v3, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v2, v5

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 162
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 163
    iget-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v3, v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    iget-object v0, v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, p0, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 164
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 182
    iget-object p0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object p0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 86
    iget-object p0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    return-object p0
.end method

.method public getOpacity()I
    .locals 1

    .line 193
    iget-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object p0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    const/16 v0, 0xff

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x3

    :goto_1
    return p0
.end method

.method public getVerticalOffset()I
    .locals 0

    .line 147
    iget-object p0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget p0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mOffset:I

    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 91
    iget-boolean v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 92
    new-instance v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v1, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    invoke-direct {v0, v1}, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;-><init>(Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;)V

    iput-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 187
    iget-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 188
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iput p1, v0, Landroidx/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mOffset:I

    .line 139
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
