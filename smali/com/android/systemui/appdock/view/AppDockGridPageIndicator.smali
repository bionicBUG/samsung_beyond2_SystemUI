.class public Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;
.super Landroid/widget/LinearLayout;
.source "AppDockGridPageIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# static fields
.field static final UNFOCUSED_COLOR:I


# instance fields
.field private mCurrPosition:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#4c000000"

    .line 16
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->UNFOCUSED_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->mCurrPosition:I

    return-void
.end method


# virtual methods
.method animateCurrentPage(I)V
    .locals 3

    .line 67
    iget v0, p0, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->mCurrPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v2, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->UNFOCUSED_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 72
    iput p1, p0, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->mCurrPosition:I

    return-void
.end method

.method public synthetic lambda$setCount$0$AppDockGridPageIndicator(ILandroid/view/View;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "position=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->animateCurrentPage(I)V

    return-void
.end method

.method public setCount(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "cnt=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->mCurrPosition:I

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v2

    :goto_0
    if-ge v0, p1, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$layout;->appdock_grid_indicator_item:I

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->UNFOCUSED_COLOR:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 40
    new-instance v3, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockGridPageIndicator$cNlg2bS_1UEgohBxZ0WbupRgkjg;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockGridPageIndicator$cNlg2bS_1UEgohBxZ0WbupRgkjg;-><init>(Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->animateCurrentPage(I)V

    .line 47
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method
