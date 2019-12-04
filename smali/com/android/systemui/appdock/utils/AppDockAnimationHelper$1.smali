.class Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$1;
.super Landroid/transition/TransitionListenerAdapter;
.source "AppDockAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->requestLayoutChangeAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 40
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    const/4 p0, 0x0

    .line 41
    sput-boolean p0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    .line 42
    invoke-static {}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->access$000()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$Listener;

    .line 43
    invoke-interface {p1}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$Listener;->onTransitionEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method
