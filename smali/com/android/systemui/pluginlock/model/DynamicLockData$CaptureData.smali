.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureData"
.end annotation


# instance fields
.field mCaptureType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;->this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 802
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;->mCaptureType:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 814
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 800
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 819
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 820
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;

    .line 821
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;->mCaptureType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;->mCaptureType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;->mCaptureType:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;->mCaptureType:Ljava/lang/Integer;

    .line 822
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getType()Ljava/lang/Integer;
    .locals 0

    .line 805
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$CaptureData;->mCaptureType:Ljava/lang/Integer;

    return-object p0
.end method
