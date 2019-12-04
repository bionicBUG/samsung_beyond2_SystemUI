.class Lcom/android/systemui/appdock/view/AppDockSearchBarView$2;
.super Ljava/lang/Object;
.source "AppDockSearchBarView.java"

# interfaces
.implements Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockSearchBarView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockSearchBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/view/AppDockSearchBarView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView$2;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "search transition end"

    .line 73
    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView$2;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    iget-object v0, v0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView$2;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    iget-object v0, v0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView$2;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchBarView;

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchBarView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestLayout()V

    :cond_0
    return-void
.end method
