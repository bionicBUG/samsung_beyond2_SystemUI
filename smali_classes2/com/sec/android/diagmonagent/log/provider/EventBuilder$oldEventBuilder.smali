.class Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "oldEventBuilder"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mRelayClient:Ljava/lang/String;

.field private mRelayVer:Ljava/lang/String;

.field private mResultCode:Ljava/lang/String;

.field private mWifiOnly:Z


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mEventId:Ljava/lang/String;

    return-object p0
.end method

.method public getRelayClient()Ljava/lang/String;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayClient:Ljava/lang/String;

    return-object p0
.end method

.method public getRelayClientVer()Ljava/lang/String;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayVer:Ljava/lang/String;

    return-object p0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mResultCode:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiOnly()Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mWifiOnly:Z

    return p0
.end method
