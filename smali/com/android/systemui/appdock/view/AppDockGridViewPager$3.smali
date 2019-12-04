.class Lcom/android/systemui/appdock/view/AppDockGridViewPager$3;
.super Ljava/lang/Object;
.source "AppDockGridViewPager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockGridViewPager;->requestInitCurrentPage()V
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

    .line 123
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$3;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$3;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->setCurrentItem(IZ)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$3;->this$0:Lcom/android/systemui/appdock/view/AppDockGridViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p0, 0x1

    return p0
.end method
