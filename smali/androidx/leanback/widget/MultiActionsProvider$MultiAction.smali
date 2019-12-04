.class public Landroidx/leanback/widget/MultiActionsProvider$MultiAction;
.super Ljava/lang/Object;
.source "MultiActionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/MultiActionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiAction"
.end annotation


# instance fields
.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mIndex:I


# virtual methods
.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/leanback/widget/MultiActionsProvider$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget p0, p0, Landroidx/leanback/widget/MultiActionsProvider$MultiAction;->mIndex:I

    aget-object p0, v0, p0

    return-object p0
.end method
