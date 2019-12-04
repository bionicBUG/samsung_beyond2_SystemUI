.class public Lcom/android/systemui/appdock/event/AppDockExpandStateEvent;
.super Lcom/android/systemui/appdock/event/EventBus$Event;
.source "AppDockExpandStateEvent.java"


# instance fields
.field public final toExpand:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/systemui/appdock/event/EventBus$Event;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/appdock/event/AppDockExpandStateEvent;->toExpand:Z

    return-void
.end method
