.class Lcom/android/systemui/appdock/view/AppDockGridViewPager$2;
.super Ljava/lang/Object;
.source "AppDockGridViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockGridViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/view/AppDockGridViewPager;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$2;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 58
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/AppDockStateManager;->setGridViewPagerScrolling(Z)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
