.class public Lcom/android/systemui/appdock/event/AppDockMinimizeEvent;
.super Lcom/android/systemui/appdock/event/EventBus$Event;
.source "AppDockMinimizeEvent.java"


# instance fields
.field public final minimize:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/systemui/appdock/event/EventBus$Event;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/appdock/event/AppDockMinimizeEvent;->minimize:Z

    return-void
.end method
