.class Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;
.super Ljava/lang/Object;
.source "AppDockSearchResultView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/view/AppDockSearchResultView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSearchAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockSearchResultView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/appdock/view/AppDockSearchResultView;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/appdock/view/AppDockSearchResultView;Lcom/android/systemui/appdock/view/AppDockSearchResultView$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;-><init>(Lcom/android/systemui/appdock/view/AppDockSearchResultView;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$AppDockSearchResultView$UpdateSearchAction(Ljava/util/List;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-static {v0}, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->access$000(Lcom/android/systemui/appdock/view/AppDockSearchResultView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->bind(Ljava/util/List;)V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-static {v1}, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->access$000(Lcom/android/systemui/appdock/view/AppDockSearchResultView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UpdateSearchAction : run, word=%s"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-static {v0}, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->access$000(Lcom/android/systemui/appdock/view/AppDockSearchResultView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/appdock/view/AppDockSearchResultView;->access$100(Lcom/android/systemui/appdock/view/AppDockSearchResultView;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;->this$0:Lcom/android/systemui/appdock/view/AppDockSearchResultView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockSearchResultView$UpdateSearchAction$opHMEcnfBnWxXRPz3D9W14Cn1FQ;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockSearchResultView$UpdateSearchAction$opHMEcnfBnWxXRPz3D9W14Cn1FQ;-><init>(Lcom/android/systemui/appdock/view/AppDockSearchResultView$UpdateSearchAction;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
