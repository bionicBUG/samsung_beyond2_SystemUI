.class Lcom/android/systemui/appdock/view/AppDockGridViewPager$1;
.super Ljava/lang/Object;
.source "AppDockGridViewPager.java"

# interfaces
.implements Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$Listener;


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

    .line 40
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$1;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 43
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$1;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {v2}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ViewPager : scroll to pos=%d"

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$1;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->setCurrentItem(IZ)V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$1;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
