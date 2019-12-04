.class public Lcom/android/systemui/appdock/event/LaunchAppEvent;
.super Lcom/android/systemui/appdock/event/EventBus$Event;
.source "LaunchAppEvent.java"


# instance fields
.field public final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/systemui/appdock/event/EventBus$Event;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/systemui/appdock/event/LaunchAppEvent;->key:Ljava/lang/String;

    return-void
.end method
