.class Lcom/android/systemui/appdock/view/AppDockWindow$2;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "AppDockWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/view/AppDockWindow;
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

    .line 248
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockWindow$2;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPinnedStackAnimationEnded()V
    .locals 0

    .line 263
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 264
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$2;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-static {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->access$100(Lcom/android/systemui/appdock/view/AppDockWindow;)V

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 0

    .line 251
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 252
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$2;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-static {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->access$100(Lcom/android/systemui/appdock/view/AppDockWindow;)V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    .line 257
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 258
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$2;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-static {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->access$100(Lcom/android/systemui/appdock/view/AppDockWindow;)V

    return-void
.end method
