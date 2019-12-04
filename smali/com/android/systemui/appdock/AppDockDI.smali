.class public Lcom/android/systemui/appdock/AppDockDI;
.super Ljava/lang/Object;
.source "AppDockDI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityStarter()Lcom/android/systemui/appdock/ActivityStarterInterface;
    .locals 1

    .line 7
    sget-boolean v0, Lcom/android/systemui/Rune;->APPDOCK_SUPPORT_WINNER:Z

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/android/systemui/appdock/WinnerActivityStarter;

    invoke-direct {v0}, Lcom/android/systemui/appdock/WinnerActivityStarter;-><init>()V

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Lcom/android/systemui/appdock/TabletActivityStarter;

    invoke-direct {v0}, Lcom/android/systemui/appdock/TabletActivityStarter;-><init>()V

    return-object v0
.end method
