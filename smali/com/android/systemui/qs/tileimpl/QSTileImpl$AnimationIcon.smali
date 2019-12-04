.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationIcon"
.end annotation


# instance fields
.field private final mAnimatedResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1019
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;-><init>(ILcom/android/systemui/qs/tileimpl/QSTileImpl$1;)V

    .line 1020
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;->mAnimatedResId:I

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1026
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;->mAnimatedResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
