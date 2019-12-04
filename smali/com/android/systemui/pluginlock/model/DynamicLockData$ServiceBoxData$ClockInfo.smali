.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClockInfo"
.end annotation


# instance fields
.field mClockScale:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_scale"
    .end annotation
.end field

.field mClockType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_type"
    .end annotation
.end field

.field mGravity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gravity"
    .end annotation
.end field

.field mPaddingEnd:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_end"
    .end annotation
.end field

.field mPaddingStart:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_start"
    .end annotation
.end field

.field mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->this$1:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    .line 253
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 324
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 329
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 330
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    .line 331
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    if-eqz p0, :cond_a

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    .line 340
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public getClockType()Ljava/lang/Integer;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    .line 281
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getGravity()Ljava/lang/Integer;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    .line 288
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getPaddingEnd()Ljava/lang/Integer;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    .line 274
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getPaddingStart()Ljava/lang/Integer;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    .line 267
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getRecoverType()Ljava/lang/Integer;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 295
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getScale()F
    .locals 0

    .line 260
    iget p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockScale:F

    return p0
.end method

.method public setClockType(I)V
    .locals 0

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    return-void
.end method

.method public setGravity(Ljava/lang/Integer;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingEnd(Ljava/lang/Integer;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStart(Ljava/lang/Integer;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockScale:F

    return-void
.end method
