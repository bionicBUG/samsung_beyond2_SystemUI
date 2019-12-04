.class public Lcom/android/systemui/appdock/view/AppDockSearchBarView;
.super Landroid/widget/LinearLayout;
.source "AppDockSearchBarView.java"

# interfaces
.implements Lcom/android/systemui/appdock/view/VisibilityInterface;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/view/AppDockSearchBarView$TextChangeListenerInterface;
    }
.end annotation


# instance fields
.field mClearButton:Landroid/widget/ImageView;

.field mEditText:Landroid/widget/EditText;

.field mLastConfig:Landroid/content/res/Configuration;

.field mListener:Lcom/android/systemui/appdock/view/AppDockSearchBarView$TextChangeListenerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mLastConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method private reset()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mClearButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private updateHintText()V
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    sget v0, Lcom/android/systemui/R$string;->sidescreen_applist_search:I

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(I)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->reset()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$AppDockSearchBarView(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->updateHintText()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "re-arrange child views and update text."

    .line 91
    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mLastConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 50
    sget v0, Lcom/android/systemui/R$id;->appdock_search_edit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    .line 51
    sget v0, Lcom/android/systemui/R$id;->appdock_search_edit_clear:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mClearButton:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/systemui/appdock/view/AppDockSearchBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/AppDockSearchBarView$1;-><init>(Lcom/android/systemui/appdock/view/AppDockSearchBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mClearButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockSearchBarView$mQ5CrS_46RHYP4rim95QoBdbElk;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockSearchBarView$mQ5CrS_46RHYP4rim95QoBdbElk;-><init>(Lcom/android/systemui/appdock/view/AppDockSearchBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockSearchBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/AppDockSearchBarView$2;-><init>(Lcom/android/systemui/appdock/view/AppDockSearchBarView;)V

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->addListener(Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$Listener;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 113
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->HEIGHT:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_searchbar_height:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 114
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->LEFT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_searchbar_margin_left_right:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 115
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_searchbar_margin_left_right:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 116
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_searchbar_margin_top:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 117
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_searchbar_margin_bottom:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 119
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    sget p1, Lcom/android/systemui/R$dimen;->appdock_searchbar_text_size:I

    invoke-static {p0, p1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setTextDimenSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 145
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mListener:Lcom/android/systemui/appdock/view/AppDockSearchBarView$TextChangeListenerInterface;

    invoke-interface {p2, p1}, Lcom/android/systemui/appdock/view/AppDockSearchBarView$TextChangeListenerInterface;->onTextChanged(Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setListener(Lcom/android/systemui/appdock/view/AppDockSearchBarView$TextChangeListenerInterface;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mListener:Lcom/android/systemui/appdock/view/AppDockSearchBarView$TextChangeListenerInterface;

    return-void
.end method

.method public show()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->reset()V

    return-void
.end method
