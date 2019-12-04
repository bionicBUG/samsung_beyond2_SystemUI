.class Lcom/android/systemui/appdock/view/AppDockWindow$4;
.super Landroid/telephony/PhoneStateListener;
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

    .line 372
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockWindow$4;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$4;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    iget-boolean v0, v0, Lcom/android/systemui/appdock/view/AppDockWindow;->mCheckStateAfterShowing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "mCheckStateAfterShowing=%b, state=%d"

    invoke-static {v0, p2}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iget-object p2, p0, Lcom/android/systemui/appdock/view/AppDockWindow$4;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    iget-boolean v0, p2, Lcom/android/systemui/appdock/view/AppDockWindow;->mCheckStateAfterShowing:Z

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 378
    invoke-virtual {p2}, Lcom/android/systemui/appdock/view/AppDockWindow;->startExitAnimation()V

    .line 381
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$4;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    iput-boolean v1, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mCheckStateAfterShowing:Z

    return-void
.end method
