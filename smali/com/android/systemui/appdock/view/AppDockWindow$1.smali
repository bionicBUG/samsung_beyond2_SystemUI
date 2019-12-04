.class Lcom/android/systemui/appdock/view/AppDockWindow$1;
.super Ljava/lang/Object;
.source "AppDockWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockWindow;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/view/AppDockWindow;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockWindow$1;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 146
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$1;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockWindow;->startEnterAnimation()V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$1;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    iget-object v0, v0, Lcom/android/systemui/appdock/view/AppDockWindow;->mDragLayer:Lcom/android/systemui/appdock/view/AppDockDragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p0, 0x1

    return p0
.end method
