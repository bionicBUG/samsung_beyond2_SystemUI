.class Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "AppIconDragShadowBuilder.java"


# instance fields
.field final mDrawable:Landroid/graphics/drawable/Drawable;

.field final mIconSize:I


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mIconSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mIconSize:I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 45
    iget p0, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mIconSize:I

    div-int/lit8 p1, p0, 0x2

    mul-int/lit8 p0, p0, 0x2

    div-int/lit8 p0, p0, 0x3

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
