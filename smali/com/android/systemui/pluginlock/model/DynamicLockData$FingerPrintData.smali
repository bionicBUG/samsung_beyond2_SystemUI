.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerPrintData"
.end annotation


# instance fields
.field mEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field mFingerPrintHeight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field mFingerPrintImageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_size"
    .end annotation
.end field

.field mFingerPrintMarginBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "margin_bottom"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1083
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1039
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1088
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1089
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    .line 1091
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    .line 1094
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    .line 1097
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public setBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintMarginBottom:Ljava/lang/Integer;

    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1078
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintHeight:Ljava/lang/Integer;

    return-void
.end method

.method public setImageSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->mFingerPrintImageSize:Ljava/lang/Integer;

    return-void
.end method
