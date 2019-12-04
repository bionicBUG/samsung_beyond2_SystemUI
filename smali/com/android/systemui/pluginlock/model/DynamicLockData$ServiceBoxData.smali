.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBoxData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;
    }
.end annotation


# instance fields
.field mClockInfo:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_info"
    .end annotation
.end field

.field mExpandable:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expandable"
    .end annotation
.end field

.field mServiceBoxBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_box_bottom"
    .end annotation
.end field

.field mServiceBoxTop:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_box_top"
    .end annotation
.end field

.field mVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    .line 166
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    .line 172
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxBottom:Ljava/lang/Integer;

    .line 174
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 223
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 228
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 229
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxBottom:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxBottom:Ljava/lang/Integer;

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    if-eqz v0, :cond_9

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    if-eqz p0, :cond_a

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public getClockInfo()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;-><init>(Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    return-object p0
.end method

.method public getExpandable()Ljava/lang/Integer;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingBottom()Ljava/lang/Integer;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxBottom:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPaddingTop()Ljava/lang/Integer;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    return-object p0
.end method

.method public setServiceBoxBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxBottom:Ljava/lang/Integer;

    return-void
.end method

.method public setServiceBoxTop(Ljava/lang/Integer;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    return-void
.end method

.method public setVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method
