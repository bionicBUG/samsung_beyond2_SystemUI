.class public Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;
.super Lcom/android/systemui/appdock/event/EventBus$Event;
.source "AppDockEditStateChangeEvent.java"


# instance fields
.field public final action:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/android/systemui/appdock/event/EventBus$Event;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;->action:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    return-void
.end method
