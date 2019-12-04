.class Landroidx/leanback/app/DetailsBackgroundVideoHelper$1;
.super Landroidx/leanback/widget/ParallaxTarget;
.source "DetailsBackgroundVideoHelper.java"


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/DetailsBackgroundVideoHelper;


# virtual methods
.method public update(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 100
    iget-object p0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper$1;->this$0:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->updateState(I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper$1;->this$0:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->updateState(I)V

    :goto_0
    return-void
.end method
