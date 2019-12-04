.class public Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;
.super Ljava/lang/Object;
.source "SeslShowButtonBackgroundHelper.java"


# instance fields
.field private mBackgroundOff:Landroid/graphics/drawable/Drawable;

.field private mBackgroundOn:Landroid/graphics/drawable/Drawable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mView:Landroid/view/View;


# virtual methods
.method public updateButtonBackground()V
    .locals 3

    .line 44
    iget-object v0, p0, Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string/jumbo v2, "show_button_background"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 45
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateOverflowButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 49
    iput-object p1, p0, Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    return-void
.end method
