.class public Landroidx/appcompat/widget/SeslSwitchBar;
.super Landroid/widget/LinearLayout;
.source "SeslSwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;,
        Landroidx/appcompat/widget/SeslSwitchBar$SavedState;,
        Landroidx/appcompat/widget/SeslSwitchBar$OnSwitchChangeListener;
    }
.end annotation


# static fields
.field private static final SWITCH_OFF_STRING_RESOURCE_ID:I

.field private static final SWITCH_ON_STRING_RESOURCE_ID:I


# instance fields
.field private mBackground:Landroid/widget/LinearLayout;

.field private mBackgroundActivatedColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mLabel:Ljava/lang/String;

.field private mOffTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mOffTextId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mOnTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mOnTextId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field private mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

.field private final mSwitchChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/widget/SeslSwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    sget v0, Landroidx/appcompat/R$string;->sesl_switch_on:I

    sput v0, Landroidx/appcompat/widget/SeslSwitchBar;->SWITCH_ON_STRING_RESOURCE_ID:I

    .line 79
    sget v0, Landroidx/appcompat/R$string;->sesl_switch_off:I

    sput v0, Landroidx/appcompat/widget/SeslSwitchBar;->SWITCH_OFF_STRING_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 86
    sget v0, Landroidx/appcompat/R$attr;->seslSwitchBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/SeslSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$layout;->sesl_switchbar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 99
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    sget-object v2, Landroidx/appcompat/R$styleable;->SeslSwitchBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 103
    sget p3, Landroidx/appcompat/R$styleable;->SeslSwitchBar_seslSwitchBarBackgroundColor:I

    sget p4, Landroidx/appcompat/R$color;->sesl_switchbar_off_background_color_light:I

    .line 104
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 103
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mBackgroundColor:I

    .line 105
    sget p3, Landroidx/appcompat/R$styleable;->SeslSwitchBar_seslSwitchBarBackgroundActivatedColor:I

    sget p4, Landroidx/appcompat/R$color;->sesl_switchbar_on_background_color:I

    .line 106
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 105
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 107
    sget p4, Landroidx/appcompat/R$styleable;->SeslSwitchBar_seslSwitchBarTextActivatedColor:I

    sget v2, Landroidx/appcompat/R$color;->sesl_switchbar_on_text_color_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mOnTextColor:I

    .line 108
    sget p4, Landroidx/appcompat/R$styleable;->SeslSwitchBar_seslSwitchBarTextColor:I

    sget v2, Landroidx/appcompat/R$color;->sesl_switchbar_off_text_color_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mOffTextColor:I

    .line 109
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget p4, Landroidx/appcompat/R$attr;->isLightTheme:I

    invoke-virtual {p1, p4, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 113
    iget p1, p2, Landroid/util/TypedValue;->data:I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    const p1, 0xffffff

    and-int/2addr p1, p3

    if-eqz v0, :cond_1

    const/high16 p3, -0x34000000    # -3.3554432E7f

    goto :goto_1

    :cond_1
    const/high16 p3, 0x66000000

    :goto_1
    or-int/2addr p1, p3

    .line 115
    iput p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mBackgroundActivatedColor:I

    .line 118
    sget p1, Landroidx/appcompat/R$id;->sesl_switchbar_progress:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    .line 119
    sget p1, Landroidx/appcompat/R$id;->sesl_switchbar_container:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mBackground:Landroid/widget/LinearLayout;

    .line 120
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mBackground:Landroid/widget/LinearLayout;

    new-instance p3, Landroidx/appcompat/widget/SeslSwitchBar$1;

    invoke-direct {p3, p0}, Landroidx/appcompat/widget/SeslSwitchBar$1;-><init>(Landroidx/appcompat/widget/SeslSwitchBar;)V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget p1, Landroidx/appcompat/R$dimen;->sesl_switchbar_margin_start:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 130
    sget p3, Landroidx/appcompat/R$dimen;->sesl_switchbar_margin_end:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 131
    sget p4, Landroidx/appcompat/widget/SeslSwitchBar;->SWITCH_ON_STRING_RESOURCE_ID:I

    iput p4, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mOnTextId:I

    .line 132
    sget p4, Landroidx/appcompat/widget/SeslSwitchBar;->SWITCH_OFF_STRING_RESOURCE_ID:I

    iput p4, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mOffTextId:I

    .line 134
    sget p4, Landroidx/appcompat/R$id;->sesl_switchbar_text:I

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mTextView:Landroid/widget/TextView;

    .line 135
    iget-object p4, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 136
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 138
    sget p1, Landroidx/appcompat/R$id;->sesl_switchbar_switch:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslToggleSwitch;

    iput-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    .line 141
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setSaveEnabled(Z)V

    .line 142
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    sget p1, Landroidx/appcompat/R$string;->sesl_switch_on:I

    sget p2, Landroidx/appcompat/R$string;->sesl_switch_off:I

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslSwitchBar;->setSwitchBarText(II)V

    .line 145
    new-instance p1, Landroidx/appcompat/widget/SeslSwitchBar$2;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/SeslSwitchBar$2;-><init>(Landroidx/appcompat/widget/SeslSwitchBar;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->addOnSwitchChangeListener(Landroidx/appcompat/widget/SeslSwitchBar$OnSwitchChangeListener;)V

    .line 152
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 153
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 155
    new-instance p1, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;-><init>(Landroid/view/View;)V

    .line 156
    iget-object p2, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mBackground:Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 157
    iget-object p2, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 158
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->getActivityTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SeslSwitchBar$SwitchBarDelegate;->setSessionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/appcompat/widget/SeslSwitchBar;)Landroidx/appcompat/widget/SeslToggleSwitch;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 46
    sget v0, Landroidx/appcompat/widget/SeslSwitchBar;->SWITCH_ON_STRING_RESOURCE_ID:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 46
    sget v0, Landroidx/appcompat/widget/SeslSwitchBar;->SWITCH_OFF_STRING_RESOURCE_ID:I

    return v0
.end method

.method private getActivityTitle()Ljava/lang/String;
    .locals 2

    .line 349
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 350
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 351
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 352
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 353
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 355
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private propagateChecked(Z)V
    .locals 4

    .line 254
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 256
    iget-object v2, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SeslSwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-interface {v2, v3, p1}, Landroidx/appcompat/widget/SeslSwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroidx/appcompat/widget/SwitchCompat;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Landroidx/appcompat/widget/SeslSwitchBar$OnSwitchChangeListener;)V
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 267
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isChecked()Z
    .locals 0

    .line 219
    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 250
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 262
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/SeslSwitchBar;->propagateChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 337
    check-cast p1, Landroidx/appcompat/widget/SeslSwitchBar$SavedState;

    .line 338
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 340
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    iget-boolean v1, p1, Landroidx/appcompat/widget/SeslSwitchBar$SavedState;->checked:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslToggleSwitch;->setCheckedInternal(Z)V

    .line 341
    iget-boolean v0, p1, Landroidx/appcompat/widget/SeslSwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslSwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 342
    iget-boolean v0, p1, Landroidx/appcompat/widget/SeslSwitchBar$SavedState;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    iget-boolean p1, p1, Landroidx/appcompat/widget/SeslSwitchBar$SavedState;->visible:Z

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 345
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 327
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 329
    new-instance v1, Landroidx/appcompat/widget/SeslSwitchBar$SavedState;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SeslSwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 330
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Landroidx/appcompat/widget/SeslSwitchBar$SavedState;->checked:Z

    .line 331
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->isShowing()Z

    move-result p0

    iput-boolean p0, v1, Landroidx/appcompat/widget/SeslSwitchBar$SavedState;->visible:Z

    return-object v1
.end method

.method public performClick()Z
    .locals 0

    .line 164
    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 210
    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslToggleSwitch;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 224
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 228
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method public setSwitchBarText(II)V
    .locals 0

    .line 203
    iput p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mOnTextId:I

    .line 204
    iput p2, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mOffTextId:I

    .line 205
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method public setTextViewLabelAndBackground(Z)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mOnTextId:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mOffTextId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mLabel:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_1

    iget v1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mBackgroundActivatedColor:I

    goto :goto_1

    :cond_1
    iget v1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mBackgroundColor:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 179
    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mOnTextColor:I

    goto :goto_2

    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mOffTextColor:I

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 182
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mTextView:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 183
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 185
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mTextView:Landroid/widget/TextView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 186
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 190
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mLabel:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 193
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
