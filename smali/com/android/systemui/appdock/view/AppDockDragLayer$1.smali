.class Lcom/android/systemui/appdock/view/AppDockDragLayer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppDockDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockDragLayer;->handleTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockDragLayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/view/AppDockDragLayer;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer$1;->this$0:Lcom/android/systemui/appdock/view/AppDockDragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer$1;->this$0:Lcom/android/systemui/appdock/view/AppDockDragLayer;

    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer;->removeDropTargetViewIfNeeded()V

    .line 115
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer$1;->this$0:Lcom/android/systemui/appdock/view/AppDockDragLayer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer;->access$002(Lcom/android/systemui/appdock/view/AppDockDragLayer;Z)Z

    return-void
.end method
