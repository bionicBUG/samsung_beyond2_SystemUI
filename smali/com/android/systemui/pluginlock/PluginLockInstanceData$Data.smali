.class public Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;
.super Ljava/lang/Object;
.source "PluginLockInstanceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/PluginLockInstanceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
    }
.end annotation


# instance fields
.field private mNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field

.field private mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_data"
    .end annotation
.end field

.field private mTimeStamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_stamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 117
    instance-of v0, p1, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 119
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;-><init>(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    return-object p0
.end method

.method public getTimeStamp()Ljava/lang/Long;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStamp:Ljava/lang/Long;

    return-object p0
.end method

.method public setNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setRecoverData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mNumber:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStamp:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
