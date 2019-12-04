.class Landroidx/appcompat/widget/ActionMenuPresenter$OverflowTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowTextView"
.end annotation


# instance fields
.field private mSBBHelper:Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;

.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1040
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1041
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;

    if-eqz p0, :cond_0

    .line 1042
    invoke-virtual {p0}, Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1048
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 1049
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;

    if-eqz p0, :cond_0

    .line 1050
    invoke-virtual {p0}, Landroidx/appcompat/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1056
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1060
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 1061
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowTextView;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method
