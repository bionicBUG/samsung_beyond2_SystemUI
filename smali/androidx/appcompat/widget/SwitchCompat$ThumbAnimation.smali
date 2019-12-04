.class Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "SwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbAnimation"
.end annotation


# instance fields
.field final mDiff:F

.field final mStartPosition:F

.field final synthetic this$0:Landroidx/appcompat/widget/SwitchCompat;


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1552
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->this$0:Landroidx/appcompat/widget/SwitchCompat;

    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method
