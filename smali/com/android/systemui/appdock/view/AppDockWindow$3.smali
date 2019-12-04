.class Lcom/android/systemui/appdock/view/AppDockWindow$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppDockWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockWindow;->startExitAnimation()V
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

    .line 307
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockWindow$3;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$3;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->executeDismiss()V

    return-void
.end method
