.class public abstract Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;
.super Ljava/lang/Object;
.source "StateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby2/state/StateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAppStateRequested()Ljava/lang/String;
.end method

.method public onCapsuleIdRequested()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
